# TODO generate final testing report

test-unittest:
	@ echo '***************************'
	@ echo '*       Unittests         *'
	@ echo '***************************'
	python tests/test_pywsinfo.py

test-doctest:
	@ echo '***************************'
	@ echo '*       Doctests          *'
	@ echo '***************************'
	python -m doctest tests/test_pywsinfo.md

test-all:
	make test-unittest
	make test-doctest

todo:
	@ echo 
	@ echo "*** TODOs for pywsinfo.py ***"
	@ echo 
	@ awk '/# TODO/ { gsub(/^ /, ""); print }' pywsinfo.py
	@ echo 

graph:
	@ dot -T png docs/pywsinfo.gv -o docs/pywsinfo.png && eog docs/pywsinfo.png
	