class Type < ActiveRecord::Base
    has_many :bead_packs
    
    validates :name, presence: true
end
