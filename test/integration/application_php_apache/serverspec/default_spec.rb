# Encoding: utf-8

require_relative 'spec_helper'

# apache
if os[:family] == 'redhat'
  describe service('httpd') do
    it { should be_enabled }
  end
  apache2ctl = '/usr/sbin/apachectl'
else
  describe service('apache2') do
    it { should be_enabled }
  end
  apache2ctl = '/usr/sbin/apachectl'
end
describe port(80) do
  it { should be_listening }
end
describe command("#{apache2ctl} -M") do
  its(:stdout) { should match(/^ ssl_module/) }
end
