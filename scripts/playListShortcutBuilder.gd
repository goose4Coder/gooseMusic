
var playlist_shortcut: PackedScene = preload("res://objects/playlistShortcut.tscn")

# Called when the node enters the scene tree for the first time.
func _build_playlist_shortcut(parent_obj, playlists, position_to_begin: float, position_x:float):
	var position_to_set:float=position_to_begin
	for element in playlists:
		var shortcut=playlist_shortcut.instantiate()
		shortcut._initialize(element)
		shortcut.position.x= position_x
		shortcut.position.y=position_to_set
		parent_obj.add_child(shortcut)
		position_to_set+=20


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
