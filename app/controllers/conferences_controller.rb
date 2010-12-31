class ConferencesController < AuthenticatedController
  
  def new
    @conference = current_user.conferences.build
  end
  
  def create
    @conference = current_user.conferences.build(params[:conference])
    create!
  end
end
