tool
extends Control

onready var graphEdit := $GraphEdit
onready var addNode := $GraphEdit/AddNode

var nodeTypes := {
	0: "Choice",
	1: "Cinebars",
	2: preload("res://addons/ICED/nodes/NodeIfElse.tscn"),
	3: preload("res://addons/ICED/nodes/NodePlayAnimation.tscn"),
	4: "PlayMusic",
	5: preload("res://addons/ICED/nodes/NodePlaySound.tscn"),
	6: preload("res://addons/ICED/nodes/NodeSay.tscn"),
	7: "set property",
	8: "set variable",
	9: "Spawn",
	10: "wait"
}

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func _on_AddNode_index_pressed(index:int):
	var node : GraphNode = nodeTypes[index].instance()
	node.offset = get_local_mouse_position()
	graphEdit.add_child(node)




func _on_GraphEdit_gui_input(event:InputEvent):
	if event is InputEventMouseButton and event.button_index == 2 and event.pressed:
		addNode.set_position(event.position)
		addNode.popup()
		print("AAAAAAAAAA")
