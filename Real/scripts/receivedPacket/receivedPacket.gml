var buffer = argument[0];
var msgid = buffer_read(buffer, buffer_u8);

switch(msgid){

	//Ping
	case 1:
		var time = buffer_read(buffer, buffer_u32);
		Ping = current_time - time;
	break;
	
	//player location
	case 2:
		
		var client = buffer_read(buffer, buffer_u16);
		var xx = buffer_read(buffer, buffer_u16);
		var yy = buffer_read(buffer, buffer_u16);
		
		if(ds_map_exists(clientmap, string(client))){
			var clientObject = clientmap[? string(client)];
			clientObject.x = xx;
			clientObject.y = yy;
			}else{
				var l = instance_create_layer(xx, yy, "Instances_1", object_Character_1);
				clientmap[? string(client)] =l;
			}
	break;
	
	//sent object
	case 3:
		var client = buffer_read(buffer, buffer_u16);
		var xx = buffer_read(buffer, buffer_u16);
		var yy = buffer_read(buffer, buffer_u16);
		var xxx = buffer_read(buffer, buffer_u16);
		var yyy = buffer_read(buffer, buffer_u16);
		
		throwAxe(xx, yy, xxx, yyy);
		
		
	break;
	
	//Client Disconnect
	/*case 4: 
		var client = buffer_read(buffer, buffer_u16);
		tempObject =
	
	break;*/
}