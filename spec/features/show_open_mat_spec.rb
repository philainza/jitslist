require 'rails_helper'

describe "Viewing an individual open mat" do 

  it "shows the open mat's details" do 
    open_mat = OpenMat.create(location: "Pacific Beach",
                                host: "Jimmy Newtron",
                                number_people_attending: 5)

    visit open_mat_url(open_mat)

    expect(page).to have_text(open_mat.location)
    expect(page).to have_text(open_mat.host)
    expect(page).to have_text(open_mat.number_people_attending)
  end

end