class OpenMat < ActiveRecord::Base

  validates :location, :host, :starts_at, presence: true

  validates :number_people_attending, numericality: { greater_than_or_equal_to: 0 }

  validates :image_file_name, allow_blank: true, format: {
    with:    /\w+\.(gif|jpg|png)\z/i,
    message: "must reference a GIF, JPG, or PNG image"
  }

  def expired?
    starts_at < Time.now
  end

  def self.upcoming
    where("starts_at >= ?", Time.now).order("starts_at")
  end
end
