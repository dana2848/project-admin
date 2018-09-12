class Instructor < ApplicationRecord
  has_many :cohorts

  def full_name
    self.first_name + " " + self.last_name
  end

end
