

var name =""

func _init(name_to_set:String):
	self.name=name_to_set

func get_basic_info():
	return {"name":name}
