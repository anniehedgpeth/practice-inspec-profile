# encoding: utf-8
# copyright: 2015, The Authors
# license: All rights reserved

title 'Practice InSpec Profile'

#These are obviously dummy tests that will fail, but in the output you'll see how it tested the nodes.

control "Tests for both client and server" do
  title "Base Tests"
  desc "The tests within this control do not call a role attribute, therefor they will be used for every type of node."
  describe user('base') do
    it { should exist }
  end
end

control "Testing only client" do
  title "Tests for client"
  desc "The following tests within this control will be used for client nodes."
  describe user('client') do
    it { should exist }
  end
end

control "Testing only server" do
  title "Tests for Server"
  desc "The following tests within this control will be used for server nodes."
  describe user('server') do
    it { should exist }
  end
end