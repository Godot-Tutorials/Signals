# Name in Scene: Player
# node Type: Sprite
extends Sprite
signal healthChanged

var check: int = 0
var playerHealth: int = 100

func _process(deltaTime):
	if check < 1:
		check = check + 1
		changeHealth(-100)

func changeHealth(value):
	playerHealth = playerHealth + value
	emit_signal("healthChanged", playerHealth)
	
