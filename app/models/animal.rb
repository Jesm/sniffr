class Animal < ApplicationRecord
  enum size: [:mini, :small, :medium, :big, :giant]

  belongs_to :user

  validates :name, presence: true
  validates :size, presence: true
  validates :species, presence: true
  validates :birth_date, presence: true

end
