#clean up old dists
rm dist/*

# python setup.py sdist

python2 setup.py bdist_wheel
python3 setup.py bdist_wheel
python3 setup.py bdist_wheel sdist

# python setup.py register -r pypitest
# twine upload -r pypitest dist/gputools*
#python setup.py register
# twine upload dist/*whl
twine upload dist/*
