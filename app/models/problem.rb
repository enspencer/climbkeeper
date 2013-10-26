aclass Problem < ActiveRecord::Base
	has_many :reviews
	belongs_to :rockgym
	belongs_to :climber

	has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
end