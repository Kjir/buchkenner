class Book < ApplicationRecord
  belongs_to :user
  has_many :reviews

  validates :title, :author, presence: true
end
