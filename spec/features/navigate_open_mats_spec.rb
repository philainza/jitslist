require 'rails_helper'

describe "Navigating projects" do

  it "allows navigation from the detail page to the listing page" do 
    open_mat = OpenMat.create(open_mat_attributes)

    visit open_mat_url(open_mat)

    click_link "All Open Mats"

    expect(current_path).to eq(open_mats_path)
  end

  it "allows navigation from the listing page to the detail page" do 
    open_mat = OpenMat.create(open_mat_attributes)

    visit open_mats_url

    click_link open_mat.location
  end

end