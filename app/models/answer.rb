class Answer < ApplicationRecord
  include Commentable

  validates :content, presence: true
  validates :question_id, presence: true

  belongs_to :question
end
