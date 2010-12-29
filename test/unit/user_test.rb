require 'test_helper'

class UserTest < ActiveSupport::TestCase
  
  setup do
    User.destroy_all
  end

  test "user must have an institution" do
    assert Factory.build(:user).valid?
    assert !Factory.build(:user, :institution_id => nil).valid?
  end

end
