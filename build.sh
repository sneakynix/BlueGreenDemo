#!/usr/bin/env bash

echo "Building the application"
echo $WORKSPACE

ln -s $WORKSPACE ~/rpmbuild -force
cd ~/rpmbuild
npm install --save-dev speculate
npm run spec
/usr/bin/rpmbuild -bb ~/rpmbuild/SPECS/BlueGreenDemoApp.spec

ls ~/rpmbuild/RPMS/x86_64
