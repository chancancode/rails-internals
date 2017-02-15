module Rails
  module Internals
    class Engine < ::Rails::Engine
      isolate_namespace Rails::Internals
    end
  end
end
