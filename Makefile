# Define the default target
.DEFAULT_GOAL := help

.PHONY: local-up help

# Target to run docker_compose_runner.py
local-up:
	@python docker_compose_runner.py /home/arith/services_enid/

# Help target to display available targets and their descriptions
help:
	@echo "Available targets:"
	@echo "  local-up: Run docker_compose_runner.py with the specified directory"
	@echo "  help    : Show this help message"
