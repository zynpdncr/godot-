extends Camera2D

# Speed of camera movement
const CAMERA_SPEED = 200

# Called every frame
func _process(delta):
	# Get input axis values for horizontal and vertical movement
	var horizontal_movement = Input.get_action_strength("move_right") - Input.get_action_strength("move_left")
	var vertical_movement = Input.get_action_strength("move_down") - Input.get_action_strength("move_up")

	# Calculate movement vector based on input and speed
	var movement = Vector2(horizontal_movement, vertical_movement).normalized() * CAMERA_SPEED * delta

	# Move the camera
	position += movement
