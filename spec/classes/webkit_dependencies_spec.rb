require 'spec_helper'

describe 'capybara::webkit::dependencies' do
  
  it { should contain_package('gcc') }
  it { should contain_package('gcc-c++') }
  it { should contain_package('make') }
  it { should contain_package('qtwebkit') }
  it { should contain_package('qtwebkit-devel') }
  it { should contain_package('xorg-x11-server-Xvfb') }
  
  it { should contain_file('/usr/bin/qmake').with( {
    :ensure => '/usr/bin/qmake-qt4'  
  })}
  
end
