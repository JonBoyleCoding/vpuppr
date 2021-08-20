class_name BaseElement
extends PanelContainer

signal event(args)

var label_text: String
var event_name: String
var data_bind: String

var parent

###############################################################################
# Builtin functions                                                           #
###############################################################################

###############################################################################
# Connections                                                                 #
###############################################################################

###############################################################################
# Private functions                                                           #
###############################################################################

###############################################################################
# Public functions                                                            #
###############################################################################

func get_value():
	AppManager.log_message("%s.get_value() not implemented" % self.name)
	return null

func set_value(_value) -> void:
	AppManager.log_message("%s.set_value() not implemented" % self.name)

func setup() -> void:
	if data_bind:
		var data = AppManager.cm.current_model_config.get(data_bind)
		if data:
			set_value(data)
			return
		data = AppManager.cm.metadata_config.get(data_bind)
		if data:
			set_value(data)
			return
