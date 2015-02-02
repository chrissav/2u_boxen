class projects::boxen-web {
  boxen::project { 'boxen-web' :
      nginx      => true,
      postgresql => true,
      ruby       => true,
      source     => 'boxen/boxen-web'
  }
}