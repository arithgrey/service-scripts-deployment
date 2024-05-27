alias docker_stop='docker stop $(docker ps -q)'
alias edit_nginx='sudo nano /etc/nginx/sites-available/proxy.conf'


#git

alias st='git status'
alias co='git checkout'
alias commit='git commit'
alias br='git branch'
alias df='git diff'
alias co_b='pull_main && git checkout -b '
alias pull_main='git checkout main &&  git pull origin main'
alias checkout_b='git checkout -b'

#access 
alias go_scripts='cd /home/arith/services_enid/scripts'
alias go_enid_store='cd /home/arith/services_enid/enid_service/enid'
alias go_frontend='cd /home/arith/services_enid/frontend'
alias go_reverse_proxy='cd /home/arith/services_enid/reverse_proxy__nginx'
alias go_faqs='cd /home/arith/services_enid/service_faqs'
alias go_oauth='cd /home/arith/services_enid/service-oauth/service-oauth'
alias go_ferences='cd /home/arith/services_enid/service_references/service_references'


#alias
alias add_alias='nano ~/.bashrc'
alias update_alias='source  ~/.bashrc'

#ENV
alias add_env='python3 -m venv env'
alias activate_env='source env/bin/activate'

#Docker

alias d_ps='docker ps'
alias d_up='docker-compose up'
alias d_stop='docker stop $(docker ps -q)'
alias d_images='docker images'
alias cln_images_docker='docker image prune -a'
alias cln_containers='docker container prune -f'
alias d_exec='docker exec -it'

#Kubernetes
alias st_minikube='minikube status'
alias pods='kubectl get pods'
alias pods_a='kubectl get pods -A'
alias k_clusters='minikube profile list'
alias k_nodes='kubectl get nodes'
alias cluster_inf='kubectl cluster-info'
alias ip_mini='minikube ip'
alias access_token_cluster='kubectl -n kube-system describe secret $(kubectl -n kube-system get secret | grep rancher | awk "{print $1}")'
alias k_pods='kubectl get pods'
alias k_services='kubectl get services'
alias k_deployments='kubectl get deployments'
alias add_namespace='kubectl create namespace '
alias all_in_namespace='kubectl get all -n '
alias k_namespaces='kubectl get namespaces'
alias k_apply_='kubectl apply -f .'
alias k_use_namespace='kubectl config set-context --current '  
alias k_describe_pod='kubectl describe pod '
alias k_delete_pod='kubectl delete pod '
alias k_delete_all_pods='kubectl delete pods --all'

#minikube

alias m_start='minikube start --force'
alias d_minikube='minikube delete'
alias cln_minikube='minikube delete --all'
alias delete_cluster_by_name='minikube delete -p '
 
#heml
alias l_helm='helm list'
alias delete_heml='helm delete'

#dev-django
alias rm_migrations='find . -path "*/migrations/*.py" ! -name "__init__.py" -type f -delete'
alias migrations='python manage.py makemigrations'
alias migrate='python manage.py migrate'

#nginx
alias restart_nginx='systemctl restart nginx && systemctl status nginx'

#alias
alias alias_grep='alias | grep '

#pip
alias pip_fr='pip freeze > requirements.txt'
alias pip_inst_requirements='pip install -r requirements.py '
alias deact='deactivate'
