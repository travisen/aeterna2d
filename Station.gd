extends Area2D

var loader
var wait_frames
var time_max = 100 # msec
var current_scene

func show_error():
    print ("Could not load scene")

func _ready():
    var root = get_tree().get_root()
    current_scene = root.get_child(root.get_child_count() -1)
    connect("body_enter", self, "_on_Station_area_enter")

func _on_Station_area_enter( area ):
	print ("STATION HIT")
	get_tree().change_scene("res://station.tscn")
