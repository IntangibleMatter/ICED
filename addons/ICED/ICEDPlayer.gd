extends Node
class_name IcedPlayer

var cutsceneObjects : Dictionary setget getCutsceneObjects

var actionComplete := false

var cutscene := """
!start
end
"""

var cutsceneActions : Dictionary = {}
var activeActionSection := ""
var activeActionIndex := 0

var tweens : Array = []

var savedataStorage : Dictionary

func _ready() -> void:
	pass

func getCutsceneObjects(cutsceneObjects: Dictionary) -> void:
	cutsceneObjects = get_tree().current_scene.ICEDSceneManager.cutsceneObjects

func loadCutcene(script_name: String) -> void:
	#open cutscene
	var path = "res://assets/cutscenes/%s.cut" % script_name
	var file = File.new()
	if not file.file_exists(path):
		print("File '%s' not found" %script_name)
		return
	
	file.open(path, file.READ)

	cutscene = file.get_as_text()
	
	# Split up cutscene
	var cutsceneSplitChunks := []
	cutsceneSplitChunks = cutscene.split("!")
	for chunk in cutsceneSplitChunks:
		var cutsceneChunks : Array = chunk.split("\n")
		cutsceneActions[cutsceneChunks.pop_front().strip_edges()] = cutsceneChunks
	
	cutsceneBegin()


func cutsceneBegin() -> void:
	cutsceneAction("Hey")
	

func cutsceneAction(action: String):
	actionComplete = false
	var actionParams := action.split(";")



## Cutscene Actions

func cut_say(params: Array) -> void:
	"""
	Param 0: Cutscene Object: String
	Param 1: Translation key to be passed through `tr()`: String
	Param 2: Sound to be played when `say()` begins: String (name of sound)
	"""
	pass

func cut_tween(params: Array) -> void:
	"""
	Param 0: Cutscene Object: String
	Param 1: Property: Float
	Param 2: Value to be tween'd to. (Tween'd from original value of property): Float
	Param 3: Time taken by Tween: float
	Param 4: Transition Type: int (Look at https://docs.godotengine.org/en/stable/classes/class_tween.html#enum-tween-transitiontype to see the int to use)
	Param 5: Ease Type: int (look at https://docs.godotengine.org/en/stable/classes/class_tween.html#enum-tween-easetype for int to use)
	"""
	var i = tweens.size()
	tweens.append(Tween.new())
	add_child(tweens[i])

	tweens[i].connect("tween_completed", tweens[i], "queue_free")
	tweens[i].interpolate_property(cutsceneObjects[params[0]], params[1], null, float(params[2]), float(params[3]), int(params[4]), int(params[5]))

func cut_setvar(params: Array) -> void:
	pass