extends Node3D

@export var target : RigidBody3D
@export var follow_speed := 5.0

func _process(delta):
	if target == null:
		return

	global_position = global_position.lerp(
		target.global_position + Vector3(0, 8, 8),
		follow_speed * delta
	)
