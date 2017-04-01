/// create tiles
width = 50;
height =50; 
chunk_size = 8;
tile_size = 32;

load_radius = 2;

chunks_grid = ds_grid_create(width, height)
ds_grid_set_region(chunks_grid, 0, 0, width, height, noone);