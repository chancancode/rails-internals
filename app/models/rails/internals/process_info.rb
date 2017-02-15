require 'socket'
require 'get_process_mem'

module Rails
  module Internals
    class ProcessInfo
      def initialize(memory_usage: GetProcessMem.new.bytes)
        @memory_usage = memory_usage
      end

      def hostname
        Socket.gethostname
      end

      def pid
        Process.pid
      end

      def memory_usage
        @memory_usage.to_s(:human_size)
      end
    end
  end
end
