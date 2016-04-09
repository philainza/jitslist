module OpenMatsHelper
  def starts_in(open_mat)
    current_time = Time.now
    if open_mat.expired?
      content_tag(:strong, 'All Done!')
    else
      distance_of_time_in_words(current_time, open_mat.starts_at)
    end
  end
end
