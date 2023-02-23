class file_creator {
	file { '/opt/dba/media.txt':
	  ensure => 'present',
	}
}

node 'stapp01.stratos.xfusioncorp.com' {
  include file_creator
}

# puppet agent -tv to run the agent config
