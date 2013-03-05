#!/bin/bash

# Should always publish from master
git checkout master

# Push to PyPi
./setup.py sdist upload

# Push commits and tag to remote
git push --tags
git push 