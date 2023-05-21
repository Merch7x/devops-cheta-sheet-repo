class file_modifier {
    file {'/opt/dba/beta.txt':
      ensure => 'present',
      content => 'Welcome to xFusionCorp Industries!',
      mode => '0644',
    }
}

node 'stapp01.stratos.xfusioncorp.com', 'stapp02.stratos.xfusioncorp.com', 'stapp03.stratos.xfusioncorp.com' {
  include file_modifier
}
