extends Node3D

@export var target: RigidBody3D

var offset = Vector3(0, 8, 12)

func _process(delta):
	if target:
		global_position = global_position.lerp(target.global_position + offset, 20.0 * delta)
		look_at(target.global_position)
