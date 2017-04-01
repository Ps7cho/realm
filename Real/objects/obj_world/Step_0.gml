/// Generate chunks
var chunk_x = object_Character.x div (chunk_size * tile_size);
var chunk_y = object_Character.y div (chunk_size * tile_size);

for(var i = chunk_x - load_radius; i <= chunk_x + load_radius; i++)
for(var j = chunk_y - load_radius; j <= chunk_y + load_radius; j++)
{
	if ds_grid_get(chunks_grid, i, j) = noone
	{
	var chunk = instance_create_layer(i, j, "Instances", obj_chunk);
	ds_grid_set(chunks_grid, i, j, chunk);
	}
}

with(obj_chunk)
{
	if (abs(chunk_x - x) > obj_world.load_radius) or (abs(chunk_y - y) > obj_world.load_radius)
	{
	ds_grid_set(obj_world.chunks_grid, x, y, noone);
	instance_destroy();
	}
}