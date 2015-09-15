require 'test_helper'

describe "PickupsController" do
  # describe "GET :index" do
  #   # let(:courier) { Courier.create(name: "courier_guy", email: "courier@example.com") }

    # before do
    #   get :index
    #   # sign_in courier
    # end

    test "should get index" do

      assert_response :success, (get :index)
    end
  # end

end
