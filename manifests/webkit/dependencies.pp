class capybara::webkit::dependencies {

  if ! defined(Package['gcc'])                  { package { 'gcc':                  ensure => installed } }
  if ! defined(Package['gcc-c++'])              { package { 'gcc-c++':              ensure => installed } }
  if ! defined(Package['make'])                 { package { 'make':                 ensure => installed } }
  if ! defined(Package['qtwebkit'])             { package { 'qtwebkit':             ensure => installed } }
  if ! defined(Package['qtwebkit-devel'])       { package { 'qtwebkit-devel':       ensure => installed } }
  if ! defined(Package['xorg-x11-server-Xvfb']) { package { 'xorg-x11-server-Xvfb': ensure => installed } }

  file { "/usr/bin/qmake":
    ensure => "/usr/bin/qmake-qt4",
    require => Package["qtwebkit-devel"],
  }
  

}
