require 'test_helper'

class PickupTest < ActiveSupport::TestCase

  setup do
    @pickup = Pickup.new
    @pickup.valid?
  end

  test "validates when" do
    refute_nil @pickup.errors[:when]
  end
end
