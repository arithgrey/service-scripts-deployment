# Define the default target
.DEFAULT_GOAL := help

.PHONY: help docker_stop update-proxy

# Help target to display available targets and their descriptions
help:
	@echo "Available targets:"
	@echo "  local-up: Run docker_compose_runner.py with the specified directory"
	@echo "  help    : Show this help message"
	@echo "  docker_stop: Stop all running containers"
	@echo "  update-proxy: Update NGINX proxy configuration"

# Target to update NGINX proxy configuration
update-local-proxy:
	@sudo cp /home/arithgrey/enid_service/services/reverse_proxy_nginx/proxy.conf /etc/nginx/sites-available/proxy.conf
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

	cd /home/arithgrey/enid_service/services/enid-store/enid && git status

	@echo "______________Status faqs _______________________"
	cd /home/arithgrey/enid_service/services/service-faqs/ && git status

	@echo "______________Status store (frontend) _______________________"
	cd /home/arithgrey/enid_service/services/frontend-store/ && git status

	@echo "______________Status (Leads) _______________________"
	cd /home/arithgrey/enid_service/services/service_leads && git status

	@echo "______________Status (oauth) _______________________"
	cd /home/arithgrey/enid_service/services/service-oauth && git status

	@echo "______________Status (service references) _______________________"
	cd /home/arithgrey/enid_service/services/service-references && git status

	@echo "______________Status (Reverse proxy ) _______________________"
	cd /home/arithgrey/enid_service/services/reverse_proxy_nginx && git status

	@echo "______________Status (scripts) _______________________"
	cd /home/arithgrey/enid_service/services/service-scripts-deployment && git status

	@echo "______________Status (stock) _______________________"
	cd /home/arithgrey/enid_service/services/service_stock && git status
