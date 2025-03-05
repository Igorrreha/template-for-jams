extends Control


signal showing_started
signal showing_completed


var _is_showing_started: bool


func complete_showing() -> void:
	showing_completed.emit()


func _input(event: InputEvent) -> void:
	if not _is_showing_started\
	and event.is_action_pressed("ui_accept"):
		_is_showing_started = true
		showing_started.emit()
