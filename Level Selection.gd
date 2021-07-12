extends Control

func _ready():
	for button in $"Return".get_children():
		button.connect("pressed", self, "_on_Button_pressed", [button.scene_to_load])
	for button in $"Levels 1st row/L1".get_children():
		button.connect("pressed", self, "_on_Button_pressed", [button.scene_to_load])
	for button in $"Levels 1st row/L2".get_children():
		button.connect("pressed", self, "_on_Button_pressed", [button.scene_to_load])
	for button in $"Levels 1st row/L3".get_children():
		button.connect("pressed", self, "_on_Button_pressed", [button.scene_to_load])
	for button in $"Levels 1st row/L4".get_children():
		button.connect("pressed", self, "_on_Button_pressed", [button.scene_to_load])
		
	for button in $"Levels 2nd row/L5".get_children():
		button.connect("pressed", self, "_on_Button_pressed", [button.scene_to_load])
	for button in $"Levels 2nd row/L6".get_children():
		button.connect("pressed", self, "_on_Button_pressed", [button.scene_to_load])
	for button in $"Levels 2nd row/L7".get_children():
		button.connect("pressed", self, "_on_Button_pressed", [button.scene_to_load])
	for button in $"Levels 2nd row/L8".get_children():
		button.connect("pressed", self, "_on_Button_pressed", [button.scene_to_load])
	GlobalVariables.bulletInstanceCount = 0

func _on_Button_pressed(scene_to_load):
	print("Changing Scene...")
	print(scene_to_load)
	get_tree().change_scene(scene_to_load)
