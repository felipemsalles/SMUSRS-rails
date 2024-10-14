class Exam < ApplicationRecord
  belongs_to :user
  validates :pacient, :title, :address, :date, presence: true
end
