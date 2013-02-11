class capybara::webkit::dependencies($ensure = 'latest') {

  if ! defined(Package['gcc'])                  { package { 'gcc':                  ensure => $ensure } }
  if ! defined(Package['gcc-c++'])              { package { 'gcc-c++':              ensure => $ensure } }
  if ! defined(Package['make'])                 { package { 'make':                 ensure => $ensure } }
  if ! defined(Package['qtwebkit'])             { package { 'qtwebkit':             ensure => $ensure } }
  if ! defined(Package['qtwebkit-devel'])       { package { 'qtwebkit-devel':       ensure => $ensure } }
  if ! defined(Package['xorg-x11-server-Xvfb']) { package { 'xorg-x11-server-Xvfb': ensure => $ensure } }

  file { "/usr/bin/qmake":
    ensure => "/usr/bin/qmake-qt4",
    require => Package["qtwebkit-devel"],
  }
  

}