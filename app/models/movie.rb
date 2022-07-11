class Movie < ApplicationRecord
  has_many :bookmarks, dependent: :destroy
  validates :title, :overview, uniqueness: true
  validates :title, :overview, presence: true
end
