class User < ApplicationRecord
  acts_as_token_authenticatable

  has_many :cep, dependent: :destroy

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :name, :user, presence: true
end
