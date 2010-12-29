require 'test_helper'

class InstitutionTest < ActiveSupport::TestCase
  
  setup do
    Institution.destroy_all
  end
  
  test "instutions require a name" do
    assert !Factory.build(:institution, :name => nil).valid?
  end
  
  test "institution names are unique" do
    good = Factory(:institution)
    bad = Factory.build(:institution)
    bad.name = good.name
    assert !bad.valid?
    
    bad.name = Faker::Company.name
    assert bad.valid?
  end
end
