class BeadPack < ActiveRecord::Base
    belongs_to :size
    belongs_to :type
    
    validates :name, presence: true
end
