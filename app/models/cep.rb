class Cep < ApplicationRecord
  belongs_to :user

  validates :address, :street, :neighborhood, :city, :uf, :complement
end
