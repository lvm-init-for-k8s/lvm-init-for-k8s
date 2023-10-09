
kubectl create namespace kubemod-system || true
kubectl label namespace kubemod-system admission.kubemod.io/ignore=true --overwrite || true
helm repo add kubemod https://kubemod.github.io/kubemod-helm
helm repo update kubemod
helm upgrade --install --namespace kubemod-system \
    -f .kind/kubenmod-values.yaml \
    kubemod kubemod/kubemod
