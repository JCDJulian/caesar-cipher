#Julian De Ocampo
#In cryptography, a Caesar cipher, also known as Caesar's cipher, the shift cipher, Caesar's code or Caesar shift, is one of the simplest and most widely known encryption techniques. It is a type of substitution cipher in which each letter in the plaintext is replaced by a letter some fixed number of positions down the alphabet. For example, with a left shift of 3, D would be replaced by A, E would become B, and so on. The method is named after Julius Caesar, who used it in his private correspondence.

print "Enter 'e' to encrypt or 'd' to decode."
command = gets.chomp

case command
when "e" || "E"

print "Please enter a message."
text = gets.chomp
print "Please enter how many spaces to shift left."
shift = gets.chomp.to_i

	text.each_char do |char| #For each character
		case char.ord
		when 97 .. 122 #Lower Case
			char = char.ord - shift #subtract the shift value
			#if it wrapped around the alphabet
			if (char < 97)
				char = 97 - char #find how many letters it wrapped by
				char = 123 - char #and go to the apropriate place
			end
			char = char.chr #either way, revert to letter
			print char #print
		when 65 .. 90 #upper case
			char = char.ord - shift
			if (char < 65)
				char = 65 - char
				char = 91 - char
			end
			char = char.chr
			print char
		else
			print char #If it is a non-letter, just print it
		end
	end

print "\n"

when "d" || "D"
	print "Please enter a message to decode."
	text = gets.chomp
	print "Please enter how many spaces to shift (the key)."
	shift = gets.chomp.to_i

		text.each_char do |char| #For each character
		case char.ord
		when 97 .. 122 #Lower Case
			char = char.ord + shift #subtract the shift value
			#if it wrapped around the alphabet
			if (char > 122)
				char = char - 122 #find how many letters it wrapped by
				char = 96 + char #and go to the apropriate place
			end
			char = char.chr #either way, revert to letter
			print char #print
		when 65 .. 90 #upper case
			char = char.ord + shift
			if (char > 90)
				char = char - 65
				char = 65 + char
			end
			char = char.chr
			print char
		else
			print char #If it is a non-letter, just print it
		end
	end

	print "\n"

else
	print "Error. Command not recognized."
end