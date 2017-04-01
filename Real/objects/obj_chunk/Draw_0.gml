/// draw the tiles
var xoff = x * (tile_size * width);
var yoff = y * (tile_size * height);

buffer_seek(chunk_buffer, buffer_seek_start, 0);

for(var i = 0; i < width; i++)
for(var j = 0; j < width; j++)
{
	var index = buffer_read(chunk_buffer, buffer_u8);
	var x_draw = xoff + (i * tile_size);
	var y_draw = yoff + (j * tile_size);
	
	draw_sprite(sprite_4, index, x_draw, y_draw);
}