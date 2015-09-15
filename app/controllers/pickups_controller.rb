class PickupsController < ApplicationController
  before_action :authenticate_courier!

  def index
    @pickups = current_courier.pickups
  end
end
