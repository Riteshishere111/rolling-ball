extends RigidBody3D

@export var move_force := 20.0

func _physics_process(delta):

	#var cam = get_parent().get_node("Camera3D")
	var cam = get_parent().get_node("CameraPView/Camera3D")

	var forward = -cam.global_transform.basis.z
	var right = cam.global_transform.basis.x

	var direction = Vector3.ZERO

	if Input.is_action_pressed("ui_up"):
		direction += forward

	if Input.is_action_pressed("ui_down"):
		direction -= forward

	if Input.is_action_pressed("ui_right"):
		direction += right

	if Input.is_action_pressed("ui_left"):
		direction -= right

	direction.y = 0
	direction = direction.normalized()

	apply_central_force(direction * move_force)
