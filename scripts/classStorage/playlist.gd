


var name=""
var compositions=[]

# Called when the node enters the scene tree for the first time.
func _init(name_to_set:String, compositions_to_set):
	self.name=name_to_set
	self.compositions=compositions_to_set
	
	

func get_basic_info():
	var first_songs_names="In this playlist: "
	if len(self.compositions)<4:
		for i in range(0,len(self.compositions)):
			first_songs_names+=compositions[i].get_basic_info()["name"]+" & "
		first_songs_names=first_songs_names.left(len(first_songs_names)-3)
	else:
		for i in range(0,4):
			first_songs_names+=compositions[i].get_basic_info()["name"]+" & "
		first_songs_names+="more!"
			
	return {"name":self.name,"first_songs":first_songs_names}
	
	
