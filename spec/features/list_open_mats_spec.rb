require 'rails_helper'

describe "Viewing the list of open mats" do 

  it "shows the open mats" do 
    visit 'http://example.com/open_mats'

    expect(page).to have_text("3 Open Mats")
    expect(page).to have_text("Pacific Beach")
    expect(page).to have_text("Mission Beach")
    expect(page).to have_text("La Jolla Shores")
  end

end