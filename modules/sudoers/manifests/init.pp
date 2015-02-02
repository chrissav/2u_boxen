class sudoers {
    file { '/etc/sudoers':
        ensure => present,
        owner  => root,
        group  => wheel,
    } ->
    file_line { 'append a line to sudoers file':
        path => '/etc/sudoers',
        line => '{$id} ALL = (ALL) NOPASSWD:ALL',
    }
}