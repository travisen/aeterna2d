extends KinematicBody2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
const GRAVITY = 0

var vel = Vector2()
var turn = .05
var rot = get_rot()
var speed = 10

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	set_fixed_process(true)
	
	pass
func _fixed_process(delta):

	if Input.is_key_pressed(KEY_RIGHT) || Input.is_key_pressed(KEY_D):
		set_rot(get_rot() - turn)
		#vel = -Vector2(sin(rot), cos(rot)).normalized() * speed;
		#print(get_rot())
	if Input.is_key_pressed(KEY_LEFT) || Input.is_key_pressed(KEY_A):
		set_rot(get_rot() + turn)
		#print(get_rot())
	if Input.is_key_pressed(KEY_UP) || Input.is_key_pressed(KEY_W):
		rot = get_rot()
		if speed < 500:
			speed += 10
		vel = -Vector2(sin(rot), cos(rot)).normalized() * speed;
		#print (get_pos())
	if Input.is_key_pressed(KEY_DOWN) || Input.is_key_pressed(KEY_S):
		rot = get_rot()
		#vel = Vector2(sin(rot), cos(rot)) * speed;
		if speed > 10:
			speed -= 5
	
	#var motion = speed * delta
	vel = move(vel)

	if (is_colliding()):
		var n = get_collision_normal()
		vel = n.slide(vel)
		#vel = n.slide(vel)
		move(vel)
