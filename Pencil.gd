extends "res://Inherit.gd"

var velocity = Vector2(0 , 0);
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
func _physics_process(delta):
	velocity.y += Gravity;
	move_and_slide(velocity);
	velocity.x = 0;
	if Input.is_action_pressed("ui_right"):
		velocity.x = 200; 
	if Input.is_action_pressed("ui_left"):
		velocity.x = -200; 
	if Input.is_action_just_pressed("ui_up"):
		velocity.y = -800;
