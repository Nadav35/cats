class Cat < ApplicationRecord
  COLORS = %w(white black red grey)
  validates :birth_date, :color, :name, :sex, :description, presence: true
  validates :color, inclusion: {in: COLORS}
  validates :sex, inclusion: { in: ['M', 'F']}
  
end