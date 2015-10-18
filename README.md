# ansible-rvm
This role will install the curl and gpg2 packages as well as ruby version
manager and whatever versions of ruby specified in the file
`roles/ruby/defaults/main.yml`. It will provision both `Redhat` and `Debian`
based distros of linux, but has been tested to work for centos-6, centos-7 and
ubuntu-14.04 versions.
