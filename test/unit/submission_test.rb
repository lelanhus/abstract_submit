require 'test_helper'

class SubmissionTest < ActiveSupport::TestCase
  
  setup do
    Submission.destroy_all
  end
  
  test "a submission requires a user and title" do
    assert !Factory.build(:submission, :user_id => nil).valid?
    assert !Factory.build(:submission, :title => nil).valid?
  end
  
  test "a submission has a unique title for a given user" do
    good = Factory(:submission)
    bad = Factory.build(:submission)
    bad.title = good.title
    bad.user_id = good.user_id
    assert !bad.valid?
    
    bad.user_id = good.user_id + 1
    assert bad.valid?
  end
end
