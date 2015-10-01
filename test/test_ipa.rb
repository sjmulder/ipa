require 'test/unit' 
require 'ipa'

include IPA

class IPAFileTest < Test::Unit::TestCase
	IPA_PATH = 'test/fixtures/MockApp.ipa'

	def test_ctor
		ipa = IPAFile.new(IPA_PATH)
		assert_not_nil(ipa)
		ipa.close
	end

	def test_open
		IPAFile.open(IPA_PATH) do |ipa|
			assert_not_nil(ipa)
		end
	end

	def test_info_dict
		IPAFile.open(IPA_PATH) do |ipa|
			assert_equal('MockApp', ipa.info['CFBundleName'])
			assert_equal('Mock App', ipa.info['CFBundleDisplayName'])
			assert_equal('com.example.MockApp', ipa.info['CFBundleIdentifier'])
			assert(ipa.info['LSRequiresIPhoneOS'])
		end
	end

	def test_mapped_keys
		IPAFile.open(IPA_PATH) do |ipa|
			assert_equal('MockApp', ipa.name)
			assert_equal('Mock App', ipa.display_name)
			assert_equal('com.example.MockApp', ipa.identifier)
			assert(ipa.is_iphone)
		end
	end
end

