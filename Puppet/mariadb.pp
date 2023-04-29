class mysql_database {
  package {'mariadb-server':
    ensure => 'present',

  }

  service {'mariadb':
    ensure => 'running',
    # enable => 'true',
  }

  mysql::db { 'kodekloud_db2':
    user     => 'kodekloud_pop',
    password => 'ksH85UJjhb',
    host     => 'localhost',
    grant    => ['ALL'],
    }

}

node 'stdb01.stratos.xfusioncorp.com' {
  include mysql_database
}
