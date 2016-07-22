name             'mysqlserver'
maintainer       'Venkatesh Ainalli'
maintainer_email 'venkatesh@itapp.com'
license          'All rights reserved'
description      'Installs/Configures mysql'
long_description 'Installs/Configures mysql'
version          '0.1.0'

depends 'mysql','~> 6.0'
depends "mysql2_chef_gem", "~> 1.0.1"
depends "database", ">= 1.6.0"
depends 'selinux', '~> 0.7'
