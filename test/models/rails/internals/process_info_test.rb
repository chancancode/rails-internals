require 'test_helper'

module Rails
  module Internals
    class ProcessInfoTest < ActiveSupport::TestCase
      test "it reports a hostname" do
        assert_equal Socket.gethostname, ProcessInfo.new.hostname
      end

      test "it reports a PID" do
        assert_equal Process.pid, ProcessInfo.new.pid
      end

      test "it reports memory usage, formatted in human size" do
        assert_equal "1 GB", ProcessInfo.new(memory_usage: 1.gigabyte).memory_usage
        assert_equal "9.88 MB", ProcessInfo.new(memory_usage: 9.87654321.megabytes).memory_usage
      end
    end
  end
end
