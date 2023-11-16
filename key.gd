extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Global.key == true:
		self.visible = true 
	if Global.key == false:
		self.visible = false 


func _on_body_entered(body):
	if body.has_method("collect"):
		Global.key = false
		body.collect()		

	
