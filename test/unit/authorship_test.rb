require 'test_helper'

class AuthorshipTest < ActiveSupport::TestCase
  
  setup do
    Authorship.destroy_all
  end
  
  test "authorship has an author and submission" do
    assert !Factory.build(:authorship, :author_id => nil).valid?
    assert !Factory.build(:authorship, :submission_id => nil).valid?
  end
end
