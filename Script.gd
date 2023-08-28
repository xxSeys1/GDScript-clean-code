extends CharacterBody3D

@export var fps_camera: Camera3D

var default_speed: float = 1.0
var running_speed: int = 3
var current_speed: int = 0
var default_fov: int = 75

const BAR_ARG1: int = 1
const BAR_ARG2: int = 3

var acceleration: int = 4

var dialogue_bits: Array[String] = ["Hello", 
	"World", 
	"this", 
	"is", 
	"an", 
	"array!"]

var responeses: Array = ["No!",
	1,
	"Yes",
	"LMAO WTF",
	"Ok sure!"
]


# This is a comment
func _physics_process(delta: float):
	fps_camera.fov = default_fov
	fps_camera.current = true
	
	velocity = calculate_movement_speed()
	
	safe_margin = bar(BAR_ARG1, BAR_ARG2)


func calculate_movement_speed() -> Vector3:
	return Vector3(default_speed * acceleration, 0, 0) # This is a comment as well


func bar(arg1: int, arg2: float) -> float:
	return arg1 + arg2
