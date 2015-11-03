class Video < ActiveRecord::Base
	belongs_to :user
	# mount_uploader :video, VideoUploader
	# def set_success(format, opts)
 #    self.success = true
 #  end
end
