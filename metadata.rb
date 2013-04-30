name             'instrumentio'
maintainer       'Entio LLC'
maintainer_email 'alex@ent.io'
license          'Apache 2.0'
description      'Installs/Configures instrumentio'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.0.1'

# Base
depends 'apt',              '~> 1.9.2'
depends 'ufw',              '~> 0.6.1' # github: 'opscode-cookbooks/ufw'

# Chef Client
depends 'chef-client',      '~> 2.2.2'

# Sysadmins
depends 'users',            '~> 1.4.0'
depends 'sudo',             '~> 2.0.4'

# Openssh
depends 'openssh',          '~> 1.1.4'
depends 'ssh_known_hosts',  '~> 0.7.4'

# Newrelic
depends 'newrelic',         '~> 0.4.7'

# ESX
depends 'vmware',     '~> 0.0.4' # github: 'instrumentio/chef-vmware'
