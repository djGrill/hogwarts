class House < ActiveRecord::Base
  has_many :students, inverse_of: :house
end
