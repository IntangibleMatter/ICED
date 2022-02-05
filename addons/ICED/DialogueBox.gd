extends Node2D


onready var boundingBox := $BoundingBox
onready var boxBG := $BoundingBox/BoxBG
onready var textBox := $BoundingBox/BoxBg/TextBox


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func _setup_box(text: String, camera_topleft: Vector2) -> void:
	if global_position.x - camera_topleft.x < camera_topleft.x + get_viewport_rect().size.x - camera_topleft.x:
		boundingBox.size.x = global_position.x - camera_topleft.x