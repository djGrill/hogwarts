class Student < ActiveRecord::Base
  belongs_to :house, inverse_of: :students
end
