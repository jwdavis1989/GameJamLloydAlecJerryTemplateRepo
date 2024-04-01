/// @desc Creates a rising messge
/// @param message_to_send
/// @param color
/// @param time_to_live
/// @param ox
/// @param y
function create_rising_message(message_to_send, color, time_to_live, x, y, x_scale, y_scale){
	var msg_object = instance_create(x, y, obj_rising_message);
	with(msg_object){
		msg_object.message_to_send = message_to_send;
		msg_object.color = color;
		msg_object.time_to_live = time_to_live;
		msg_object.x_scale = x_scale;
		msg_object.y_scale = y_scale;
	}
	return(msg_object);
}