class Question < ApplicationRecord
	belongs_to :que_type
	belongs_to :subject
	has_many :hashtags, through: :hashtag_question

	validates :statement, presence: true
	validates :answer, presence: true

	def self.search_by_hashtag(hashtag_name)
		h = Hashtag.find_by(name: hashtag_name)
		results = []

		if h.present?
			HashtagQuestion.where(hashtag_id: h.id).each do |hq|
				results << hq.question
			end
		end

		return results
	end
end




