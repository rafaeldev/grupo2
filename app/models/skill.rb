class Skill < ApplicationRecord
  has_and_belongs_to_many :jobs

  enum kind: { generic: 0, frontend: 1, backend: 2 }
end
