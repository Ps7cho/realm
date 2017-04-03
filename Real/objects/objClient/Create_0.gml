/// create the Client
var type = network_socket_tcp;
var ipaddress = "192.168.1.65";
var port = 64198;
socket = network_create_socket(type);
isConnected = network_connect(socket, ipaddress, port);


var size = 1024;
var type = buffer_fixed;
var alignment = 1;
buffer = buffer_create(size, type, alignment);

Result = 0;
Ping = 2;


