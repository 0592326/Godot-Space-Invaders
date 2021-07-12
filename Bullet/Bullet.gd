extends KinematicBody2D

var speed = 900
export (int) var health = 1

func _ready():
	GlobalVariables.bulletInstanceCount += 1
	set_physics_process(true)

func _physics_process(delta):
	var collidedObject = move_and_collide(Vector2(0, -speed * delta))
	if (collidedObject):
		if "Enemy" in collidedObject.collider.name:                             #If enemy is hit
			collidedObject.get_collider().hit()
		queue_free()                                                            #Delete bullet
		GlobalVariables.bulletInstanceCount -= 1
	print (GlobalVariables.enemynumber)

func _colliding(area):
	if area.is_in_group("top"):
		queue_free()
		GlobalVariables.bulletInstanceCount -= 1
