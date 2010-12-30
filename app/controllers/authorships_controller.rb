class AuthorshipsController < AuthenticatedController
  belongs_to :submission
  
  def create
    create! do |success, failure|
      success.html { 
        @submission.author_added!
        redirect_to submission_url(@submission) 
      }
    end
  end

end
