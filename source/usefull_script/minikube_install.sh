echo "---INSTALL KUBECTL---"
sudo curl -LO https://storage.googleapis.com/kubernetes-release/release/`curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt`/bin/linux/amd64/kubectl
sudo mv kubectl /usr/local/bin/kubectl && sudo chmod +x /usr/local/bin/kubectl
kubectl version --client
echo "---KUBECTL INSTALLATION FINISHED---"
echo "---INSTALL MINIKUBE---"
sudo curl -Lo /usr/local/bin/minikube https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64 \
  && chmod +x /usr/local/bin/minikube
  echo "Minikube installed in $(which minikube)"
$(which minikube) --version
echo "Exec minikube start to download base image minikube status to view current status"