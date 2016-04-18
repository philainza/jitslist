require 'rails_helper'

describe "Viewing the list of open mats" do 

  it "shows the open mats" do 
    open_mat1 = OpenMat.create(location: "Pacific Beach",
                                host: "Jimmy Newtron",
                                number_people_attending: 5,
                                starts_at: 2.days.from_now)

    open_mat2 = OpenMat.create(location: "Mission Beach",
                                host: "Homer Simpson",
                                number_people_attending: 8,
                                starts_at: 1.day.from_now)

    open_mat3 = OpenMat.create(location: "Ocean Beach",
                                host: "Peter Griffin",
                                number_people_attending: 12,
                                starts_at: 1.day.from_now)

    visit open_mats_url

    expect(page).to have_text("3 Open Mats")
    expect(page).to have_text(open_mat1.location)
    expect(page).to have_text(open_mat2.location)
    expect(page).to have_text(open_mat3.location)

    expect(page).to have_text(open_mat1.host)
    expect(page).to have_text(open_mat1.number_people_attending)
  end

  it "does not show an open mat that has already passed" do 

    open_mat = OpenMat.create(open_mat_attributes(starts_at: 2.days.ago))

    visit open_mats_path

    expect(page).not_to have_text(open_mat.location)

  end

end