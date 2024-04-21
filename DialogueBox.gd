extends Control

var dialogue = [
	"Greetings, Zarya.",
	"I know you've been searching for your sister.",
	"Unfortunately, Flora has been captured by a dark sorcerer named Nefarion from the Forsaken Vale. Flora comes from a long line of ancient shamans, which gives her special abilities connected to nature and spirits.",
	"Nefarion wants to steal Flora's powers using a nasty ritual. You need to act quickly to save her. On your journey, you'll encounter tough enemies and find chests filled with helpful items. Take what you need, because danger lies ahead.",
	"Good luck on your quest, Zarya."
]

var dialogue_index = 0
var finished = false

func _ready():
	load_dialogue()

func _physics_process(_delta):
	$Ind.visible = finished
	if Input.is_action_just_pressed("ui_accept"):
		load_dialogue()

func load_dialogue():
	if dialogue_index < dialogue.size():
		finished = false
		$RichTextLabel.bbcode_text = dialogue[dialogue_index]
		$RichTextLabel.percent_visible = 0
		$Tween.interpolate_property(
			$RichTextLabel, "percent_visible", 0, 1, 1,
			Tween.TRANS_LINEAR, Tween.EASE_IN_OUT
		)
		$Tween.start()
	else: 
		queue_free()
	dialogue_index += 1

func _on_Tween_tween_completed(_object, _key):
	pass # Replace with function body.
	finished = true
