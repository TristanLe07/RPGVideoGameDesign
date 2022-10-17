extends Button

signal set_connection_type

func _on_JoinButton_pressed():
	if $IP.text.is_valid_ip_address():
		join()
	else:
		$InvalidIP.show()

func join():
	Net.initialize_client($IP.text)
	emit_signal("set_connection_type", false)
