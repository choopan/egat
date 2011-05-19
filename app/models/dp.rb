class Dp < ActiveRecord::Base
  attr_accessible :dp

  after_initialize :init

  def init
    self.dp ||= 250
  end

end
