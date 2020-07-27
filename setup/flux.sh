#! /usr/bin/env bash

set -euo pipefail

VERB=$1

fluxctl install \
--git-user=flux-user \
--git-email=flux@lab.home \
--git-url=https://github.com/techgnosis/k8s-petclinic.git \
--git-readonly \
--git-path="manifests" \
--namespace=petclinic | kubectl $VERB -f -
