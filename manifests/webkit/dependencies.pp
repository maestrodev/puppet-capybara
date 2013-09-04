class capybara::webkit::dependencies {

  ensure_packages(['gcc','gcc-c++','make','qtwebkit','qtwebkit-devel','xorg-x11-server-Xvfb'])

  file { "/usr/bin/qmake":
    ensure => "/usr/bin/qmake-qt4",
    require => Package["qtwebkit-devel"],
  }
}
