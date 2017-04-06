/// Destory socket and buffer

network_destroy(socket);
buffer_delete(buffer);
buffer_delete(bufferSmall);
ds_map_destroy(clientmap);