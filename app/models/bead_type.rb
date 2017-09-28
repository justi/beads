class BeadType < ActiveRecord::Base
    has_many :bead_packs
    
    validates :name, presence: true
    
    def to_s
        self.name
    end
end
