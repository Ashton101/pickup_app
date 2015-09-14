class Pickup < ActiveRecord::Base
  validates_presence_of :when, :who, :where, :size, :express
end
