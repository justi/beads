class BeadColor < ActiveRecord::Base
    has_many :bead_color_packs
    has_many :bead_packs, through: :bead_color_packs
    
    def to_rgb
      "#{self.r}, #{self.g}, #{self.b}"
    end
    
     def to_hsl
      "#{(self.h*360)}, #{(self.s*100)}%, #{(self.l*100)}%"
    end
end
