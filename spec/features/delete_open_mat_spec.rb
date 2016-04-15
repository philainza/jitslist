require 'rails_helper'

describe "Deleting an open mat" do 

  it "deletes the open mat and shows the open mat listing without the deleted open mat" do 
    open_mat = OpenMat.create(open_mat_attributes)

    visit open_mat_path(open_mat)

    click_link 'Delete' 

    expect(current_path).to eq(open_mats_path)
    expect(page).not_to have_text(open_mat.location)
  end

end