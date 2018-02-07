exec { "apt-update":
    command => "/usr/bin/apt-get update"
}

package { ["unzip"]:
    ensure => installed,
    require => Exec["apt-update"]
}
