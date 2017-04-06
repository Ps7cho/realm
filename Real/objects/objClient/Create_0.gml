/// create the Client
var type = network_socket_tcp;
var ipaddress = "104.187.119.7";
var port = 64198;
socket = network_create_socket(type);
isConnected = network_connect(socket, ipaddress, port);


var size = 1024;
var type = buffer_fixed;
var alignment = 1;
buffer = buffer_create(size, type, alignment);
bufferSmall = buffer_create(256, type, alignment);

clientmap = ds_map_create();

Result = 0;
Ping = 2;


