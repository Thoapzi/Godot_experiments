extends Area2D

var speed = 1
var tempElapsed = 0
func _ready():
	set_process(true)

func _process(delta):
	if( tempElapsed > 0.001 ):
		translate(Vector2(delta+speed, 0))
		tempElapsed = 0
	if(self.get_pos().x > 1024):
		queue_free()
	tempElapsed += delta