function onCreate()
	makeLuaSprite('ske', 'W3R/ske', -800, -770);
	setLuaSpriteScrollFactor('ske', 0.9, 0.9);
  scaleObject('ske', 5, 5);

  makeLuaSprite('Ground', 'W3R/Ground', -800, -770);
	setLuaSpriteScrollFactor('Ground', 0.9, 0.9);
  scaleObject('Ground', 5, 5);

  makeLuaSprite('lofi_car', 'W3/lofi_car', -1000, -615);
	setLuaSpriteScrollFactor('lofi_car', 0.9, 0.9);
  scaleObject('lofi_car', 4.8, 4.8);

	addLuaSprite('ske', false);
  addLuaSprite('Ground', false);
  addLuaSprite('lofi_car', false);
	
	close(true);
end