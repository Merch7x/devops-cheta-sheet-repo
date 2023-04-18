class multi_package_node {
    $packages = ['net-tools', 'unzip']
    package {$packages: ensure => 'present'}
}

node 'stapp01.stratos.xfusioncorp.com', 'stapp02.stratos.xfusioncorp.com', 'stapp03.stratos.xfusioncorp.com' {
  include multi_package_node
}
