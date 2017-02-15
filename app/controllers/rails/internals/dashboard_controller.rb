require_dependency "rails/internals/application_controller"

module Rails
  module Internals
    class DashboardController < ApplicationController
      def index
        @process = ProcessInfo.new
      end
    end
  end
end
