extends "res://Scripts/Inherit.gd"

var velocity = Vector2(0 , 0);
export var sidespeed = 50;
export var maxspeed = 400;
export var jumpimpulse = 1000;

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _physics_process(delta):
	velocity.y += Gravity;
	move_and_slide(velocity);
	
	velocity.x /= 1.1;
	
	if Input.is_action_pressed("ui_right"):
		velocity.x += sidespeed; 
	elif Input.is_action_pressed("ui_left"):
		velocity.x -= sidespeed; 
	
	if velocity.x>maxspeed :
		velocity.x = maxspeed;
	elif velocity.x<-maxspeed :
		velocity.x = -maxspeed;
	
	if Input.is_action_just_pressed("ui_up"):
		velocity.y = -jumpimpulse;
