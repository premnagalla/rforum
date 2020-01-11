class Question < ApplicationRecord
  include Commentable

  validates :title, presence: true, uniqueness: true
  validates :description, presence: true

  has_many :answers
end
