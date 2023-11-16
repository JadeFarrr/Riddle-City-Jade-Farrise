extends Area2D
@onready var sprite: Sprite2D = get_node("SecurityG")
var og_pos
var dir = 1
var steps = 400
var speed = 9

func _ready():
	og_pos = position.x 
	print("og pos", og_pos)

func _process(delta):
	print(position.x)
	
	position.x = position.x  + (speed*dir)
	
	if position.x > og_pos + steps:
		dir = -1
		sprite.flip_h = false
	elif position.x < og_pos - steps: 
		dir = 1
		sprite.flip_h = true 

func _on_body_exited(body):
	if body.has_method("delete"):
		Global.key = true 
		body.delete()
