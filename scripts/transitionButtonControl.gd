extends Button


var scene_to_change_to:String = ""
var button_text:String = ""

#func _ready():
	

func _on_click():
	get_tree().change_scene_to_file(scene_to_change_to)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _initialize(scene_to_set, text_to_set):
	self.scene_to_change_to=scene_to_set
	self.button_text=text_to_set
	pressed.connect(self._on_click)
	text=button_text

	
