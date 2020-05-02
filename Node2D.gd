extends Node2D
onready var PlayerNode = get_owner()

func _ready():
	print(PlayerNode)
	PlayerNode.connect("gameOver", self, "doSomething")
	pass

func doSomething():
	print('Game is Over Do Something ')
