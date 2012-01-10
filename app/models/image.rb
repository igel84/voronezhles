class Image < ActiveRecord::Base
	belongs_to :project
  has_attached_file :photo, :styles => {
  	:thumb=> ["100x100#", :jpg], :small  => ["250x250>", :jpg], :normal => ["600x600>", :jpg]
  }
end
