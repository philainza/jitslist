require 'rails_helper'

describe "Creating an Open Mat" do 

it "saves the open mat and shows the open mat's details" do 
  visit open_mats_url

  click_link 'Add New Open mat'

  expect(current_path).to eq(new_open_mat_path)

  fill_in "Location", with: "New Location"
  fill_in "Host", with: "New Host"
  fill_in "Number people attending", with: "3"
  fill_in "Starts at", with: (Time.now).to_s

  click_button 'Create Open mat'

  expect(current_path).to eq(open_mat_path(OpenMat.last))

  expect(page).to have_text('New Location')
end
end