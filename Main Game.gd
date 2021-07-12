extends Control

func _ready():
	GlobalVariables.enemynumber = 0
	for button in $HUD.get_children():
		button.connect("pressed", self, "_on_Button_pressed", [button.scene_to_load])


func _on_Button_pressed(scene_to_load):
	print("Changing Scene...")
	get_tree().change_scene(scene_to_load)
