class SubmissionsController < InheritedResources::Base
  belongs_to :user, :optional => true
end
