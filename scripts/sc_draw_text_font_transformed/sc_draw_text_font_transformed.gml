///@function sc_draw_text_font_transformed(x, y, text, xsale, yscale, angle, halign, valign, color )
///@description				-	Dibuja un texto escalado y orientado en lo señalado con el color y alineamiento deseado.
///@param {int} x
///@param {int} y
///@param {string} text
///@param {real} xscale
///@param {real} yscale
///@param {int} angle
///@param {halign} halign
///@param {valign} valign
///@param {color} color
///@return {void}

var l_xx = argument0,
	l_yy = argument1,
	l_text = argument2,
	l_xscale = argument3,
	l_yscale = argument4,
	l_angle = argument5,
	l_halign = argument6,
	l_valign = argument7,
	l_color = argument8;

draw_set_halign(l_halign);
draw_set_valign(l_valign);

draw_set_color(l_color);

draw_text_transformed(l_xx, l_yy, l_text, l_xscale, l_yscale, l_angle);