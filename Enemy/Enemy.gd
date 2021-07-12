extends KinematicBody2D

export(String) var scene_to_load
export (int) var health = 1

func _ready():
	print("enemy ready")
	$Area2D.connect("area_entered", self, "_colliding")

func _colliding(area):
	print(area)
	if area.is_in_group("right"):
		get_parent().global_position.y += 10
		get_parent().speed = get_parent().speed * -1
	if area.is_in_group("left"):
		get_parent().global_position.y += 10
		get_parent().speed = get_parent().speed * -1
	if area.is_in_group("bottom"):
		print("bottom...")
		get_tree().change_scene(scene_to_load)

func _physics_process(delta):
	if health <= 0:
		GlobalVariables.enemynumber += 1
		queue_free()
		GlobalVariables.score += 1

func hit():
	health -= 1
