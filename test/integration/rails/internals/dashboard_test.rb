require 'test_helper'

module Rails
  module Internals
    class DashboardTest < ActionDispatch::IntegrationTest
      test "basic process info" do
        get "/rails-internals"

        assert_select "h1", "Process Information"

        assert_select "dd.hostname", ProcessInfo.new.hostname
        assert_select "dd.pid", ProcessInfo.new.pid.to_s
        assert_select "dd.memory-usage", /[0-9\.]+ (MB|GB)/
      end
    end
  end
end
