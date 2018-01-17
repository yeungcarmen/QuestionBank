class Subject < ApplicationRecord
	has_many :hashtags
	has_many :questions
	has_many :subject_teachers
	has_many :teachers, through: :subject_teachers
end
