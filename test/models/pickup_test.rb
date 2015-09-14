require 'test_helper'

describe "PickupTest" do

  def setup
    @pickup = Pickup.new
    @pickup.valid?
  end

  describe "Validations" do
    it "validates when" do
      refute_empty @pickup.errors[:when]
    end

    it "validates who" do
      refute_empty @pickup.errors[:who]
    end

    it "validates where" do
      refute_empty @pickup.errors[:where]
    end

    it "validates size" do
      refute_empty @pickup.errors[:size]
    end

    it "validates express" do
      refute_empty @pickup.errors[:express]
    end
  end
end
