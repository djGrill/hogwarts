class House < ActiveRecord::Base
  attr_accessible :house_name
  has_many :students, inverse_of: :house
end
