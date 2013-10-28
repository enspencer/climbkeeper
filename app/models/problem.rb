class Problem < ActiveRecord::Base
	has_many :reviews
	belongs_to :rockgym
	belongs_to :climber

	has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"

	# Cut and paste to start a function to gather word frequency for in all problem reviews.

	# def review_words
	# 	words = []
	# 	obama_tweets.each do |item|
	# 		words << item[:tweet].split(" ")
	# 	end

	# 	#binding.pry

	# 	words.flatten!

	# 	binding.pry

	# 	freq = {}

	# 	words.each do |word|
	# 		freq[word.to_sym] ||= 0 # =>
	# 		# The above is the same thing as the following two lines of code. 
	# 		# if freq[word.to_sym]
	# 		# 	freq[word.to_sym] = 0
	# 		freq[word.to_sym] += 1
	# 	end

	# 	binding.pry

	# 	freq.sort {|_key, value| value}
	# end

end