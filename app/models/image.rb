class Image < ActiveRecord::Base
	belongs_to :project

  has_attached_file :photo, :styles => {
  	:thumb=> ["180x120", :jpg], :small  => ["300>x300", :jpg], :normal => ["600x600>", :jpg]
  }

  def set_main
  	Image.where(:project_id => project_id).each do |image|
			image.main = false if image.id != self.id
			image.save
		end
		self.main = true
		self.save
  end

	def self.favorite(project_id)
		return Image.where(:project_id=>project_id).where(:main=>true).first
	end

end
