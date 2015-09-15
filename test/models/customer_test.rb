require 'test_helper'

describe "Customer" do

  describe "Validations" do
    before do
      @customer = Customer.new
      @customer.valid?
    end

    it "has a name" do
      refute_empty @customer.errors[:name]
    end

  end

end
