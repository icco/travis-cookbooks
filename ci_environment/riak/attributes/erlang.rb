#
# Author:: Benjamin Black (<b@b3k.us>) and Sean Cribbs (<sean@basho.com>)
# Cookbook Name:: riak
#
# Copyright (c) 2011 Basho Technologies, Inc.
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
#

include_attribute "riak::core"

default.riak.erlang.node_name = "riak@127.0.0.1"
default.riak.erlang.cookie = "riak"
default.riak.erlang.kernel_polling = true
default.riak.erlang.async_threads = 64
default.riak.erlang.error_logger_warnings = :w
default.riak.erlang.smp = "enable"
default.riak.erlang.env_vars.ERL_MAX_PORTS = 4096
default.riak.erlang.env_vars.ERL_FULLSWEEP_AFTER = 0
default.riak.erlang.env_vars.ERL_CRASH_DUMP = "/var/log/riak/erl_crash.dump"
