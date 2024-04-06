/// @desc Creates a static messge
/// @param message_to_send String to display
/// @param color Text color
/// @param x x coordinate to spawn at
/// @param y y coordinate to spawn at
/// @param message_depth y Depth to draw the text
// IMPORTANT: Calling instance is responsible for deleting message
function create_static_message_at_depth(message_to_send, color, x, y, x_scale, y_scale, message_depth){
	var msg_object = instance_create(x, y, obj_static_message);
	with(msg_object){
		msg_object.message_to_send = message_to_send;
		msg_object.color = color;
		msg_object.x_scale = x_scale;
		msg_object.y_scale = y_scale;
		msg_object.depth = message_depth;
	}
	return(msg_object);
}