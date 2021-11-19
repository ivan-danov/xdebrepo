#!/bin/bash

export XDEBREPO_CONF_DIR_BASE=./testrepo

rm -rf ${XDEBREPO_CONF_DIR_BASE}

./xdebrepo init ${XDEBREPO_CONF_DIR_BASE}/repo ${XDEBREPO_CONF_DIR_BASE}/etc/xdebrepo/

./xdebrepo key gen testrepo-devel "TestRepo Devel Debian Repository" "office@testrepo.com"
export REPO_SRV_NAME="localhost"
export REPO_WEB_DIR="/repo/testrepo-devel"
export REPO_ORIGIN="TestRepo Devel deb repository"
export REPO_DESCRIPTION="TestRepo Devel deb repository"
./xdebrepo repo create testrepo-devel testrepo-devel "TestRepo Devel Debian Repository"

./xdebrepo key gen testrepo-test "TestRepo Test Debian Repository" "office@testrepo.com"
export REPO_SRV_NAME="localhost"
export REPO_WEB_DIR="/repo/testrepo-test"
export REPO_ORIGIN="TestRepo Test deb repository"
export REPO_DESCRIPTION="TestRepo Test deb repository"
./xdebrepo repo create testrepo-test testrepo-test "TestRepo Test Debian Repository"

./xdebrepo key gen testrepo-release "TestRepo Release Debian Repository" "office@testrepo.com"
export REPO_SRV_NAME="localhost"
export REPO_WEB_DIR="/repo/testrepo-release"
export REPO_ORIGIN="TestRepo Release deb repository"
export REPO_DESCRIPTION="TestRepo Release deb repository"
./xdebrepo repo create testrepo-release testrepo-release "TestRepo Release Debian Repository"
