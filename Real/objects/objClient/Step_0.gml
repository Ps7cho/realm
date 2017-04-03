/// send and receive packets
buffer_seek(buffer, buffer_seek_start, 0);
buffer_write(buffer, buffer_u8, 1);
buffer_write(buffer, buffer_u32, current_time);
Result = network_send_packet(socket, buffer, buffer_tell(buffer));
