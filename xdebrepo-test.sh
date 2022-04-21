#!/bin/bash

#*******************************************************************************
#*                                   XDebRepo                                  *
#*-----------------------------------------------------------------------------*
#*                                                                             *
#* Copyright (c) 2022 Ivan Danov                                               *
#*                                                                             *
#* MIT License                                                                 *
#*                                                                             *
#* Permission is hereby granted, free of charge, to any person obtaining a     *
#* copy of this software and associated documentation files (the "Software"),  *
#* to deal in the Software without restriction, including without limitation   *
#* the rights to use, copy, modify, merge, publish, distribute, sublicense,    *
#* and/or sell copies of the Software, and to permit persons to whom the       *
#* Software is furnished to do so, subject to the following conditions:        *
#*                                                                             *
#* The above copyright notice and this permission notice shall be included     *
#* in all copies or substantial portions of the Software.                      *
#*                                                                             *
#* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS     *
#* OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, *
#* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE *
#* AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER      *
#* LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING     *
#* FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER         *
#* DEALINGS IN THE SOFTWARE.                                                   *
#*******************************************************************************

SCRIPT_PATH=$(realpath "$(dirname "$0")")
export SCRIPT_PATH
export XDEBREPO_CONF_DIR_BASE=${SCRIPT_PATH}/testrepo

if [ -d "${XDEBREPO_CONF_DIR_BASE}" ]; then
	echo "ERROR: directory ${XDEBREPO_CONF_DIR_BASE} already exists"
	exit 1
fi

./xdebrepo init "${XDEBREPO_CONF_DIR_BASE}/repo" "${XDEBREPO_CONF_DIR_BASE}/etc/xdebrepo/"

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
