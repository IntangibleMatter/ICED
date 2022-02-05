tool
extends EditorPlugin


func _enter_tree() -> void:
	add_custom_type("Node", "ICEDSceneManager", preload("ICEDManager.gd"), preload("icons/player.svg"))
	add_custom_type("Node", "ICEDAddToCutsceneObjects", preload("AddToCutsceneObjects.gd"), preload("icons/add.svg"))


func _exit_tree():
	remove_custom_type("ICEDSceneManager")
	remove_custom_type("ICEDAddToCutsceneObjects")
