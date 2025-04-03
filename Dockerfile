#
# Copyright (c) 2023 Intel Corporation
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

#build stage
ARG BASE=golang:1.23-alpine3.20
FROM ${BASE} AS builder

ARG ADD_BUILD_TAGS=""

WORKDIR /app

RUN sed -i 's|https://dl-cdn.alpinelinux.org|https://mirrors.aliyun.com|g' /etc/apk/repositories && \
    apk add --update --no-cache make git

ARG GO_PROXY="https://goproxy.cn,direct"
ENV GOPROXY=$GO_PROXY

COPY go.* ./
RUN go mod download

COPY . .
ARG MAKE="make -e ADD_BUILD_TAGS=$ADD_BUILD_TAGS build"
RUN $MAKE

#final stage
FROM alpine:3.20
LABEL license='SPDX-License-Identifier: Apache-2.0' \
  copyright='Copyright (c) 2023: Intel'
LABEL Name=app-service-configurable Version=${VERSION}

RUN sed -i 's|https://dl-cdn.alpinelinux.org|https://mirrors.aliyun.com|g' /etc/apk/repositories && \
    apk add --update --no-cache ca-certificates dumb-init tzdata && \
    apk --no-cache upgrade

COPY --from=builder /app/Attribution.txt /Attribution.txt
COPY --from=builder /app/LICENSE /LICENSE
COPY --from=builder /app/res/ /res/
COPY --from=builder /app/app-service-configurable /app-service-configurable

EXPOSE 48095

# Must always specify the profile using
# environment:
#   - EDGEX_PROFILE: <profile>
# or use
# command: "-profile=<profile>"
# If not you will recive error:
# SDK initialization failed: Could not load configuration file (./res/configuration.yaml)...

ENTRYPOINT ["/app-service-configurable"]
CMD ["-cp=keeper.http://core-keeper:59890", "--registry"]

