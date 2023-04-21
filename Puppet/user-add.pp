class useradd {
  user { 'creating new user':
    name => 'javed',
    ensure => 'present',
    uid => '1741'
  }
}

node 'stapp01.stratos.xfusioncorp.com', 'stapp02.stratos.xfusioncorp.com', 'stapp03.stratos.xfusioncorp.com' {
  include useradd
}
