module BeadColorsHelper
    def print_color(color)
    color_string = ''
    content_style = "display: block; float: left;  width: 70px; height: 70px; background-color:rgb(#{color.to_rgb})"
    color_string += content_tag :span, ' ', style: content_style
    content_tag :div, color_string.html_safe, style: "display: inline-block;"
  end
end
