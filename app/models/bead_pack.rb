class BeadPack < ActiveRecord::Base
    belongs_to :size
    belongs_to :type
    
    validates :name, presence: true
    
    attr_accessor :new_type_name
    
    before_save :create_type_from_name
    def create_type_from_name
      Type.find_or_create_by(name: new_type_name) unless new_type_name.blank?
    end
end
