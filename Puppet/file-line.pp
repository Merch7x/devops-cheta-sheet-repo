class string_replace {
  file_line { 'welcome_message':
    ensure => 'present',
    path => '/opt/data/ecommerce.txt',
    line => 'Welcome to xFusionCorp Industries!',
    match => '^Welcome to',

  }
}

node 'stapp01.stratos.xfusioncorp.com', 'stapp02.stratos.xfusioncorp.com', 'stapp03.stratos.xfusioncorp.com' {
  include string_replace
}
