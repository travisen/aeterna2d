extends KinematicBody2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
const GRAVITY = 0

var vel = Vector2()
var turn = .05
var rot = get_rot()
var SPEED = 200

func collision():
	var isCollision = is_colliding()
	print(is_colliding())

func _ready():
	set_fixed_process(true)
	connect("body_enter", self, "_on_Area2D_area_enter")

func _fixed_process(delta):

	if Input.is_key_pressed(KEY_RIGHT) || Input.is_key_pressed(KEY_D):
		set_rot(get_rot() - turn)
		#vel = -Vector2(sin(rot), cos(rot)).normalized() * speed;
	elif Input.is_key_pressed(KEY_LEFT) || Input.is_key_pressed(KEY_A):
		set_rot(get_rot() + turn)
	if Input.is_key_pressed(KEY_UP) || Input.is_key_pressed(KEY_W):
		rot = get_rot()
		vel = -Vector2(sin(rot), cos(rot)).normalized() * SPEED;
	elif Input.is_key_pressed(KEY_DOWN) || Input.is_key_pressed(KEY_S):
		rot = get_rot()
		vel = Vector2(sin(rot), cos(rot)) * SPEED;
	var motion = vel * delta
	vel = move(motion)
	
	#print(is_colliding())


func _on_Area2D_area_enter( area ):
	print(str('Body entered: ', area.get_name()))
	#pass # replace with function body
