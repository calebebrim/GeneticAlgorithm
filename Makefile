
install: 
	python setup.py install --user
uninstall:
	python setup.py remove --user


install-from-test:
	python3 -m pip install --index-url https://test.pypi.org/simple/ --no-deps GeneticAlgorithm


pack-and-send-test: pack,send-test

prepare:
	python3 -m pip install --user --upgrade setuptools wheel
	python3 -m pip install --user --upgrade twine
pack:
	python3 setup.py sdist bdist_wheel
send-test:
	python3 -m twine upload --verbose --repository-url https://test.pypi.org/legacy/ dist/*



clean: 
	rm -rf __pycache__
	rm -rf GeneticAlgorithm.egg-info
	rm -rf src/__pycache__
	rm -rf src/examples/__pycache__
	rm -rf src/examples/.system
	rm -rf src/utils/__pycache__


