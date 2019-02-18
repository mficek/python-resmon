.PHONY: install requirements run_luigi_server symlinks

help:
	@echo "--------------------------"
	@echo " venv: 		installs virtual env"
	@echo " clean_venv: removes virtual env"
	@echo " requirements: updates requirements from requirements.txt"
	@echo " symlinks: 	create symlinks for shared data"
	@echo "---------------------------"

install: venv requirements symlinks

venv: venv/bin/activate

venv/bin/activate:
	test -d venv || conda create --prefix ./venv python=3.6 -y

requirements:
	venv/bin/pip install -Ur requirements.txt

clean_venv:
	rm -fr venv


