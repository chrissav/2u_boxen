class projects::techops {
  include python
  include graphviz

  homebrew::tap { 'caskroom/versions': }

  $brewcasks = ['firefox', 'slack', 'google-chrome', 'iterm2',
                'dropbox', 'jing', 'skype', 'mysqlworkbench',]
  package { $brewcasks:
    provider        => 'brewcask',
    install_options => ['--appdir=/Applications'],
  }

  $caskroomversions = ['sublime-text3',]
  package { $caskroomversions:
    provider        => 'brewcask',
    install_options => ['--appdir=/Applications'],
  }

  $homebrews = ['mysql', 'tmux']
  package { $homebrews:
      ensure => present,
  }

  class { 'vagrant': }

  # perl::version { '5.16.2': }

  # $version = '5.16.2'
  # perl::cpanm { "Curses for ${version}":
  #   module => 'Curses',
  #   perl   => $version
  # }

  # perl::cpanm { "DBI for ${version}":
  #   module => 'DBI',
  #   perl   => $version
  # }

  # boxen::project { 'trollin':
  #   dotenv        => true,
  #   elasticsearch => true,
  #   mysql         => true,
  #   nginx         => true,
  #   redis         => true,
  #   ruby          => '1.9.3',
  #   source        => 'boxen/trollin'
  #}
}
