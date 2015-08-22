class User < ActiveRecord::Base
	has_many :lists

	def full_name
     [first, last].join(" ")
	 end
end
