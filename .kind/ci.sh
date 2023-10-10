
kubectl create namespace kubemod-system || true
kubectl label namespace kubemod-system admission.kubemod.io/ignore=true --overwrite || true
kubectl label namespace kube-system topolvm.io/webhook=ignore

helm repo add kubemod https://kubemod.github.io/kubemod-helm
helm repo add topolvm https://topolvm.github.io/topolvm

helm repo update

helm upgrade --install --create-namespace --namespace cert-manager \
    cert-manager cert-manager/cert-manager --version ${V_CERT_MANAGER:-1.13.1} \
    -f .kind/cert-manager-values.yaml --wait
helm upgrade --install --namespace kubemod-system \
    -f .kind/kubenmod-values.yaml \
    kubemod kubemod/kubemod --wait
helm upgrade --install --create-namespace --namespace topolvm \
    -f .kind/topolvm-values.yaml \
    topolvm topolvm/topolvm --wait
