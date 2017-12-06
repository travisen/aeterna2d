extends KinematicBody2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	set_process_input(true)

func _input(event):
	if(event.type == InputEvent.KEY):
		var curPos = get_pos()
		if(event.scancode == KEY_LEFT):
			curPos.x = curPos.x - 5
		if(event.scancode == KEY_RIGHT):
			curPos.x = curPos.x + 5
			
		set_pos(curPos)