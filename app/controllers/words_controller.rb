class WordsController < ApplicationController
	def new
		@word = Word.new
	end

	def create 
		file_data = params[:word][:datafile]

		
		if file_data.respond_to?(:read)

			parse(file_data)
		else
			print("Input file empty")
		end
		

	end

	def parse(file_data)
		data = file_data.read().split("\n")

		input_words = Set.new
		compound_words = Set.new
		possible_words = Queue.new
		word_map = Hash.new
		
		(0..data.size() - 1).each do |main_index|
			curr_word = data[main_index].strip
			prefix = ""
			(0..main_index.size() - 1).each do |sub_index|
				new_prefix = curr_word[sub_index]
				unless new_prefix.nil?
					prefix << ""+new_prefix
					if input_words.include?(prefix) 
						possible_words.push(curr_word + "#"+ curr_word[prefix.size(),curr_word.size()])
						sub_words = Set.new
						sub_words.add(prefix)

						word_map[curr_word] = sub_words
					end
				end
			
			end

			input_words.add(curr_word)
			
		end
		

		until possible_words.empty?() do
			wordset = possible_words.pop().split("#")
			suffix = wordset[1]
			cword = wordset[0]

			if input_words.include?(suffix)
				compound_words.add(cword)
				word_map[cword].add(suffix)


			else
				prefix = ""
				unless suffix.nil?
					(0 .. suffix.size() - 1).each do |i|
						prefix = prefix + suffix[i]
						if input_words.include?(prefix)
							possible_words.push(cword + "#" + suffix[prefix.size(), suffix.size()])
							word_map[cword].add(prefix)
						end
					end
				end
			end
		end
		
		arr = compound_words.to_a.sort{|x,y| y.length - x.length}
		
		print(compound_words.size())
		
		print(arr[0])
		print(word_map[arr[0]].to_a)

	end


end
