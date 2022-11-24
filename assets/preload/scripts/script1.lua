function onCreate()
makeLuaSprite('lofi-funkin_down', 'lofi-funkin_down', 0, 0);
setProperty('lofi-funkin_down.x', 0); setProperty('lofi-funkin_down.y', downscroll and 0 or -660); setTextSize('lofi-funkin_down', 20)
setObjectCamera('lofi-funkin_down', 'HUD');
scaleObject('lofi-funkin_down', 1, 1);
addLuaSprite('lofi-funkin_down', true);

makeLuaSprite('Perez-Sen', 'Perez-Sen', 0, 0);
setProperty('Perez-Sen.x', 600); setProperty('Perez-Sen.y', downscroll and -520 or 150); setTextSize('Perez-Sen', 20)
setObjectCamera('Perez-Sen', 'HUD');
scaleObject('Perez-Sen', 0.8, 0.8);
addLuaSprite('Perez-Sen', true); 

end