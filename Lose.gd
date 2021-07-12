extends Control

func _ready():
	for button in $Button.get_children():
		button.connect("pressed", self, "_on_Button_pressed", [button.scene_to_load])
	for button in $Button2.get_children():
		button.connect("pressed", self, "_on_Button_pressed", [button.scene_to_load])

func _on_Button_pressed(scene_to_load):
	print("Changing Scene...")
	print(scene_to_load)
	get_tree().change_scene(scene_to_load)
