/// @description draw_number_with_commas(x, y, number, scale)
/// @param {real} x The x position to draw the number
/// @param {real} y The y position to draw the number
/// @param {real} number The number to draw with commas
/// @param {real} scale The scale factor for the text (default 1)

function draw_number_with_commas(x, y, number, scale = 1) {
    var num_str = string(number);
    var len = string_length(num_str);
    
    // Calculate total width of the formatted number
    var total_width = 0;
    
    // Handle negative numbers
    var is_negative = false;
    if (string_char_at(num_str, 1) == "-") {
        is_negative = true;
        num_str = string_delete(num_str, 1, 1);
        len = string_length(num_str);
        total_width += string_width("-") * scale;
    }
    
    // Find decimal point position
    var decimal_pos = string_pos(".", num_str);
    var whole_part_len = (decimal_pos > 0) ? decimal_pos - 1 : len;
    
    // Calculate width including commas (only for whole number part)
    for (var i = 1; i <= len; i++) {
        var char = string_char_at(num_str, i);
        
        // Add comma every 3 digits from the right (before the 4th, 7th, 10th digit, etc.)
        // Only add commas in the whole number part (before decimal) and only for numbers >= 1000
        if (i > 1 && i <= whole_part_len && whole_part_len >= 4 && (whole_part_len - i + 1) % 3 == 0) {
            total_width += string_width(",") * scale;
        }
        
        total_width += string_width(char) * scale;
    }
    
    // Start drawing from the left edge (centered)
    var draw_x = x - (total_width / 2) + 8;
    
    // Handle negative numbers
    if (is_negative) {
        draw_set_font(font_get_name(font_get_current()));
        draw_set_halign(fa_left);
        draw_set_valign(fa_top);
        draw_text_transformed(draw_x, y, "-", scale, scale, 0);
        draw_x += string_width("-") * scale;
    }
    
    // Draw each character and add commas every 3 digits from the right
    for (var i = 1; i <= len; i++) {
        var char = string_char_at(num_str, i);
        
        // Add comma every 3 digits from the right (before the 4th, 7th, 10th digit, etc.)
        // Only add commas in the whole number part (before decimal) and only for numbers >= 1000
        if (i > 1 && i <= whole_part_len && whole_part_len >= 4 && (whole_part_len - i + 1) % 3 == 0) {
            draw_text_transformed(draw_x - 4*scale, y, ",", scale, scale, 0);
            draw_x += string_width(",") * scale;
        }
        
        draw_text_transformed(draw_x, y, char, scale, scale, 0);
        draw_x += string_width(char) * scale;
    }
}
