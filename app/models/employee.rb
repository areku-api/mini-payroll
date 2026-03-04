class Employee < ApplicationRecord
  validates :prefix, presence: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :salary, presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates :position, presence: true

  def full_name
    [prefix, first_name, last_name].compact_blank.join(" ")
  end
end