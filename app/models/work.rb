class Work < ActiveRecord::Base
	has_attached_file :real, :styles => {
  	:thumb=> ["180x120", :jpg], :small  => ["300>x300", :jpg], :normal => ["600x600>", :jpg]
  }
end
