class Doctor < ApplicationRecord
  has_many :appointments, through: :users
  has_many :users
end
