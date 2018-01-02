#!/usr/bin/env bash

echo "[INFO] Building the application"

echo "[INFO] bumping version"
npm version "1.0.4-$BUILD_NUMBER"

echo "[INFO] Creating RPM package"

ln -s $WORKSPACE ~/rpmbuild --force
cd ~/rpmbuild
npm install --save express
npm install --save-dev speculate

npm run spec
/usr/bin/rpmbuild -bb ~/rpmbuild/SPECS/BlueGreenDemoApp.spec
ls -l ~/rpmbuild/RPMS/x86_64

echo "[INFO] Creating DEB package"
cd $WORKSPACE
node-deb -- index.js


