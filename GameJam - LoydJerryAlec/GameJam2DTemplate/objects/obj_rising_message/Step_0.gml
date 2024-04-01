/// @description Rising Behavior
y -= 1;
time_to_live--;
if(time_to_live <= 0){
	instance_destroy();
}

// 1 message on screen at a time
if(instance_number(obj_rising_message) > 1){
	for (var i = 0; i < instance_number(obj_rising_message); ++i;)
	{
	    instance_destroy(instance_find(obj_rising_message, i));
	}
}
