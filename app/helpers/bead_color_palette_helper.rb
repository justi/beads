module BeadColorPaletteHelper

  def print_color_palette(bead_pack)
    bead_color_packs = bead_pack.bead_color_packs
    color_string = ''
    bead_color_packs.each do |bcp|
      color = bcp.bead_color
      content_style = "display: block; float: left;  width: 35px; height: 35px; background-color:rgb(#{color.to_rgb})"
      color_string += link_to content_tag(:span, ' ', style: content_style), bead_color_path(color)
    end
    content_tag :div, color_string.html_safe, style: "display: inline-block;"
  end
end