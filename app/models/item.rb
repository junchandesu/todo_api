class Item < ActiveRecord::Base
	belongs_to :list

	def item_info
		"#{todo.upcase} : #{body}"
	end
end
