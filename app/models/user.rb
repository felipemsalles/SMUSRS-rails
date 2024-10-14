class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :appointments
  has_many :exams

  enum gender: {
    "masculino": 1,
    "feminino": 2
  }

  validates :name, :age, :gender, presence: true
end
