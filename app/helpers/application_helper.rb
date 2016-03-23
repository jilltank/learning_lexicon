module ApplicationHelper

	def find_results
		search = params[:search.downcase].split(" ")
		hash = {}
		search.each_with_index do |s, i|
			array = []
			Lexicon.all.each do |entry|
				x = entry.code.to_s.downcase
				y = entry.description.to_s.downcase
				z = x + y
				if z == "" 
					array = array
				elsif z.include?(s)
					array.push(entry)
				end
			hash[i] = array
			end
		end	
		results = []
		total = search.length
		Lexicon.all.each do |entry|
			count = 0
			hash.each do |k, v|
				if v.include?(entry)
					count += 1
				end
			end
			if count/total.to_f >= 0.7
				results.push(entry)
			end
		end
		results
	end

end
