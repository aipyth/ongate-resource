echo "starting minkube"
$(which minikube) start

echo "deploy kube localy"
echo "\n\n"
kubectl apply -f "$(dirname $(realpath ${BASH_SOURCE:-$0}))/../k8s/"
echo "\n\n"
kubectl get all