class Comment < ApplicationRecord
  include Commentable

  belongs_to :commentable, polymorphic: true

  validates :comment, presence: true
  validates :commentable_type, presence: true,
    inclusion: {
      in: %w(Question Answer Comment),
      message: "%{value} is not valid"
    }
end
