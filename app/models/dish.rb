class Dish < ActiveRecord::Base
	belongs_to :restaurant

	has_attached_file :image, styles: { :medium => "300x300>" } #paperclip gem stuff
	validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/ #paperclip gem stuff

end
