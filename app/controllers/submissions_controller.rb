class SubmissionsController < AuthenticatedController
#  belongs_to :conference, :optional => true

  def create
    @submission = current_user.submissions.build(params[:submission])
    create! { new_submission_authorship_url(@submission) }
  end
  
  def submit
    @submission = Submission.find(params[:id])
    @submission.submit!
    redirect_to @submission
  end

end
