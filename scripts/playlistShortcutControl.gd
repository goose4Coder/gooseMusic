extends HBoxContainer


# Called when the node enters the scene tree for the first time.
func _initialize(playlist_to_shortcut):
	get_node("NameLabel").text=playlist_to_shortcut.get_basic_info()["name"]
	get_node("Button")._initialize("res://screens/PlaylistViewScreen.tscn", "Play")
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
