class Job < ApplicationRecord
  has_and_belongs_to_many :skills

  belongs_to :company
end
