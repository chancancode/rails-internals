require 'test_helper'

class Rails::Internals::Test < ActiveSupport::TestCase
  test "truth" do
    assert_kind_of Module, Rails::Internals
  end
end
