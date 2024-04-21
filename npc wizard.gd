extends Area2D

var can_interact = false
const DIALOGUE = preload("res://dialogue.tscn")

func _physics_process(_delta):
	$npc_wizard.play()

func _on_Area2D_body_entered(body):
	if body.name == "Player":
		$Label.visible = true
		can_interact = true

func _on_Area2D_body_exited(body):
	if body.name == "Player":
		$Label.visible = false
		can_interact = false

func _input(event):
	if event.is_action_pressed("ui_accept") and can_interact:
		$Label.visible = false 
		var dialogue = DIALOGUE.instance()
		get_parent().add_child(dialogue)



