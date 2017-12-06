extends Area2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	connect("body_enter", self, "_on_Asteroid_area_enter")

func _on_Asteroid_area_enter( area ):
	pass
	#print(str('Body entered: ', area.get_name()))
