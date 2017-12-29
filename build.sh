#!/usr/bin/env bash

echo "Building the application"

ln -s {$env.WORKSPACE} ~/rpmbuild
cd ~/rpmbuild
npm install --save-dev speculate

npm run spec

rpmbuild -bb ~/rpmbuild/SPECS/BlueGreenDemoApp.spec

ls ~/rpmbuild/RPMS/x86_64
