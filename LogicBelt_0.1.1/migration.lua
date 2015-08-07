function migrate(old_version, new_version)
	if old_version == nil then --pre 0.1.0
		global.logicBelts.cbelts = {}
	end
	global.logicBelts.version = new_version
	game.player.print("LogicBelts updated to v" .. new_version)
end