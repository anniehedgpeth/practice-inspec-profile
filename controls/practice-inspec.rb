# encoding: utf-8
# copyright: 2015, The Authors
# license: All rights reserved

title 'Practice InSpec Profile'

#These are obviously dummy tests that will fail, but in the output you'll see how it tested the nodes.

control "Tests for both database server and webserver" do
  title "Base Tests"
  desc "The tests within this control do not call a role attribute, therefor they will be used for every type of node."
  describe user('anniehedgpeth') do
    it { should exist }
  end
end

control "Testing only webserver" do
  title "Tests for Webserver"
  desc "The following tests within this control will be used for webserver nodes."
  describe user('annie') do
    it { should exist }
  end
end

control "Testing only database server" do
  title "Tests for Database Server"
  desc "The following tests within this control will be used for database server nodes."
  describe user('hedgpeth') do
    it { should exist }
  end
end