require 'rails_helper'

describe "An open mat" do 
  it "has expired if starts at is in the past" do 
    open_mat = OpenMat.new(starts_at: 1.day.ago)

    expect(open_mat.expired?).to eq(true)
  end

  it "has not expired if starts at is in the future" do 
    open_mat = OpenMat.new(starts_at: 2.days.from_now)

    expect(open_mat.expired?).to eq(false)
  end
end