PORT=9089
ADMIN_PORT=8019

.PHONY: build symlinks run

symlinks:
	cd lib && python _symlinks.py

build: symlinks

run:
	python /Users/lindseyjh/google-cloud-sdk/bin/dev_appserver.py --host=0.0.0.0 --port=$(PORT) --admin_port=$(ADMIN_PORT) .

