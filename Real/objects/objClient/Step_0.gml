/// send and receive packets


//send ping
buffer_seek(buffer, buffer_seek_start, 0);
buffer_write(buffer, buffer_u8, 1);
buffer_write(buffer, buffer_u32, current_time);
Result = network_send_packet(socket, buffer, buffer_tell(buffer));


//Send Position
buffer_seek(bufferSmall, buffer_seek_start, 0);
buffer_write(bufferSmall, buffer_u8, 2);
buffer_write(bufferSmall, buffer_u16, round(object_Character.x));
buffer_write(bufferSmall, buffer_u16, round(object_Character.y));
Result = network_send_packet(socket, bufferSmall, buffer_tell(bufferSmall));


if  mouse_check_button(mb_right)&& global.fire == true{
	buffer_seek(bufferSmall, buffer_seek_start, 0);
	buffer_write(bufferSmall, buffer_u8, 3);
	buffer_write(bufferSmall, buffer_u16, round(object_Character.x));
	buffer_write(bufferSmall, buffer_u16, round(object_Character.y));	
	buffer_write(bufferSmall, buffer_u16, round(mouse_x));
	buffer_write(bufferSmall, buffer_u16, round(mouse_y));
	Result = network_send_packet(socket, bufferSmall, buffer_tell(bufferSmall));
	}