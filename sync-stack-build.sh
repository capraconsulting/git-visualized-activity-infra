#!/bin/bash
set -eu -o pipefail

iam_role=arn:aws:iam::923402097046:role/CloudFormation
tags="project=git-visualized-activity"

export AWS_DEFAULT_REGION=eu-central-1
source ../sync-stack-lib.sh

verify_account 923402097046
sync_stack_prepare git-visualized-activity-build-cfn-s3

# Misc requirements for build.
deploy git-visualized-activity-build build.yml
