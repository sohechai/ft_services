# delete all
kubectl delete all --all
docker rmi service_nginx
docker rmi service_wordpress
docker rmi service_mysql
docker rmi service_phpmyadmin
docker rmi service_ftps
docker rmi service_grafana
docker rmi service_influxdb
minikube delete