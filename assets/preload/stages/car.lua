function onCreate()
	makeLuaSprite('ske', 'W3/ske', -800, -770);
	setLuaSpriteScrollFactor('ske', 0.85, 0.85);
  scaleObject('ske', 5, 5);

  makeLuaSprite('cloud1', 'W3/cloud1', -850, -770);
	setLuaSpriteScrollFactor('cloud1', 0.5, 0.5);
  scaleObject('cloud1', 5, 5);

  makeLuaSprite('Ground', 'W3/Ground', -800, -770);
	setLuaSpriteScrollFactor('Ground', 0.7, 0.7);
  scaleObject('Ground', 5, 5);

  makeLuaSprite('lofi_car', 'W3/lofi_car', -1000, -615);
	setLuaSpriteScrollFactor('lofi_car', 0.9, 0.9);
  scaleObject('lofi_car', 4.8, 4.8);

	addLuaSprite('ske', false);
  addLuaSprite('Ground', false);
	addLuaSprite('cloud1', false);
  addLuaSprite('lofi_car', false);
end

function onCreatePost()
  setProperty('gf.visible',false)
end