extends Area2D

var textureRect

func _ready():
	textureRect = get_node("/root/Control/TextureRect") # Adjust the path as needed
	textureRect.visible = false

func _on_Area2D_body_entered(body):
	if body.name == "Player":
		textureRect.visible = true

func _on_Area2D_body_exited(body):
	if body.name == "Player":
		textureRect.visible = false
