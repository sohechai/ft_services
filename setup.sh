#start minikube
minikube start --vm-driver=hyperkit --kubernetes-version v1.16.0
eval $(minikube docker-env)
kubectl apply -f https://raw.githubusercontent.com/metallb/metallb/v0.9.5/manifests/namespace.yaml
kubectl apply -f https://raw.githubusercontent.com/metallb/metallb/v0.9.5/manifests/metallb.yaml
kubectl create secret generic -n metallb-system memberlist --from-literal=secretkey="$(openssl rand -base64 128)"

#build image and containers
docker build -t service_nginx srcs/nginx
docker build -t service_wordpress ./srcs/wordpress
docker build -t service_mysql srcs/mysql
docker build -t service_phpmyadmin srcs/phpmyadmin

kubectl apply -f metallb.yaml
kubectl apply -f srcs/nginx/nginx.yaml
kubectl apply -f srcs/wordpress/wordpress.yaml
kubectl apply -f srcs/mysql/mysql.yaml
kubectl apply -f srcs/phpmyadmin/phpmyadmin.yaml

#restart
# kubectl delete all --all
# docker rmi service_nginx
# docker rmi service_wordpress
# docker rmi service_mysql
# minikube delete