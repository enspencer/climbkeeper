class Problem < ActiveRecord::Base
	has_many :reviews
	belongs_to :rockgym
end