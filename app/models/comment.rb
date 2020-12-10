class Comment < ApplicationRecord
  has_many :users
  has_many :prototypes

  validates :text, presence: true
end
