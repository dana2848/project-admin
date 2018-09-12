class Student < ApplicationRecord
  has_and_belongs_to_many :cohorts
  validates :first_name, length: { minimum: 2 }
   validates :last_name, length: { minimum: 2 }

   def full_name
     self.first_name + " " + self.last_name
   end


end
