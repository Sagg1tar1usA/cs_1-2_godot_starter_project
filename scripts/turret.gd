extends CharacterBody2D
var projectile_original = preload("res://scenes/enemy_projectile.tscn")
var direction
var speed = 300
var xDirection = 0
var yDirection = 0 
var facing 
var projectile_clone = projectile_original.instantiate()

func _ready():
	pass
func _process(delta: float) -> void:0
pass

func shoot (body):
	projectile_clone.global_position = position + offset
	projectile_clone.set_direction(facing)
	get_tree().get_root().add_child(projectile_clone)
	pass
func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.name == "player":
		shoot (body)
		# Replace with function body.


func _on_area_2d_body_exited(body: Node2D) -> void:
	pass # Replace with function body.
