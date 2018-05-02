class WordPlay
	def self.switch_pronouns(text)
		text.gsub(/\b(I am|You are|I|You
			Me|Your|My)\b/i) do |pronoun|
			case pronoun.downcase
			when "i"
				"you"
			when "you"
				"me"
			when "me"
				"you"
			when "i am"
				"you are"
			when "you are"
				"i am"
			when "your"
				"my"
			when "my"
				"your"
			end
		end.sub(/^me\b/i, 'i')

end

class String 
	def sentences 
		gsub(/\n|\r/, ' ').split(/\.\s*/)
	end
end
class String
	def words
		scan(/\w[\w\'\-']*/)
	end
end
end


x = WordPlay.switch_pronouns("I am a string and here me roar")

puts x 

