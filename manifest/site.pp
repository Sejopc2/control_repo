node default {
  file {'/root/README':
    ensure  => file,
    content => 'This is a README',
    owner   => 'root',
  }
}

node 'master.puppet.vm' { # this is the hostname of the server
  include role::master_server
}
