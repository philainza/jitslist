require 'rails_helper'

describe "Editing an open mat" do 
  it "updates the open mat and shows the open mat's updated details" do 
    open_mat = OpenMat.create(open_mat_attributes)

    visit open_mat_url(open_mat)

    click_link 'Edit'

    expect(current_path).to eq(edit_open_mat_path(open_mat))

    expect(find_field('Location').value).to eq(open_mat.location)

    fill_in 'Location', with: "Updated Open Mat Location"

    click_button 'Update Open mat'

    expect(current_path).to eq(open_mat_path(open_mat))

    expect(page).to have_text('Updated Open mat Location')
  end
end