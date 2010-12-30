require 'test_helper'

class AuthorTest < ActiveSupport::TestCase
  
  setup do
    Author.destroy_all
  end
  
  test "author has a full name, email, and institution" do
    assert !Factory.build(:author, :full_name => nil).valid?
    assert !Factory.build(:author, :email => nil).valid?
    assert !Factory.build(:author, :institution_id => nil).valid?
  end
  
  test "author has a unique email" do
    auth = Factory(:author)
    bad_auth = Factory.build(:author)
    bad_auth.email = auth.email
    assert !bad_auth.valid?
    
    bad_auth.email = "good@example.com"
    assert bad_auth.valid?
  end
  
  test "email is of the proper format" do
    assert !Factory.build(:author, :email => "bad.email.com").valid?
    assert Factory.build(:author, :email => "good-email@example.com").valid?
  end
end
