class Employee < ApplicationRecord
    validates :name, presence: true
    validates :salary, presence: true, numericality: { greater_than_or_equal_to: 0 }
    validates :position, presence: true
  end