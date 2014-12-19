module TraineeshipsHelper

	def tn_category(num)
		
		if num < 4
			"low"
		elsif num <7 
			"middle"
		else 
			"high"
		end
	end
end
