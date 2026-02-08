extends CharacterBody2D
var last_direction := Vector2(1,0)
#comment
func _physics_process(_delta):  #it NEEEDDDDDDSS TO  be called _physics_process(delta) its COMPULSORYYYY
	var direction = Input.get_vector("move_left","move_right","move_down","move_up")
	move_and_slide()
	if direction.length() > 0:
		last_direction=direction
		play_walk_animation(direction)
	else:
		play_idle_animation(last_direction)
	
func play_walk_animation(direction): 
	if direction.x > 0:
		$AnimatedSprite2D.play("walk_right") #() not [] put your glasses on bruh
	elif direction.x < 0:
		$AnimatedSprite2D.play("walk_left")
	elif direction.y < 0:
		$AnimatedSprite2D.play("walk_down")
	elif direction.y > 0:
		$AnimatedSprite2D.play("walk_up")
		
func play_idle_animation(direction): 
	if direction.x > 0:
		$AnimatedSprite2D.play("idle_right") #() not [] put your glasses on bruh
	elif direction.x < 0:
		$AnimatedSprite2D.play("idle_left")
	elif direction.y < 0:
		$AnimatedSprite2D.play("idle_down")
	elif direction.y > 0:
		$AnimatedSprite2D.play("idle_up")
		
