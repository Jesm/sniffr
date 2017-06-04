class Animal < ApplicationRecord
  enum size: [:mini, :small, :medium, :big, :giant]

  belongs_to :user

  validates :name, presence: true
  validates :size, presence: true
  validates :species, presence: true
  validates :birth_date, presence: true

  def age
    now = DateTime.now
    years = now.year - birth_date.year
    years = years - 1 if now.month < birth_date.month || (now.month == birth_date.month && now.day < birth_date.day)
    years
  end
end
