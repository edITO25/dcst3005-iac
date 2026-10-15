#Reglene står i .tflint.hcl og .checkov.yaml

TERRAFORM_MAPPER="stacks/nettverk backend-bootstrap"


cd "$(dirname "${BASH_SOURCE[0]}")/.." || exit 1
 
feilet=""
 
kontroll() {
  echo
  echo "=== $1 ==="
}
 

# --- 1. Formatering ----------------------------------------------------------
kontroll "1/4 terraform fmt"
if ! terraform fmt -check -recursive; then
  echo "→ Rett med: terraform fmt -recursive"
  feilet="$feilet fmt"
fi
 
# --- 2. Validering -----------------------------------------------------------
kontroll "2/4 terraform validate"
for mappe in $TERRAFORM_MAPPER; do
  echo "--- $mappe"
  # -backend=false: hent providerne, men ikke koble til state i Azure.
  if ! (cd "$mappe" &&
        terraform init -backend=false -input=false > /dev/null &&
        terraform validate -no-color); then
    feilet="$feilet validate($mappe)"
  fi
done
 
# --- 3. TFLint ---------------------------------------------------------------
kontroll "3/4 TFLint"
tflint --init > /dev/null
# --config med full sti: ellers brukes ikke regelsettet i undermappene.
if ! tflint --recursive --config "$(pwd)/.tflint.hcl"; then
  feilet="$feilet tflint"
fi
 
# --- 4. Checkov --------------------------------------------------------------
kontroll "4/4 Checkov"
# Leser .checkov.yaml i terraform-projects/ automatisk.
if ! checkov -d .; then
  feilet="$feilet checkov"
fi
 
# --- Oppsummering ------------------------------------------------------------
echo
if [ -z "$feilet" ]; then
  echo "✅ Alle kontrollene er grønne."
  exit 0
else
  echo "❌ Feilet:$feilet"
  exit 1
fi