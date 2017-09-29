class ExtractColors
    def initialize(dominant_colors: Miro::DominantColors)
        @dominant_colors = dominant_colors
        
    end
    
    def call(bead_pack)
        Miro.options[:method] = 'pixel_group'
        bead_pack_id = bead_pack.id
        colors = dominant_colors.new bead_pack.picture.path if bead_pack.picture.present?
        rgb = colors.to_rgb
        percentage = colors.by_percentage
        Miro.options[:method] = 'histogram'
        colors = dominant_colors.new bead_pack.picture.path if bead_pack.picture.present?
        hls = colors.to_hsl
        binding.pry
        result = zip_three_arrays(rgb, hls, percentage)
    end
    
    def zip_three_arrays(rgb, hls, percentage)
        rgb.zip(hls, percentage) { |x, y, z| p [x, y, z] }
    end
    
    private
    attr_reader :dominant_colors, :bead_pack_id
end