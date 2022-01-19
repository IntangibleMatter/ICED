extends GraphNode


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	set_slot(0, true, 0, Color8(255,255,255), true, 0, Color8(255,255,255))
	print("PLAYSOUND")


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_PlaySound_close_request():
	queue_free()
