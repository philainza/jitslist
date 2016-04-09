require 'rails_helper'

describe "Viewing an individual open mat" do 

  it "shows the open mat's details" do 
    open_mat = OpenMat.create(location: "Pacific Beach",
                                host: "Jimmy Newtron",
                                number_people_attending: 5,
                                starts_at: 1.day.from_now)

    visit open_mat_url(open_mat)

    expect(page).to have_text(open_mat.location)
    expect(page).to have_text(open_mat.host)
    expect(page).to have_text(open_mat.number_people_attending)
    expect(page).to have_text(open_mat.starts_at.to_s)
  end

  it "shows the time remaining if starts at is in the future" do 
    open_mat = OpenMat.create(starts_at: 1.day.from_now)

    visit open_mat_url(open_mat)

    expect(page).to have_text(open_mat.starts_at.to_s)
  end

  it "shows 'All Done! if starts at is in the past" do 
    open_mat = OpenMat.create(starts_at: 2.days.ago)

    visit open_mat_url(open_mat)

    expect(page).to have_text('All Done!')
  end
end