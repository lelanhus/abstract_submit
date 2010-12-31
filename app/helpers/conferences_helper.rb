module ConferencesHelper
  
  def submission_deadline_distance(conference)
    return distance_of_time_in_words(Time.now, conference.submission_deadline) if 
      conference.taking_submissions?
    "No longer accepting submissions."
  end
end
