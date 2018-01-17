class Hashtag < ApplicationRecord
  belongs_to :subject, optional: true
  has_many :hashtag_questions
  has_many :questions, through: :hashtag_questions

  validates :name, presence: true, uniqueness: true
end
