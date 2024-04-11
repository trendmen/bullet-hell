extends CharacterBody2D
const SPEED = 600.0

func _physics_process(delta):
	move_and_collide(Vector2.UP * SPEED * delta)


func _on_visible_on_screen_notifier_2d_screen_exited():
	queue_free()
