require "minitest/autorun"
require_relative "encrypt_hash.rb"
class Test_Encrypt_hash < Minitest::Test 

	# def test_that_returns_array_of_alphabet
	# 	assert_equal([], encrypt_hash(message))
	# end
	# def test_that_letters_are_indexed_in_hash
	# 	assert_equal({}, encrypt_hash(message))
	# end
	def test_assert_that_we_can_change_letters
	 	message = "Hello"
	 	assert_equal("mjqqt", encrypt_hash(message))
	end 
	def test_assert_that_works_with_z
		message = "Zebra"
		assert_equal("ejgwf", encrypt_hash(message))
	end
	def test_assert_that_works_with_a_to_e
		message = "added"
		assert_equal("fiiji", encrypt_hash(message))
	end
	def test_assert_that_decrypting_works
		message2 = "fiiji"
		assert_equal("added", decrypt_hash(message2))
	end
	def test_assert_that_works_with_spaces
		message = "Hello Zebra"
		assert_equal("mjqqtejgwf", encrypt_hash(message))
	end
	def test_assert_that_decrypting_works_with_a_to_e
		message2 = "abcde"
		assert_equal("vwxyz", decrypt_hash(message2))
	end
	def test_assert_that_decrypting_works_with_v_to_z
		message2 = "vwxyz"
		assert_equal("qrstu", decrypt_hash(message2))
	end
end