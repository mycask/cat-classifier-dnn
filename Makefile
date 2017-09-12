VENV = cat-classifier

dist:
	rm -rf plots/*
	. ./venv && ./plotmodel.py
	./readme.py

venv: .FORCE
	python3 -m venv ~/.venv/$(VENV)
	echo . ~/.venv/$(VENV)/bin/activate > venv
	. ./venv && pip install numpy h5py matplotlib

rmvenv:
	rm -f venv
	rm -rf ~/.venv/$(VENV)

clean:
	rm -rf __pycache__

.FORCE:
