class User < ApplicationRecord
  validates :name, presence: true, uniqueness: true, length: { minimum: 5 }

  has_many :posts, dependent: :destroy
  has_many :comments, dependent: :destroy
end
