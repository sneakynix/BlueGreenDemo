#!/usr/bin/env bash

set -x

echo "Deploying to AWS CodeDeploy"

aws deploy create-deployment \
  --region us-east-1
  --application-name BGappPoC \
  --deployment-config-name CodeDeployDefault.OneAtATime \
  --deployment-group-name example-group \
  --description "My GitHub BlueGreen deployment demo" \
  --github-location repository=gallantra/BlueGreenDemo,commitId=$(git rev-parse HEAD) \
