-- Factory backbone control set
function BuiltEntity(event)

	
-- spawn light addon
	if event.created_entity.name == "factory-backbone" then	
		local e = event.created_entity
		local s = e.surface
		local X = e.position.x
		local Y = e.position.y

			local l = s.create_entity{name = "backbone-light", position = {X,Y}, force= e.force}
						l.destructible = false

	end
	-- spawn light addon 2
	if event.created_entity.name == "factory-backbone-2" then	
		local e = event.created_entity
		local s = e.surface
		local X = e.position.x
		local Y = e.position.y

			local l = s.create_entity{name = "backbone-light-2", position = {X,Y}, force= e.force}
						l.destructible = false

	end
-- spawn logistic addon
	if event.created_entity.name == "factory-backbone" then	
		local e = event.created_entity
		local s = e.surface
		local X = e.position.x
		local Y = e.position.y

			local l = s.create_entity{name = "backbone-logistics", position = {X,Y}, force= e.force}
						l.destructible = false

	end
	-- spawn logistic addon 2
	if event.created_entity.name == "factory-backbone-2" then	
		local e = event.created_entity
		local s = e.surface
		local X = e.position.x
		local Y = e.position.y

			local l = s.create_entity{name = "backbone-logistics-2", position = {X,Y}, force= e.force}
						l.destructible = false

	end
	-- spawn radar addon
	if event.created_entity.name == "factory-backbone-2" then	
		local e = event.created_entity
		local s = e.surface
		local X = e.position.x
		local Y = e.position.y

			local l = s.create_entity{name = "backbone-radar", position = {X,Y}, force= e.force}
						l.destructible = false

	end
	
end

-- remove light addon
function MinedEntity(event)
	if event.entity.name == "factory-backbone" then
	local b = event.entity
	local X = b.position.x 
	local Y = b.position.y
	
		
		lamp =	b.surface.find_entities_filtered{area = {{X -0.5, Y - 0.5 }, {X + 0.5  , Y +0.5 }}, name= "backbone-light"}
		if lamp[1] ~= nil then
		lamp[1].destroy() end
		
	end
	-- remove light addon 2

	if event.entity.name == "factory-backbone-2" then
	local b = event.entity
	local X = b.position.x 
	local Y = b.position.y
	
		
		lamp =	b.surface.find_entities_filtered{area = {{X -1, Y - 1 }, {X + 1  , Y +1 }}, name= "backbone-light-2"}
		if lamp[1] ~= nil then
		lamp[1].destroy() end
		
	end
	
-- remove logistic addon
	if event.entity.name == "factory-backbone" then
	local b = event.entity
	local X = b.position.x 
	local Y = b.position.y


		roboport =	b.surface.find_entities_filtered{area = {{X -0.5, Y - 0.5 }, {X + 0.5  , Y +0.5 }}, name= "backbone-logistics"}
		if roboport[1] ~= nil then
		roboport[1].destroy()	end
end		
-- remove logistic addon 2
	if event.entity.name == "factory-backbone-2" then
	local b = event.entity
	local X = b.position.x 
	local Y = b.position.y


		roboport =	b.surface.find_entities_filtered{area = {{X -1, Y - 1 }, {X + 1  , Y +1 }}, name= "backbone-logistics-2"}
		if roboport[1] ~= nil then
		roboport[1].destroy()	end
end		
-- remove radar addon
	if event.entity.name == "factory-backbone-2" then
	local b = event.entity
	local X = b.position.x 
	local Y = b.position.y


		radar =	b.surface.find_entities_filtered{area = {{X -1, Y - 1 }, {X + 1  , Y +1 }}, name= "backbone-radar"}
		if radar[1] ~= nil then
		radar[1].destroy()	end
end		
end


script.on_event(defines.events.on_built_entity, BuiltEntity)
script.on_event(defines.events.on_robot_built_entity, BuiltEntity)
script.on_event(defines.events.on_player_mined_entity , MinedEntity)
script.on_event(defines.events.on_entity_died , MinedEntity)
script.on_event(defines.events.on_robot_pre_mined  , MinedEntity)