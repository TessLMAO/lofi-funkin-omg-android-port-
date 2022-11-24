local angleshit = 1.0,9;
local anglevar = 0;
function onEvent(name,value1)
		if name == 'Camara 360 Grados' then 
			if value1 == '1' then
				setProperty('camGame.angle',angleshit*360)
				doTweenAngle('camGame', 'camGame', angleshit, stepCrochet*1.0, 'RIGHTloop')
		  end
	 end
end				