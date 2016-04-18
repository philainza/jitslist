class OpenMat < ActiveRecord::Base
  def expired?
    starts_at < Time.now
  end

  def self.upcoming
    where("starts_at >= ?", Time.now).order("starts_at")
  end
end
