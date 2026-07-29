extends RigidBody3D
@export var move_force := 20.0 
func _physics_process(delta):
	var direction = Vector3.ZERO
	
	if Input.is_action_pressed("ui_right"):
		direction.x+= 1
	
	elif Input.is_action_pressed("ui_left"):
		direction.x+= -1
	
	elif Input.is_action_pressed("ui_up"):
		direction.z-= 1
	
	elif Input.is_action_pressed("ui_down"):
		direction.z+= 1
	
	elif direction!= Vector3.ZERO:
		apply_central_force()direction.normalized()*move_force
		
