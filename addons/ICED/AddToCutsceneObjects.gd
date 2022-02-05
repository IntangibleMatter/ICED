extends Node
class_name addToCutsceneObjects, "icons/add.svg"

export var objectName := ""

signal addToCutsceneObjects(objName, path)

func _ready():
	emit_signal("addToCutsceneObjects", objectName, @"..")