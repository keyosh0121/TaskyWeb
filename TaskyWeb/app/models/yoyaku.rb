class Yoyaku < ApplicationRecord
  validates :name, presence: true
  validates :email, presence: true
  validates :alignment, presence: true
  validates :amount, presence: true

end
