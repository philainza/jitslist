module OpenMatsHelper
  def starts_in(open_mat)
    current_time = Time.now
    if open_mat.expired?
      content_tag(:strong, 'All Done!')
    else
      "Starts " + distance_of_time_in_words(current_time, open_mat.starts_at) + " from now"
    end
  end
end
