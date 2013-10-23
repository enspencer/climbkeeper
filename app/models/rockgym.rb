class Rockgym < ActiveRecord::Base
	has_many :problems
	has_many :reviews, through: :problems
end