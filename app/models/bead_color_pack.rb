class BeadColorPack < ActiveRecord::Base
  belongs_to :bead_color
  belongs_to :bead_pack
  
  def to_s
    "#{(self.color_percentage*100).round}%"
  end
end
