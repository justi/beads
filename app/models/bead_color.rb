class BeadColor < ActiveRecord::Base
    has_many :bead_color_packs
    has_many :bead_packs, through: :bead_color_pack
end
