class Video < ActiveRecord::Base
	belongs_to :user
	acts_as_votable
	# mount_uploader :video, VideoUploader

	#total score for each video - This will be displayed by video and used for positioning based on score
	def score
		self.get_upvotes.size - self.get_downvotes.size
	end


	def self.sorted_by_votes
	  Video.all.sort_by(&:score).reverse
	end

end
