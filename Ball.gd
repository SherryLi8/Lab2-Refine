extends CSGSphere3D
signal ball_hit_ground

var speed: float = -0.02
var targetPosition: float = -0.336
var isBouncing: bool = false 

# Called when the node enters the scene tree for the first time.
func _ready():
	position = Vector3(2, 1, 1)
	targetPosition = -0.336

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	# Check for user input
	if Input.is_action_pressed("ui_accept"):
		move_up()
	else:
		move_down()

# Custom function to move the ball up
func move_up():
	position.y += abs(speed)

   
	if position.y > 2.0:
		position.y = 2.0
		isBouncing = true

# Custom function to move the ball down
func move_down():
	if isBouncing:
		speed = -abs(speed)
		isBouncing = false
	else:
		position.y += speed
		if position.y <= 0.0:
			emit_signal("ball_hit_ground")
		
