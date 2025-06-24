extends CharacterBody2D

var MAX_SPEED = 200

const DASH = 400


func _ready():
	pass
	
func _process(delta):
	var dashing = Input.get_action_strength("dash")

	var movement_vector = get_movement_vector()
	var direction = movement_vector.normalized()
	if(dashing != 0):
		MAX_SPEED=700
	else:
		MAX_SPEED=200
	velocity = direction*MAX_SPEED
	move_and_slide()

	
func get_movement_vector():
	var movement_vector = Vector2.ZERO
	
	var x_movement = Input.get_action_strength("right")-Input.get_action_strength("left")
	var y_movement = Input.get_action_strength("down")-Input.get_action_strength("up")
	
	return Vector2(x_movement,y_movement)
	
	
