
kubectl label namespace kube-system topolvm.io/webhook=ignore

helm repo add topolvm https://topolvm.github.io/topolvm
helm repo add kyverno https://kyverno.github.io/kyverno/

helm repo update

helm upgrade --install --create-namespace --namespace cert-manager \
    cert-manager cert-manager/cert-manager --version ${V_CERT_MANAGER:-1.13.1} \
    -f .kind/cert-manager-values.yaml --wait

helm upgrade --install --create-namespace --namespace kyverno \
    -f .kind/kyverno-values.yaml \
    kyverno kyverno/kyverno --wait
helm upgrade --install --namespace kyverno \
    -f .kind/kyverno-policies-values.yaml \
    policies kyverno/kyverno-policies --wait
helm upgrade --install --create-namespace --namespace topolvm \
    -f .kind/topolvm-values.yaml \
    topolvm topolvm/topolvm
