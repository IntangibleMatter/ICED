extends Control

onready var GraphEdit := $GraphEdit
onready var AddNode := $GraphEdit/AddNode

var nodeTypes := {
	0: preload("res://addons/ICED/nodes/NodeSay.tscn"),
	1: preload("res://addons/ICED/nodes/NodeIfElse.tscn"),
	2: preload("res://addons/ICED/nodes/NodePlayAnimation.tscn"),
	3: preload("res://addons/ICED/nodes/NodePlaySound.tscn")
}

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func _on_AddNode_index_pressed(index:int):
	var node : GraphNode = nodeTypes[index].instance()
	node.offset = get_local_mouse_position()
	GraphEdit.add_child(node)




func _on_GraphEdit_gui_input(event:InputEvent):
	if event is InputEventMouseButton and event.button_index == 2 and event.pressed:
		AddNode.set_position(event.position)
		AddNode.popup()
		print("AAAAAAAAAA")
