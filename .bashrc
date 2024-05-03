alias docker_stop='docker stop $(docker ps -q)'
alias edit_nginx='sudo nano /etc/nginx/sites-available/proxy.conf'


#git

alias st='git status'
alias co='git checkout'
alias commit='git commit'
alias br='git branch'
alias df='git diff'

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