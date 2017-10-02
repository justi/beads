class ExtractColors
    def initialize(dominant_colors: Miro::DominantColors)
        @dominant_colors = dominant_colors
    end
    
    def call(bead_pack)
        raise 'No picture provided' unless bead_pack.picture.present?
        image_path = bead_pack.picture.path
        rgb_values = rgb(image_path)
        hsl_values = hsl(image_path)
        percentage_values = percentage(image_path)
        rgb_values.zip(hsl_values).zip(percentage_values).each do |result|
            create_colors(result.first, result.second, bead_pack)
        end
    end
    
    private
    
    def rgb(image_path)
        Miro.options[:method] = 'pixel_group'
        colors = dominant_colors.new image_path 
        colors.to_rgb
    end
    
    def percentage(image_path)
        Miro.options[:method] = 'pixel_group'
        colors = dominant_colors.new image_path 
        colors.by_percentage
    end
    
    def hsl(image_path)
        Miro.options[:method] = 'histogram'
        colors = dominant_colors.new image_path 
        colors.to_hsl
    end
    
    def create_colors(colors, percentage, bead_pack)
        bead_color = ColorFactory.find_or_create_color(colors)
        BeadColorPack.create(
            bead_color: bead_color,
            bead_pack: bead_pack,
            color_percentage: percentage
        ) if bead_color
    end
    
    attr_reader :dominant_colors, :bead_pack_id
end