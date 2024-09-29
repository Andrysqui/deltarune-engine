///@desc Draw
if (font_exists(font)) {
    draw_set_font(font);
    if (shadow) {
        draw_text_transformed_color(
            x + _offset_x + 1,
            y + _offset_y + 1,
            text,
            image_xscale,
            image_yscale,
            image_angle,
            color_shadow[0],
            color_shadow[1],
            color_shadow[2],
            color_shadow[3],
            image_alpha
        );
    }
    draw_text_transformed_color(
        x + _offset_x,
        y + _offset_y,
        text,
        image_xscale,
        image_yscale,
        image_angle,
        color[0],
        color[1],
        color[2],
        color[3],
        image_alpha
    );
}

if (sprite_exists(sprite)) {
    var sprite_color = make_color_rgb(color[0], color[1], color[2]);
    draw_sprite_ext(
        sprite,
        image_index,
        x + _offset_x,
        y + _offset_y,
        image_xscale,
        image_yscale,
        image_angle,
        sprite_color,
        image_alpha
    );
}
