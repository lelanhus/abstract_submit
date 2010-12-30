class AuthorshipsController < AuthenticatedController
  
  def create
    create! { submission_url(@authorship.submission) }
  end

end
