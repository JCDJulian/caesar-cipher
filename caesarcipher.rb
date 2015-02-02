#Julian De Ocampo
#In cryptography, a Caesar cipher, also known as Caesar's cipher, the shift cipher, Caesar's code or Caesar shift, is one of the simplest and most widely known encryption techniques. It is a type of substitution cipher in which each letter in the plaintext is replaced by a letter some fixed number of positions down the alphabet. For example, with a left shift of 3, D would be replaced by A, E would become B, and so on. The method is named after Julius Caesar, who used it in his private correspondence.

print "Please enter a string."
text = gets.chomp
print "Please enter how many spaces to shift left."
shift = gets.chomp.to_i

	text.each_char do |char| #For each character
		if char != " "		 #That isn't a space
							 #Check if it is upper case or lower case
			char = char.ord - shift #either way, subtract the shift value
			char = char.chr #and replace it
							#But, if it goes below a
							#Go to the end of the alphabet
							#and determine real letter
			print char
		else
			print char      #If it is a space, just print it
		end
	end

print "\n"