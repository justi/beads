class ExtractColors
    def initialize(dominant_colors: Miro::DominantColors)
        @dominant_colors = dominant_colors
    end
    
    def call(bead_pack)
        binding.pry
        bead_pack_id = bead_pack.id
        colors = dominant_colors.new bead_pack.picture.path if bead_pack.picture.present?
        colors.to_hex
    end
    
    private
    attr_reader :dominant_colors, :bead_pack_id
end