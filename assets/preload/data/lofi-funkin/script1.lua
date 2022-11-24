-- script by ItsCapp don't steal, it's dumb

-- simply, offsets. they're the numbers in the top left of the character editor
idleoffsets = {'0', '0'} -- I recommend you have your idle offset at 0
leftoffsets = {'0', '0'}
downoffsets = {'0', '0'}
upoffsets = {'0', '0'}
rightoffsets = {'0', '0'}

missleftoffsets = {'-10', '0'}
missdownoffsets = {'-10', '0'}
missupoffsets = {'-2', '0'}
missrightoffsets = {'15', '1'}

-- change all of these to the name of the animation in your character's xml file
idle_xml_name1 = 'Idle'
left_xml_name1 = 'Left'
down_xml_name1 = 'Down'
up_xml_name1 = 'Up'
right_xml_name1 = 'Right'

-- basically horizontal and vertical positions
x_position = 250
y_position = -600

-- scales your character (set to 1 by default)
xScale = 0.9
yScale = 0.9

-- invisible character (so basically if you wanna use the change character event, you need to make the second character invisible first)
invisible = true

-- pretty self-explanitory
name_of_character1_xml = 'GF2'
name_of_character1 = 'GF2'
name_of_notetype = 'Jugador 1'
name_of_notetype2 = 'Jugador 1'

-- if it's set to true the character appears behind the default characters, including gf, watch out for that
foreground = true
playablecharacter = false -- change to 'true' if you want to flipX

function onCreate()
	makeAnimatedLuaSprite(name_of_character1, 'characters/' .. name_of_character1_xml, x_position, y_position);

	addAnimationByPrefix(name_of_character1, 'idle', idle_xml_name1, 24, false);
	addAnimationByPrefix(name_of_character1, 'singLEFT', left_xml_name1, 24, false);
	addAnimationByPrefix(name_of_character1, 'singDOWN', down_xml_name1, 24, false);
	addAnimationByPrefix(name_of_character1, 'singUP', up_xml_name1, 24, false);
	addAnimationByPrefix(name_of_character1, 'singRIGHT', right_xml_name1, 24, false);
	scaleObject(name_of_character1, xScale, yScale);
	setObjectOrder(name_of_character1, 5);

	objectPlayAnimation(name_of_character1, 'idle');
	addLuaSprite(name_of_character1, foreground);

	if invisible == true then
		setPropertyLuaSprite(name_of_character1, 'alpha', 0)
	end
end

local singAnims = {"singLEFT", "singDOWN", "singUP", "singRIGHT"}
function opponentNoteHit(id, direction, noteType, isSustainNote)
	if noteType == name_of_notetype or noteType == name_of_notetype2 then
		objectPlayAnimation(name_of_character1, singAnims[direction + 1], false);

		if direction == 0 then
			setProperty(name_of_character1 .. '.offset.x', leftoffsets[1]);
			setProperty(name_of_character1 .. '.offset.y', leftoffsets[2]);

			if isSustainNote then
				objectPlayAnimation(name_of_character1, singAnims[direction + 1], true);
			end
		elseif direction == 1 then
			setProperty(name_of_character1 .. '.offset.x', downoffsets[1]);
			setProperty(name_of_character1 .. '.offset.y', downoffsets[2]);

			if isSustainNote then
				objectPlayAnimation(name_of_character1, singAnims[direction + 1], true);
			end
		elseif direction == 2 then
			setProperty(name_of_character1 .. '.offset.x', upoffsets[1]);
			setProperty(name_of_character1 .. '.offset.y', upoffsets[2]);

			if isSustainNote then
				objectPlayAnimation(name_of_character1, singAnims[direction + 1], true);
			end
		elseif direction == 3 then
			setProperty(name_of_character1 .. '.offset.x', rightoffsets[1]);
			setProperty(name_of_character1 .. '.offset.y', rightoffsets[2]);

			if isSustainNote then
				objectPlayAnimation(name_of_character1, singAnims[direction + 1], true);
			end
		end
	end
end
-- I know this is messy, but it's the only way I know to make it work on both sides.
local singAnims = {"singLEFT", "singDOWN", "singUP", "singRIGHT"}
function goodNoteHit(id, direction, noteType, isSustainNote)
	if noteType == name_of_notetype then
		objectPlayAnimation(name_of_character1, singAnims[direction + 1], false);

		if direction == 0 then
			setProperty(name_of_character1 .. '.offset.x', leftoffsets[1]);
			setProperty(name_of_character1 .. '.offset.y', leftoffsets[2]);
		elseif direction == 1 then
			setProperty(name_of_character1 .. '.offset.x', downoffsets[1]);
			setProperty(name_of_character1 .. '.offset.y', downoffsets[2]);
		elseif direction == 2 then
			setProperty(name_of_character1 .. '.offset.x', upoffsets[1]);
			setProperty(name_of_character1 .. '.offset.y', upoffsets[2]);
		elseif direction == 3 then
			setProperty(name_of_character1 .. '.offset.x', rightoffsets[1]);
			setProperty(name_of_character1 .. '.offset.y', rightoffsets[2]);
		end
	end
end

local singAnims = {"singLEFTmiss", "singDOWNmiss", "singUPmiss", "singRIGHTmiss"}
function noteMiss(id, direction, noteType, isSustainNote)
	if noteType == name_of_notetype then
		objectPlayAnimation(name_of_character1, singAnims[direction + 1], false);

		if direction == 0 then
			setProperty(name_of_character1 .. '.offset.x', missleftoffsets[1]);
			setProperty(name_of_character1 .. '.offset.y', missleftoffsets[2]);
		elseif direction == 1 then
			setProperty(name_of_character1 .. '.offset.x', missdownoffsets[1]);
			setProperty(name_of_character1 .. '.offset.y', missdownoffsets[2]);
		elseif direction == 2 then
			setProperty(name_of_character1 .. '.offset.x', missupoffsets[1]);
			setProperty(name_of_character1 .. '.offset.y', missupoffsets[2]);
		elseif direction == 3 then
			setProperty(name_of_character1 .. '.offset.x', missrightoffsets[1]);
			setProperty(name_of_character1 .. '.offset.y', missrightoffsets[2]);
		end
	end
end
function onBeatHit()
	-- triggered 4 times per section
	if curBeat % 2 == 0 then
		objectPlayAnimation(name_of_character1, 'idle');
		setProperty(name_of_character1 .. '.offset.x', idleoffsets[1]);
		setProperty(name_of_character1 .. '.offset.y', idleoffsets[2]);
	end
end

function onStepHit()
	if curStep == 7280 then
		doTweenX(name_of_character1, name_of_character1, -1, 0)
		doTweenAlpha(name_of_character1, name_of_character1, 0.6, 0.9)
	end
	if curStep == 7552 then
		doTweenX(name_of_character1, name_of_character1, -1, 0)
		doTweenAlpha(name_of_character1, name_of_character1, 0, 0.9)
	end
end

function onCountdownTick(counter)
	-- counter = 0 -> "Three"
	-- counter = 1 -> "Two"
	-- counter = 2 -> "One"
	-- counter = 3 -> "Go!"
	if counter % 2 == 0 then
			objectPlayAnimation(name_of_character1, 'idle');
			setProperty(name_of_character1 .. '.offset.x', idleoffsets[1]);
			setProperty(name_of_character1 .. '.offset.y', idleoffsets[2]);
		end
	end