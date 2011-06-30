#
# Cookbook Name:: travis_build_environment
# Recipe:: vagrant
# Copyright 2011, Travis CI development team
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in
# all copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
# THE SOFTWARE.


cookbook_file "/etc/profile.d/travis_environment.sh" do
  owner "vagrant"
  group "vagrant"
  mode 0755

  source "vagrant/travis_environment.sh"
end


cookbook_file "/home/vagrant/.gemrc" do
  owner "vagrant"
  group "vagrant"
  mode 0755

  source "vagrant/dot_gemrc.yml"
end


cookbook_file "/home/vagrant/.bashrc" do
  owner "vagrant"
  group "vagrant"
  mode 0755

  source "vagrant/dot_bashrc.sh"
end