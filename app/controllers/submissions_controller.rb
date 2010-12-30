class SubmissionsController < AuthenticatedController

  def create
    create! { new_submission_authorship_url(@submission) }
  end
  
  def submit
    @submission = Submission.find(params[:id])
    @submission.submit!
    redirect_to @submission
  end
  
  protected
  def begin_of_association_chain
    current_user
  end
end
