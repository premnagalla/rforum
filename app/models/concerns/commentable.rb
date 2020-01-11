module Commentable
  extend ActiveSupport::Concern

  included do
    validates :user_id, presence: true

    belongs_to :user
    has_many :comments, as: :commentable, dependent: :destroy

    # accepts_nested_attributes_for :comments

    # def comments_attributes=(attribute_set)
    #   super(attribute_set.merge(authenticatable: self))
    # end
  end
end
