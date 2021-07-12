extends KinematicBody2D

export(String) var scene_to_load
var speed = 200
var bullet = preload("res://Bullet/Bullet.tscn")


func _ready():
	set_process(true)
	set_physics_process(true)
	$Area2D.connect("area_entered", self, "_colliding")
	$Area2D.connect("area_exited", self, "_not_colliding")


func _physics_process(delta):
	if Input.is_action_pressed("ui_left"):
		move_and_collide(Vector2(-speed * delta, 0))
	elif Input.is_action_pressed("ui_right"):
		move_and_collide(Vector2(speed * delta, 0))


func _process(delta):
	if Input.is_action_just_pressed("fire"):
		if GlobalVariables.bulletInstanceCount < 3:
			var bulletInstance = bullet.instance()
			bulletInstance.position = Vector2(position.x, position.y-60)
			get_tree().get_root().add_child(bulletInstance)
	if GlobalVariables.enemynumber >= 30:
		get_tree().change_scene("res://Win and Loss/Win.tscn")


func _colliding(area):
	if area.is_in_group("left"):
		print("left")
		set_position($Area2D.get_position() + Vector2(90,627))
	if area.is_in_group("right"):
		print("right")
		set_position($Area2D.get_position() + Vector2(1198,627))


func _not_colliding(area):
	pass
