class ColorFactory
    def self.create_color_from_array(array)
        rgb = array.first
        hsl = array.second
        BeadColor.create(
            r: rgb.first,
            g: rgb.second,
            b: rgb.third,
            h: hsl.first,
            s: hsl.second,
            l: hsl.third
        )
    end
end