--[[
    SaraHUD (3.4) by Novikond
    Download Link: https://gamebanana.com/mods/371851
    Plz credit me and helpers if use, I NEED MORE GB POINTS HAHAHA... *ehem*
--]]

--[[ Default SaraHUD Settings
    style = 'classicIcons'

    antialiasingLol = true
    hudMiss = false
    HBoverlay = true
    botplHideInfo = true
    infoBop = false
    
    extraInfo = false
    songName = true
    timer = true
    iconPoz = true
    funkyArrow = false
    
    hpBye = false
    timeBarr = false
    hideInfo = false

    wowCFont = false
    cFont = 'example.ttf'
--]]

-- Settings --
local pref = {
    style ='classicIcons', --classicTxt, --classicIcons, --modern, --cherry

    antialiasingLol = true, --antialiasing for text things
    hudMiss = false, --purple miss animation for some hud stuff
    HBoverlay = true, --health bar overlay
    botplHideInfo = true, --when you use botplay, it hide info
    infoBop = false, --"score text zoom on hit", but with new info
    
    extraInfo = false, --show your sicks, goods, bads and etc.
    songName = true, --display song name
    timer = true, --display timer
    iconPoz = true, --icons not moving and on corners of health bar
    funkyArrow = false, --arrow, that point where your hp (helpful with "iconPoz" pref) (highly recomended with 'cherry' style)
    
    hpBye = false, --when hp is full, hide health bar
    timeBarr = false, --vanilla time bar (not a timer)
    hideInfo = false, --hide info at all

    wowCFont = false, --enable custom font
    cFont = 'PhantomMuff.ttf' --put in mods/fonts
}
-- bottom text --

-- funni code stuff coming (no touchies)
local hudStuff = {'scoreTxt', 'timeTxt', 'timeBar', 'timeBarBG', 'healthBarOverlay'}

function switchStyle() --styles stuff
    makeLuaText('rating', ': ?'); makeLuaText('misses', ': 0'); makeLuaText('score', ': 0')

    if pref.style == 'classicTxt' then --style without images at all
        setProperty('healthBar.y', downscroll and 68 or 655)

        setTextString('rating', 'Rating: ?'); setTextString('misses', 'Misses: 0'); setTextString('score', 'Score: 0')

        setProperty('rating.x', 15); setProperty('rating.y', downscroll and 20 or 678); setTextSize('rating', 20)
        setProperty('misses.x', 15); setProperty('misses.y', downscroll and 80 or 618); setTextSize('misses', 20)
        setProperty('score.x', 15); setProperty('score.y', downscroll and 50 or 648); setTextSize('score', 20)

    end

    if pref.style == 'classicIcons' then --like ckassicTxt, but with info icons
        setProperty('healthBar.y', downscroll and 20 or 585); setProperty('healthBar.x', 3)

        setProperty('rating.x', 52); setProperty('rating.y', downscroll and 22 or 669); setTextSize('rating', 20)
        setProperty('misses.x', 52); setProperty('misses.y', downscroll and 106 or 584); setTextSize('misses', 20)
        setProperty('score.x', 52); setProperty('score.y', downscroll and 64 or 628); setTextSize('score', 20)

        makeLuaSprite('ratingIcon', 'saraHUD/ratingIcon', 10, downscroll and 18 or 665); makeLuaSprite('missesIcon', 'saraHUD/missesIcon', 10, downscroll and 100 or 580); makeLuaSprite('scoreIcon', 'saraHUD/scoreIcon', 10, downscroll and 59 or 623)

        setObjectCamera('ratingIcon', 'hud', true); scaleObject('ratingIcon', 0.7, 0.7)
        setObjectCamera('missesIcon', 'hud', true); scaleObject('missesIcon', 0.7, 0.7)
        setObjectCamera('scoreIcon', 'hud', true); scaleObject('scoreIcon', 0.7, 0.7)

        addLuaSprite('ratingIcon'); addLuaSprite('missesIcon'); addLuaSprite('scoreIcon')
    end

    if pref.style == 'modern' then --changed poz of a lot of stuff
        setProperty('healthBar.y', downscroll and 60 or 660); setProperty('healthBar.x', 110)

        setProperty('rating.x', 851); setProperty('rating.y', downscroll and 36 or 666); setTextSize('rating', 20)
        setProperty('misses.x', 851); setProperty('misses.y', downscroll and 86 or 616); setTextSize('misses', 20)
        setProperty('score.x', 961); setProperty('score.y', downscroll and 86 or 616); setTextSize('score', 20)

        makeLuaSprite('ratingIcon', 'saraHUD/ratingIcon', 810, downscroll and 30 or 660); makeLuaSprite('missesIcon', 'saraHUD/missesIcon', 810, downscroll and 81 or 610); makeLuaSprite('scoreIcon', 'saraHUD/scoreIcon', 920, downscroll and 81 or 610)

        setObjectCamera('ratingIcon', 'hud', true); scaleObject('ratingIcon', 0.7, 0.7)
        setObjectCamera('missesIcon', 'hud', true); scaleObject('missesIcon', 0.7, 0.7)
        setObjectCamera('scoreIcon', 'hud', true); scaleObject('scoreIcon', 0.7, 0.7)

        addLuaSprite('ratingIcon'); addLuaSprite('missesIcon'); addLuaSprite('scoreIcon')
    end

    if pref.style == 'cherry' then --Cherry Style by vCherry.kAI.16 (and Novikond make a bit of changes)
        setProperty('healthBar.y', 350); setProperty('healthBar.x', 960); setProperty('healthBar.angle', 90);

        setProperty('botplayTxt.y', downscroll and 578 or 98);

        setProperty('rating.x', 841); setProperty('rating.y', downscroll and 36 or 666); setTextSize('rating', 20)
        setProperty('misses.x', 841); setProperty('misses.y', downscroll and 86 or 616); setTextSize('misses', 20)
        setProperty('score.x', 951); setProperty('score.y', downscroll and 86 or 616); setTextSize('score', 20)

        makeLuaSprite('ratingIcon', 'saraHUD/ratingIcon', 800, downscroll and 30 or 660); makeLuaSprite('missesIcon', 'saraHUD/missesIcon', 800, downscroll and 81 or 610); makeLuaSprite('scoreIcon', 'saraHUD/scoreIcon', 910, downscroll and 81 or 610)

        setObjectCamera('ratingIcon', 'hud', true); scaleObject('ratingIcon', 0.7, 0.7)
        setObjectCamera('missesIcon', 'hud', true); scaleObject('missesIcon', 0.7, 0.7)
        setObjectCamera('scoreIcon', 'hud', true); scaleObject('scoreIcon', 0.7, 0.7)

        addLuaSprite('ratingIcon'); addLuaSprite('missesIcon'); addLuaSprite('scoreIcon')
    end

    addLuaText('rating'); addLuaText('misses'); addLuaText('score')
end

function songBruh() --song name
    if pref.style == 'classicTxt' or 'classicIcons' then
        makeLuaText('song', '' .. (songName), 500, 388, downscroll and 96 or 618)
        setTextAlignment('song', 'center'); setTextSize('song', 20)
    end
    if pref.style == 'modern' then
        makeLuaText('song', '' .. (songName), 500, 223, downscroll and 82 or 622)
        setTextAlignment('song', 'left'); setTextSize('song', 20)

        makeLuaSprite('songIcon', 'saraHUD/songIcon', 190, downscroll and 80 or 620)
        setObjectCamera('songIcon', 'hud'); scaleObject('songIcon', 0.5, 0.5)
        addLuaSprite('songIcon')
    end
    if pref.style == 'cherry' then
        makeLuaText('song', '' .. (songName), 504, 223, downscroll and 622 or 68)
        setTextAlignment('song', 'right'); setTextSize('song', 13)

        makeLuaSprite('songIcon', 'saraHUD/songIcon', 536, downscroll and 620 or 66)
        setObjectCamera('songIcon', 'hud'); scaleObject('songIcon', 0.4, 0.4)
        addLuaSprite('songIcon')
    end
    addLuaText('song')
end

function timerBruh() --timer
    if pref.style == 'classicTxt' or 'classicIcons' then
        makeLuaText('timer', '', 500, 388, downscroll and 30 or 678)
        setObjectCamera('timer', 'hud'); setTextAlignment('timer', 'center'); setTextSize('timer', 20)
        
    end
    if pref.style == 'modern' then
        makeLuaText('timer', '', 500, 70, downscroll and 82 or 622)
        setObjectCamera('timer', 'hud'); setTextAlignment('timer', 'right'); setTextSize('timer', 20)

        makeLuaSprite('timerIcon', 'saraHUD/timerIcon', 575, downscroll and 80 or 620)
        setObjectCamera('timerIcon', 'hud'); scaleObject('timerIcon', 0.5, 0.5)
        addLuaSprite('timerIcon')
    end
    if pref.style == 'cherry' then
        makeLuaText('timer', '', 500, 227, downscroll and 652 or 32)
        setObjectCamera('timer', 'hud'); setTextAlignment('timer', 'right'); setTextSize('timer', 20)
    
        makeLuaSprite('timerIcon', 'saraHUD/timerIcon', 532, downscroll and 650 or 30)
        setObjectCamera('timerIcon', 'hud'); scaleObject('timerIcon', 0.5, 0.5)
        addLuaSprite('timerIcon')
    end
    addLuaText('timer')
end

function iconsBruh() --icons at corners of health bar
    if pref.style == 'classicTxt' or 'classicIcons' then
        setProperty('iconP1.x', screenWidth - 590)
        setProperty('iconP1.y', downscroll and 25 or 550)
        scaleObject('iconP1', 0.6, 0.6);

        setProperty('iconP2.x', 440)
        setProperty('iconP2.y', downscroll and 25 or 550)
        scaleObject('iconP2', 0.6, 0.6);

    end
    if pref.style == 'modern' then
        setProperty('iconP1.x', screenWidth - 680)
        setProperty('iconP2.x', 50)
    end
    if pref.style == 'cherry' then
        setProperty('iconP1.x', screenWidth - 1005)
        setProperty('iconP2.x', screenWidth - 1105)
    end
end

function HBoverlayBruh() --health bar overlay
    if pref.style == 'classicTxt' or 'classicIcons' then
        makeLuaSprite('healthBarOver', 'saraHUD/healthBarOver', 340, downscroll and 65 or 650)
        setObjectCamera('healthBarOver', 'hud'); setScrollFactor('healthBarOver', 0.9, 0.9); setProperty('healthBarOver.alpha', 0.5)
        setObjectOrder('healthBarOver', 2); setObjectOrder('healthBar', 1); setObjectOrder('healthBarBG', 0)
    end
    if pref.style == 'modern' then
        makeLuaSprite('healthBarOver', 'saraHUD/healthBarOver', 105, downscroll and 55 or 655)
        setObjectCamera('healthBarOver', 'hud'); setScrollFactor('healthBarOver', 0.9, 0.9); setProperty('healthBarOver.alpha', 0.5)
        setObjectOrder('healthBarOver', 2); setObjectOrder('healthBar', 1); setObjectOrder('healthBarBG', 0)
    end
    if pref.style == 'cherry' then
        makeLuaSprite('healthBarOver', 'saraHUD/healthBarOver', 956, 350 - 5)
        setObjectCamera('healthBarOver', 'hud'); setScrollFactor('healthBarOver', 0.9, 0.9); setProperty('healthBarOver.alpha', 0.5)
        setObjectOrder('healthBarOver', 2); setObjectOrder('healthBar', 1); setObjectOrder('healthBarBG', 0)
        setProperty('healthBarOver.angle', 90);
    end
    addLuaSprite('healthBarOver', true)
end

function hudMissBruh() --purple miss animation on health bar, icons and info icons
    setProperty('missesIcon.color', getColorFromHex('5f1ea4'))
	doTweenColor('missesIcon', 'missesIcon', 'FFFFFF', 0.3, 'linear')
	
	setProperty('scoreIcon.color', getColorFromHex('5f1ea4'))
	doTweenColor('scoreIcon', 'scoreIcon', 'FFFFFF', 0.3, 'linear')
	
    setProperty('ratingIcon.color', getColorFromHex('5f1ea4'))
	doTweenColor('ratingIcon', 'ratingIcon', 'FFFFFF', 0.3, 'linear')

	setProperty('healthBar.color', getColorFromHex('5f1ea4'))
	doTweenColor('healthBar', 'healthBar', 'FFFFFF', 0.3, 'linear')

	setProperty('iconP1.color', getColorFromHex('5f1ea4'))
	doTweenColor('iconP1', 'iconP1', 'FFFFFF', 0.3, 'linear')
end

function timeBarBruh() --vanilla time bar
    setProperty('timeBar.visible', true); setProperty('timeBarBG.visible', true) --;setProperty('timeTxt.visible', true)
end

function hideInfoBruh() --hide info
    setProperty('score.visible', false); setProperty('rating.visible', false); setProperty('misses.visible', false)
    setProperty('scoreIcon.visible', false); setProperty('ratingIcon.visible', false); setProperty('missesIcon.visible', false)
end

function infoBopBruh() --info bop effect, you can change some numbers
    setProperty('misses.scale.x', 0.9); setProperty('misses.scale.y', 1.05)
    setProperty('rating.scale.x', 0.9); setProperty('rating.scale.y', 1.05)
    setProperty('score.scale.x', 0.9); setProperty('score.scale.y', 1.05)

    doTweenX('MtextSizeX', 'misses.scale', 1, 0.1, 'linear'); doTweenY('MtextSizeY', 'misses.scale', 1, 0.1, 'linear')
    doTweenX('RtextSizeX', 'rating.scale', 1, 0.1, 'linear'); doTweenY('RtextSizeY', 'rating.scale', 1, 0.1, 'linear')
    doTweenX('StextSizeX', 'score.scale', 1, 0.1, 'linear'); doTweenY('StextSizeY', 'score.scale', 1, 0.1, 'linear')
end

function extraInfoBruh() --extra info, cuz someone needed it
    makeLuaText('sick','', 0, 15, 298); setTextSize('sick', 24); setObjectCamera('sick', 'hud', true)
	makeLuaText('good','', 0, 15, 328); setTextSize('good', 24); setObjectCamera('good', 'hud', true)
	makeLuaText('bad','', 0, 15, 358); setTextSize('bad', 24); setObjectCamera('bad', 'hud', true)
	makeLuaText('shit','', 0, 15, 390); setTextSize('shit', 24); setObjectCamera('shit', 'hud', true)

    addLuaText('sick')
    addLuaText('good')
    addLuaText('bad')
    addLuaText('shit')

    setTextString('sick','Sicks: ' .. getProperty('sicks'))
	setTextString('good','Goods: ' ..getProperty('goods'))
	setTextString('bad','Bads: ' .. getProperty('bads'))
	setTextString('shit','Shits: ' .. getProperty('shits'))
end

function fontBruh()
    setTextFont('rating', pref.cFont); setTextFont('misses', pref.cFont); setTextFont('score', pref.cFont)
    setTextFont('timer', pref.cFont); setTextFont('song', pref.cFont)

    setTextFont('sick', pref.cFont)
    setTextFont('good', pref.cFont)
    setTextFont('bad', pref.cFont)
    setTextFont('shit', pref.cFont)

    setTextFont('HParrow', pref.cFont)
end

function botplayHideBruh() --when you use botplay it hide info stuff
    if (botPlay) then
        setProperty('misses.visible', false); setProperty('rating.visible', false); setProperty('score.visible', false)
        setProperty('missesIcon.visible', false); setProperty('ratingIcon.visible', false); setProperty('scoreIcon.visible', false)

        setProperty('sick.visible', false)
        setProperty('good.visible', false)
        setProperty('bad.visible', false)
        setProperty('shit.visible', false)
    else
        setProperty('misses.visible', true); setProperty('rating.visible', true); setProperty('score.visible', true)
        setProperty('missesIcon.visible', true); setProperty('ratingIcon.visible', true); setProperty('scoreIcon.visible', true)

        setProperty('sick.visible', true)
        setProperty('good.visible', true)
        setProperty('bad.visible', true)
        setProperty('shit.visible', true)
    end
end

function arrowBruh() --arrow (or plus), that points where your health (thx vCherry.kAI.16)
    if pref.style == 'modern' then
        makeLuaText('HParrow', '>')
        local HIGHPOINT = 395
        local LOWPOINT = 688
        setProperty('HParrow.x', LOWPOINT) setProperty('HParrow.y', downscroll and 20 or 675); setTextSize('HParrow', 30); setProperty('HParrow.angle', downscroll and 90 or -90)

        if getProperty('health') == 1 then
            setProperty('HParrow.x', HIGHPOINT)
        elseif getProperty('health') == 0 then
            setProperty('HParrow.x', LOWPOINT)
        elseif getProperty('health') > 1 then
            setProperty('HParrow.x', LOWPOINT - (getProperty('health') * 292))
        elseif getProperty('health') <= 1 then 
            setProperty('HParrow.x', LOWPOINT - (getProperty('health') * 293))
        end
    end

    if pref.style == 'classicTxt' or 'classicIcons' then
        makeLuaText('HParrow', '+')
        local HIGHPOINT = 628
        local LOWPOINT = 924
        setProperty('HParrow.x', LOWPOINT) setProperty('HParrow.y', downscroll and 50 or 637); setTextSize('HParrow', 36)

        if getProperty('health') == 1 then
            setProperty('HParrow.x', HIGHPOINT)
        elseif getProperty('health') == 0 then
            setProperty('HParrow.x', LOWPOINT)
        elseif getProperty('health') > 1 then
            setProperty('HParrow.x', LOWPOINT - (getProperty('health') * 292))
        elseif getProperty('health') <= 1 then 
            setProperty('HParrow.x', LOWPOINT - (getProperty('health') * 293))
        end
    end

    if pref.style == 'cherry' then
        makeLuaText('HParrow', '>')
        local HIGHPOINT = 335
        local LOWPOINT = 631
        setProperty('HParrow.x', 1215); setProperty('HParrow.y', LOWPOINT); setTextSize('HParrow', 30)

        if getProperty('health') == 1 then
            setProperty('HParrow.y', HIGHPOINT)
        elseif getProperty('health') == 0 then
            setProperty('HParrow.y', LOWPOINT)
        elseif getProperty('health') > 1 then                
            setProperty('HParrow.y', LOWPOINT - (getProperty('health') * 292))
        elseif getProperty('health') <= 1 then 
            setProperty('HParrow.y', LOWPOINT - (getProperty('health') * 293))
        end
    end
    addLuaText('HParrow'); setObjectCamera('HParrow', 'hud', true)
end

function cherryIconsBruh() --this enables if you turn off iconPoz and you have cherry style
    local HIGHPOINTbf = 335
    local LOWPOINTbf = 631
    local HIGHPOINTdad = 230
    local LOWPOINTdad = 531

    setProperty('iconP1.x', screenWidth - 140)
    setProperty('iconP2.x', screenWidth - 140)
    setProperty('iconP2.flipX', true)
    if getProperty('health') == 1 then
        setProperty('iconP1.y', HIGHPOINTbf)
    elseif getProperty('health') == 0 then
        setProperty('iconP1.y', LOWPOINTbf)
    elseif getProperty('health') > 1 then                
        setProperty('iconP1.y', LOWPOINTbf - (getProperty('health') * 292))
    elseif getProperty('health') <= 1 then 
        setProperty('iconP1.y', LOWPOINTbf - (getProperty('health') * 293))
    end
    if getProperty('health') == 1 then
        setProperty('iconP2.y', HIGHPOINTdad)
    elseif getProperty('health') == 0 then
        setProperty('iconP2.y', LOWPOINTdad)
    elseif getProperty('health') > 1 then                
        setProperty('iconP2.y', LOWPOINTdad - (getProperty('health') * 292))
    elseif getProperty('health') <= 1 then 
        setProperty('iconP2.y', LOWPOINTdad - (getProperty('health') * 293))
    end
end

function byeHPBruh() --HP Bar Go Bye-Bye (thx Cherry)
    if getProperty('health') <= 1.99 and getProperty('health') >= 1.94 then
        doTweenAlpha('bruhHP1', 'healthBar', 0, 0.1, 'linear')
        doTweenAlpha('bruhHP2', 'healthBarOver', 0, 0.1, 'linear');
        
        doTweenAlpha('whatArr', 'HParrow', 0, 0.1, 'linear')

    elseif getProperty('health') <= 1.93 then
        doTweenAlpha('bruhHP1', 'healthBar', 1, 0.1, 'linear')
        doTweenAlpha('bruhHP2', 'healthBarOver', 0.5, 0.1, 'linear');
        
        doTweenAlpha('whatArr', 'HParrow', 1, 0.1, 'linear')
    end
end

function antialiasingBruh() --thanks to raltyro, I'm dumb to do this on my own
    local gAA = getPropertyFromClass("ClientPrefs", "globalAntialiasing")

    setProperty('rating.antialiasing', gAA); setProperty('misses.antialiasing', gAA); setProperty('score.antialiasing', gAA)
    setProperty('timer.antialiasing', gAA); setProperty('song.antialiasing', gAA)
    setProperty('sick.antialiasing', gAA); setProperty('good.antialiasing', gAA); setProperty('bad.antialiasing', gAA); setProperty('shit.antialiasing', gAA)
    setProperty('HParrow.antialiasing', gAA)
end

function onCreatePost()
    for i = 1, 5 do setProperty(hudStuff[i] ..'.visible', false) end --this thing hide vanilla stuff

    switchStyle() --the thing that makes hud exist

    --preferences 1
    if pref.songName == true then songBruh() end
    if pref.timer == true then timerBruh() end
    if pref.HBoverlay == true then HBoverlayBruh() end
    if pref.timeBarr == true then timeBarBruh() end
    if pref.hideInfo == true then hideInfoBruh() end
end

function onUpdatePost()
    --make timer work (big thanks for SameTheta)
    local timeElapsed = math.floor(getProperty('songTime')/1000)
    local timeTotal = math.floor(getProperty('songLength')/1000)
    local timeElapsedFixed = string.format("%.2d:%.2d", timeElapsed/60%60, timeElapsed%60)
    local timeTotalFixed = string.format("%.2d:%.2d", timeTotal/60%60, timeTotal%60)
    setTextString('timer', timeElapsedFixed .. '/' .. timeTotalFixed)

    --preferences 2
    if pref.iconPoz == true then iconsBruh() end
    if pref.iconPoz == false and pref.style == 'cherry' then cherryIconsBruh() end
    if pref.botplHideInfo == true then botplayHideBruh() end
end

function onUpdate()
    if pref.extraInfo == true then extraInfoBruh() end
    if pref.funkyArrow == true then arrowBruh() end
    if pref.wowCFont == true then fontBruh() end
    if pref.antialiasingLol == true then antialiasingBruh() end
    if pref.hpBye == true then byeHPBruh() end
end

function onRecalculateRating()
    --make info work (thanks to SameTheta for rating percents)
    if pref.style == 'modern' or 'classicIcons' or 'cherry' then
        setTextString('misses', ': ' .. getProperty('songMisses'))
	    setTextString('rating', ': ' .. getProperty('ratingName') .. ' | ' .. string.format("%.2f%%", rating * 100) .. ' | ' .. getProperty('ratingFC'))
	    setTextString('score', ': ' .. score)
    end
    if pref.style == 'classicTxt' then
        setTextString('misses', 'Misses: ' .. getProperty('songMisses'))
	    setTextString('rating', 'Rating: ' .. getProperty('ratingName') .. ' | ' .. string.format("%.2f%%", rating * 100) .. ' | ' .. getProperty('ratingFC'))
	    setTextString('score', 'Score: ' .. score)
    end
end

--preferences 3 :sleeping:
function noteMiss() if pref.hudMiss == true then hudMissBruh() end end

function goodNoteHit() if pref.infoBop == true then infoBopBruh() end end