extends Label


func _ready():
	_process (true)

func _process(delta):
	set_text(str (GlobalVariables.score))
