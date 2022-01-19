tool
extends EditorPlugin

var dock = preload("ICED_Dock.tscn")

func _enter_tree() -> void:
	dock = dock.instance()
	add_custom_type("Node", "ICEDManager", preload("ICEDManager.gd"), preload("icons/player.svg"))
	add_control_to_bottom_panel(dock, "ICED")
	make_bottom_panel_item_visible(dock)


func _exit_tree():
	remove_control_from_bottom_panel(dock)
	remove_custom_type("ICEDManager")
