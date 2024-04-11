extends CharacterBody2D


const SPEED = 600.0
const Bullet_scene = preload("res://scenes/bullet_1.tscn") 
func _physics_process(delta):
	if Input.is_action_pressed("ui_fire"):
		fire()
	
	var directiony = Input.get_axis("ui_up", "ui_down")
	if directiony:
		velocity.y = directiony * SPEED
	else:
		velocity.y = move_toward(velocity.x, 0, SPEED)
		
	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var directionx = Input.get_axis("ui_left", "ui_right")
	if directionx:
		velocity.x = directionx * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()
func fire():
	print("i am are fire")
	var bullet = Bullet_scene.instantiate()
	bullet.global_position = global_position + Vector2(0,-20)
	add_child(bullet)
	
