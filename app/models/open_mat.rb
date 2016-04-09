class OpenMat < ActiveRecord::Base
  def expired?
    starts_at < Time.now
  end
end
