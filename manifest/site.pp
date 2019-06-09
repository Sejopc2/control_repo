node default {
  file {'/root/README':
    ensure  => file,
    content => 'This is a README',
    owner   => 'root',
  }
}

node 'master.puppet.vm' { # this is the hostname of the server
  include role::master_server
  file {'/root/README2':
    ensure => file,
    content => "Welcome to ${fqdn}\n",
  }
}

node /^web/ {
  include role::app_server
}

node /^db/ {
  include role::db_server
}


