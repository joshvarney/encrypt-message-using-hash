 def encrypt_hash(message)
	encrypted_indexes = []
	encrypted_message = []
	letter1 = ('a'..'e').to_a
	letter = ('a'..'z').to_a
	letter = letter + letter1
	letter = letter.map.with_index { |x, i| [i, x]}.to_h
	message = message.downcase
	message = message.split("")
	message.each { |y| y
	letter.each { |i, x| x   
		if y == x
			 i = i + 5
			encrypted_indexes.push(i)
		end
	}}
	encrypted_indexes.each { |y| y

	letter.each { |i, x| i
		if y == " "
			encrypted_message.push(y)
		elsif y == i
			encrypted_message.push(x)
		end
	}}
	encrypted_message = encrypted_message.join
	p encrypted_message
end

def decrypt_hash(message2)
	decrypted_indexes = []
	decrypted_message = []
	letter1 = ('v'..'z').to_a
	letter = ('a'..'z').to_a
	letter = letter1 + letter
	letter = letter.map.with_index { |x, i| [i, x]}.to_h
	letter
	message2 = message2.downcase
	message2 = message2.split("")
	message2.each { |y| y
	letter.each { |i, x| x   
		if y == x
			 i = i - 5
			decrypted_indexes.push(i)
		end
	}}
	decrypted_indexes.each { |y| y

	letter.each { |i, x| i
		if y == i
			decrypted_message.push(x)
		end
	}}
	decrypted_message = decrypted_message.join
	p decrypted_message
end

