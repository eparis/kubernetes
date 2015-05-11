#!/bin/bash

# Copyright 2014 The Kubernetes Authors All rights reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

KUBE_ROOT="$(dirname "${BASH_SOURCE}")/../../"
GITDM_ROOT="${KUBE_ROOT}/contrib/gitdm/"

ignore='(Godeps|third_party|vendor|docs/theme|\.svg|api/swagger-spec|pkg/ui/datafile.go|www/.*/shared/assets/sampleData1.json|pkg/assets/bindata.go)'

if [[ -z "${GITDM}" ]]; then
	GITDM=gitdm
fi
git log -p -M --no-merges $1 -- "${KUBE_ROOT}" | ${GITDM} -l 50 -R "${ignore}" -b "${GITDM_ROOT}"
