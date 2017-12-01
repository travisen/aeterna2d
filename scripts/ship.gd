extends Sprite

var speed = 500
var vel = Vector2()
#var rot = .05
var turn = .05
var rot = get_rot()

func _ready():
	set_process(true)


func _process(delta):
	if Input.is_key_pressed(KEY_RIGHT) || Input.is_key_pressed(KEY_D):
		set_rot(get_rot() - turn)
		print(get_rot())
	if Input.is_key_pressed(KEY_LEFT) || Input.is_key_pressed(KEY_A):
		set_rot(get_rot() + turn)
		print(get_rot())
	if Input.is_key_pressed(KEY_UP) || Input.is_key_pressed(KEY_W):
		rot = get_rot()
		vel = Vector2(sin(rot), cos(rot)) * -speed;
		print (get_pos())
	if Input.is_key_pressed(KEY_DOWN) || Input.is_key_pressed(KEY_S):
		rot = get_rot()
		vel = Vector2(sin(rot), cos(rot)) * speed;
		print (get_pos())

	set_pos(get_pos() + vel * delta)