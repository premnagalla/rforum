class User < ApplicationRecord
  validates :first_name, presence: true
  validates :email, presence: true, uniqueness: true

  has_many :questions
  has_many :answers
  # has_many :comments

  def full_name
    first_name + ' ' + last_name
  end
end
