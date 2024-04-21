extends Node2D

var music_player : AudioStreamPlayer

func _ready():
	# Find the AudioStreamPlayer node in the scene
	music_player = $AudioStreamPlayer

func _input(event):
	if event is InputEventKey:
		# Check if the 'M' key is pressed
		if event.scancode == KEY_M:
			toggle_music()

# Toggle music on and off
func toggle_music():
	if music_player.playing:
		music_player.stop()
		print("Music turned off")
	else:
		music_player.play()
		print("Music turned on")


func _on_button_quit_pressed():
	get_tree().quit()


func _on_button_play_pressed():
	get_tree().change_scene_to_file("res://env scene bg/ENV SCENE.tscn")


func _on_options_pressed():
	get_tree().change_scene_to_file("res://how_to_play.tscn")
