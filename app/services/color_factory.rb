class ColorFactory
    def self.find_or_create_color(array)
        rgb = array.first
        hsl = array.second
        BeadColor.find_or_create_by(
            r: rgb.first,
            g: rgb.second,
            b: rgb.third,
            h: hsl.first,
            s: hsl.second,
            l: hsl.third
        )
    end
end