extends Node2D


export var speed = 190
export(String) var scene_to_load


func _ready():
	set_physics_process(true)


func _physics_process(delta):
	global_position.x += speed * delta
