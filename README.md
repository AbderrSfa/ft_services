# ft_services

## Description
ft_services is a system administration project meant to introduce the workings of Kubernetes. The goal is to create a K8s cluster to run an infrastructure of seven different services. Before running the script that sets everything up, you need to have a hypervisor (VirtualBox, HyperKit...), kubectl, and minikube installed on your machine.

## Usage
To deploy and expose the whole infrastrucre, simply run:

`sh setup`

Or alternatively:

`./setup`

PS: If you use the second method, you might need to change the permissions of the file. Use `chmod` to do that.

Running the script will deploy a MySQL/WordPress/phpMyAdmin stack, all behind an Nginx instance to redirect traffic to the appropriate service. Additionally, an FTPS server is setup. All services are monitored by telegraf and a Grafana/InfluxDB stack.
 
 All services are accessible on the IP 192.168.99.149 at different ports:
``` 
Nginx on ports 80 (HTTP) and 443 (HTTPS)

Wordpress on port 5050

PHPMyAdmin on port 5000

Grafana on port 3000

FTPS on ports 20, 21. And 30000 (passive mode)
 ```
 ### Infrastructure 
 ### Grafana dashboards:
 ### Kubernetes dashboard:
