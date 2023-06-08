class ntpconfig {
    package { 'ntp':
      ensure => 'present',
    }
    file {'/etc/ntp.conf':
      ensure => 'present',
      content => 'server 3.europe.pool.ntp.org iburst',
      mode => '0644',
    }
}

node 'stapp01.stratos.xfusioncorp.com', 'stapp02.stratos.xfusioncorp.com', 'stapp03.stratos.xfusioncorp.com' {
  include ntpconfig
}
