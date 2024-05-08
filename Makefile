# Define the default target
.DEFAULT_GOAL := help

.PHONY: local-up help docker_stop update-proxy

# Target to run docker_compose_runner.py
local-up: 
	@pipenv run python docker_compose_runner.py /home/arith/services_enid/

# Help target to display available targets and their descriptions
help:
	@echo "Available targets:"
	@echo "  local-up: Run docker_compose_runner.py with the specified directory"
	@echo "  help    : Show this help message"
	@echo "  docker_stop: Stop all running containers"
	@echo "  update-proxy: Update NGINX proxy configuration"

# Target to update NGINX proxy configuration
update-local-proxy:
	@sudo cp /home/arith/services_enid/reverse_proxy__nginx/proxy.conf /etc/nginx/sites-available/proxy.conf
	@echo "NGINX proxy configuration updated."
	@sudo systemctl restart nginx
	@echo "NGINX restarted."
	@sudo systemctl status nginx
	@echo "NGINX restarted."
# Target to stop all running containers
docker_stop:
	@docker stop $$(docker ps -q)
	@echo "All running containers stopped."

status_enid_service:

	@echo "________ Status en enid-store__________"
	cd /home/arith/services_enid/enid_service/enid && git status

	@echo "________ Status en FRONTEND__________"
	cd /home/arith/services_enid/frontend && git status

	@echo "________ Status en OAUTH__________"

	cd /home/arith/services_enid/service-oauth/service-oauth && git status

	@echo "________ Status en scrips"

	cd  /home/arith/services_enid/scripts && git status