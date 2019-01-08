class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  #dependent: :destroy lo usamos para que cuando
  #eliminemos un restaurant se elimine su review

   validates :name, uniqueness: true, presence: true
   validates :address, presence: true
   validates :stars, inclusion: { in: [1, 2, 3, 4, 5] }
end
