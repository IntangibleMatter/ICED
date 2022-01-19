extends GraphNode


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# # Called when the node enters the scene tree for the first time.
# func _ready():
# 	set_slot(0, true, 0, Color8(255,255,255), true, 0, Color8(0,255,0))
# 	set_slot(1, true, 0, Color8(255,255,255), false, 0, Color8(255,255,255))
# 	set_slot(2, true, 0, Color8(255,255,255), true, 0, Color8(255,0,0))
# 	print("IFELSE")




func _on_IfElse_close_request():
	queue_free()