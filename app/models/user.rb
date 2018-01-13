class User < ApplicationRecord
  belongs_to :account

  validates :username, presence: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :gender, presence: true
  validates :height, presence: true
  validates :weight, presence: true
end
