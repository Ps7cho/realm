/// chunks objects
width = obj_world.chunk_size;
height = obj_world.chunk_size

buffer_size = (width * height);
tile_size = obj_world.tile_size;
file_name = "chunk/chunk " + string(x) + " " + string(y);

if file_exists(file_name)
{
	chunk_buffer = buffer_load(file_name);
	md5 = buffer_md5(chunk_buffer, 0, buffer_get_size(chunk_buffer));
}
else
{


	chunk_buffer = buffer_create(buffer_size, buffer_fast, 1);

	for(var i = 0; i < width; i++)
	for(var j = 0; j < width; j++)
	{
	buffer_write(chunk_buffer, buffer_u8, irandom(8));
	}
	buffer_save(chunk_buffer, file_name);
	md5 = buffer_md5(chunk_buffer, 0, buffer_get_size(chunk_buffer));
}