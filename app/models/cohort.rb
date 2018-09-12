class Cohort < ApplicationRecord
  has_and_belongs_to_many :students
  belongs_to :course, optional: true
  belongs_to :instructor, optional: true
end
