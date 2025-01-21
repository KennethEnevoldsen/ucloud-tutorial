
setup-git:
	@echo "setup git for ucloud"
	git config --global user.email "you@example.com"
	git config --global user.name "Kenneth (Ucloud)"
	git config pull.rebase false

install-uv:
	@echo "installs uv"
	# only works for linux and mac
	curl -LsSf https://astral.sh/uv/install.sh | sh

install-dependencies:
	@echo "installing dependencies"
	uv sync

run-project:
	@echo "Running the analysis"
	uv run hello.py

setup-on-ucloud:
	make install-uv
	make setup-git
	make run-project