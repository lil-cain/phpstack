# Encoding: utf-8
name 'phpstack'
maintainer 'Rackspace'
maintainer_email 'rackspace-cookbooks@rackspace.com'
license 'Apache 2.0'
# long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
description 'Provides a full php stack'
version '4.0.0'

depends 'apache2'
depends 'application', '>= 4.1.6'
depends 'apt'
depends 'build-essential'
depends 'chef-sugar'
depends 'database'
depends 'git'
depends 'mongodb'
depends 'nginx'
depends 'openssl'
depends 'php'
depends 'php-fpm'
depends 'platformstack'
depends 'stack_commons', '>= 0.0.43'
depends 'yum'
depends 'yum-ius'
depends 'yum-epel'
