class ExtractColors
    def initialize(dominant_colors: Miro::DominantColors)
        @dominant_colors = dominant_colors
    end
    
    def call(bead_pack)
        Miro.options[:method] = 'pixel_group'
        colors = dominant_colors.new bead_pack.picture.path if bead_pack.picture.present?
        rgb = colors.to_rgb
        percentage = colors.by_percentage
        Miro.options[:method] = 'histogram'
        colors = dominant_colors.new bead_pack.picture.path if bead_pack.picture.present?
        hsl = colors.to_hsl
        rgb.zip(hsl).zip(percentage).each do |result|
            result_colors = result.first
            result_percentage = result.second
            bead_color = ColorFactory.create_color_from_array(result_colors)
            bcp = BeadColorPack.create(
                bead_color: bead_color,
                bead_pack: bead_pack,
                color_percentage: result_percentage
            ) if bead_color
        end
        binding.pry
    end
    
    private
    attr_reader :dominant_colors, :bead_pack_id
end