class House < ActiveRecord::Base
  attr_accessor :house_name
  has_many :students, inverse_of: :house
end
