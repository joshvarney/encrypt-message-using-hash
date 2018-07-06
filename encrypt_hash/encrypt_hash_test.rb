require "minitest/autorun"
require_relative "encrypt_hash.rb"
class Test_Encrypt_hash < Minitest::Test 
	
	def test_assert_that_we_can_change_letters1
	 	assert_equal("Mjqqt", encrypt_hash("Hello"))
	end 
	def test_assert_that_works_with_z2
		assert_equal("`jgwf", encrypt_hash("Zebra"))
	end
	def test_assert_that_works_with_a_to_e3
		assert_equal("fiiji", encrypt_hash("added"))
	end
	def test_assert_that_decrypting_works4
		assert_equal("added", decrypt_hash("fiiji"))
	end
	def test_assert_that_works_with_spaces5
		assert_equal("Mjqqt `jgwf", encrypt_hash("Hello Zebra"))
	end
	def test_assert_that_decrypting_works_with_a_to_e6
		assert_equal('[]^_`', decrypt_hash("abcde"))
	end
	def test_assert_that_decrypting_works_with_v_to_z7
		assert_equal("qrstu", decrypt_hash("vwxyz"))
	end
	def test_assert_that_what_happens_with_special_characters8
		assert_equal("]mfy,x", encrypt_hash("What's"))
	end
	def test_assert_that_what_happens_with_numbers9
		assert_equal("5>$%fg", encrypt_hash("09xyab"))
	end
	def test_assert_that_special_characters_change10
		assert_equal("4ECDA", encrypt_hash("/?=>;"))
	end
	def test_abc_returns_fgh11
		assert_equal("fgh", encrypt_hash("abc"))
	end
	def test_that_this_works12
		assert_equal("$%&", encrypt_hash("xyz"))
	end
	def test_that_that_works13
		assert_equal("ABCDE", encrypt_hash(";<=>?"))
	end	
	def test_assert_that_special_characters_change_back14
		assert_equal("/`^_]", decrypt_hash("4ecdb"))
	end
	def test_assert_that_works_with_spaces_decrypting15
		assert_equal("Hello Zebra", decrypt_hash("Mjqqt `jgwf"))
	end
	def test_assert_that_decrypt_works_on_ABCDE16
		assert_equal(";<=>?", decrypt_hash("ABCDE"))
	end
end