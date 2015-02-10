class projects::techops {
  include python

  $brewcasks = ['firefox', 'slack', 'google-chrome', 'iterm2',
                'dropbox', 'jing', 'skype',]
  package { $brewcasks: 
    provider => 'brewcask',
    install_options => ['--appdir=/Applications'],
  }

  $caskroomversions = ['sublime-text3']
  homebrew::tap { 'caskroom/versions': }
  package { $caskroomversions: 
    provider => 'brewcask',
    install_options => ['--appdir=/Applications'],
  }

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