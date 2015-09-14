require 'test_helper'

describe "Courier" do

  describe "Validations"  do
    before do
      Courier.create(name: "guy")
      @courier = Courier.new(name: name)
      @courier.valid?
    end

    describe "presence" do
      let(:name) { nil }
      it { assert_includes @courier.errors[:name], "can't be blank" }
    end

    describe "uniqueness" do
      let(:name) { "guy" }
      it { assert_includes @courier.errors[:name], "has already been taken" }
    end
  end
end
