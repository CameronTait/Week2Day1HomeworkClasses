require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../band')

class TestBand < MiniTest::Test


  def test_get_band_name
   band = Band.new('Linkin Park', ["Chester", "Mike"], "Rob")
   assert_equal('Linkin Park', band.name)
  end



def test_get_member_names
   band = Band.new('Linkin Park', ["Chester", "Mike"], "Rob")
   assert_equal(["Chester", "Mike"], band.members)
  end




def test_add_new_member
    band = Band.new('Linkin Park', ["Chester", "Mike"], "Rob")
    band.add_new_member("Joe")
    assert_equal("Joe", band.members.last)
   end


def test_set_manager
    band = Band.new('Linkin Park', ["Chester", "Mike"], "Rob")
    band.manager = "Rob"
    assert_equal("Rob", band.manager)
   end


end
