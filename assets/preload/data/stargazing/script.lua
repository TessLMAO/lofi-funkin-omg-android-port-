function onCreate()
	makeLuaSprite('ske', 'W3R/ske', -800, -770);
	setLuaSpriteScrollFactor('ske', 0.9, 0.9);
  doTweenColor('ske', 'ske', '2B4A9C', 0.5, 'circOut');
  doTweenColor('iconP1', 'iconP1', '0046FF', 0.5, 'circOut');
  doTweenColor('iconP2', 'iconP2', '0046FF', 0.5, 'circOut');
  scaleObject('ske', 5, 5);

  makeAnimatedLuaSprite('Stars', 'W3R/Stars', -900, -770)
  addAnimationByPrefix('Stars', 'idle', 'SuperStars', 24, true)
  setLuaSpriteScrollFactor('Stars', 0.8, 0.9);
  setProperty('Stars.alpha', 0.3);
  scaleObject('Stars', 9.9, 5.5);

  makeLuaSprite('Ground', 'W3R/Ground', -800, -770);
	setLuaSpriteScrollFactor('Ground', 0.9, 0.9);
  scaleObject('Ground', 5, 5);

  makeLuaSprite('Perez1', 'Perez1', -1700, -770);
	setLuaSpriteScrollFactor('Perez1', 1.1, 0.8);
  setProperty('Perez1.alpha', 0.9);
  scaleObject('Perez1', 4.5, 2.5);

  makeLuaSprite('lofi_car', 'W3/lofi_car', -1000, -615);
	setLuaSpriteScrollFactor('lofi_car', 0.9, 0.9);
  scaleObject('lofi_car', 4.8, 4.8);
	
	addLuaSprite('ske', false);
  addLuaSprite('Stars', false);
  addLuaSprite('Ground', false);
  addLuaSprite('lofi_car', false);
  addLuaSprite(name_of_character1, foreground);
  addLuaSprite('Perez1', false);
end

function onCreatePost()
  setProperty('gf.visible',false)
end