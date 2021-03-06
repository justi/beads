class BeadPack < ActiveRecord::Base
    belongs_to :size
    belongs_to :bead_type
    has_many :bead_color_packs
    has_many :bead_colors, through: :bead_color_packs
    
    validates :name, :size, :bead_type, :picture, presence: true
    
    mount_uploader :picture, PictureUploader
    
    attr_accessor :new_type_name
    attr_accessor :new_size_name

    
    before_validation :create_type_and_size_from_names
    def create_type_and_size_from_names
      self.bead_type = BeadType.find_or_create_by(name: new_type_name) unless new_type_name.blank?
      self.size = Size.find_or_create_by(name: new_size_name) unless new_size_name.blank?
    end
    
    after_save :create_colors
    def create_colors
        ExtractColors.new().call(self)
    end
    
    def to_s
        self.name
    end
end
