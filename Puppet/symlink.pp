class symlink {
    file { '/opt/finance':
      ensure => 'link',
      target => '/var/www/html',
    
    }

    file { '/opt/finance/story.txt':
      ensure => 'present',
    }

}

node 'stapp01.stratos.xfusioncorp.com', 'stapp02.stratos.xfusioncorp.com', 'stapp03.stratos.xfusioncorp.com' {
  include symlink 
}
