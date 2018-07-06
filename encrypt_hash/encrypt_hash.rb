def char_hash
	char1 = ('A'..'z').to_a - ['\\']
	char2 = ('!'..'!').to_a
	char3 = ('#'..'?').to_a
	char_hash = char1 + char2 + char3
	# seed = 2
	# char_hash = char_hash.shuffle(random: Random.new(seed))
	char_hash = char_hash.map.with_index { |x, i| [i, x]}.to_h
end
def shift
	# require 'date'
	# shift = Date.today.to_s.split(//).last(2).join("").to_i
	shift = 5
end
def shift_hash(shift)
	shift_hash = char_hash
	shift_hash = shift_hash.values.rotate(shift)
	shift_hash = shift_hash.map.with_index { |x, i| [i, x]}.to_h
end
def encrypt_hash(message)
	message_indexes = []
	encrypted_message = []
	char_hash = char_hash()
	total_char = char_hash.count
	message = message.split(//)
	message.each { |y| y 
		if y == " "
			message_indexes.push(y)
		else
			char_hash.each { |i, x| x 
				if y == x && i > total_char - 1 - shift
					char_hash = shift_hash(shift)
					i = i - total_char + shift
					message_indexes.push(i)
					char_hash = char_hash()
				elsif  y == x 
					char_hash = shift_hash(shift)
					i = i + shift
					message_indexes.push(i)
					char_hash = char_hash()				
				end
			}
		end
	}
	message_indexes.each { |y| y
		if y == " " 
			encrypted_message.push(y)
		else
			char_hash.each { |i, x| i
				if y == i
					encrypted_message.push(x)
				end
			}
		end
	}
	encrypted_message = encrypted_message.join
end
def decrypt_hash(message)
	message_indexes = []
	decrypted_message = []
	char_hash = char_hash()
	total_char = char_hash.count
	message = message.split(//)
	message.each { |y| y 
		if y == " "
			message_indexes.push(y)
		else
			char_hash.each { |i, x| x 
				if y == x && i - shift < shift
					char_hash = shift_hash(-shift)
					i = i + total_char - shift
					message_indexes.push(i)
					char_hash = char_hash()
				elsif  y == x 
					char_hash = shift_hash(-shift)
					i = i - shift
					message_indexes.push(i)
					char_hash = char_hash()
				end
			}
		end
	}
	message_indexes.each { |y| y
		if y == " " 
			decrypted_message.push(y)
		else
			char_hash.each { |i, x| i
				if y == i
					decrypted_message.push(x)
				end
			}
		end
	}
	decrypted_message = decrypted_message.join
end