print("Architecture: " .. os.getenv("PROCESSOR_ARCHITECTURE"))
if type(jit) == 'table' then
    print("Running on: " .. jit.version)
else
    print("Running on: " .. _VERSION)
end
ffi = require('ffi')
ffi.cdef[[
typedef unsigned long DWORD;
void Sleep(DWORD dwMilliseconds);
]]
function start(song)
    print("Song: " .. song .. " @ " .. bpm .. " Downscroll: " .. downscroll)
    centerWin()
end
function realBounce(changeX, changeY, frames, i, firstX, firstY, distX, distY)
    moveWindow(firstX + (distX * changeX / i), firstY + (distY * changeY / i), appWidth, appHeight)
    ffi.C.Sleep(math.floor(1000 * frames / 120))
end
function centerWin()
    moveWindow((displayWidth / 2) - (appWidth / 2), (displayHeight / 2) - (appHeight / 2), appWidth, appHeight)
end
function update(elapsed)
    -- Do nothing
end
function beatHit(beat)
    -- Do nothing
end
function stepHit(step)
    if curStep <= 303 and (curStep > 63 or curStep < 48) and (curStep < 112 or curStep > 127) then
        if math.fmod(curStep, 4) == 0 then
            bounce(0.1, 0)
        elseif math.fmod(curStep, 2) == 0 then
            bounce(-0.1, 0)
        end
    end
    if curStep == 320 then
        sineWave(1/60, 1, appX/30, 56)
    end
    if curStep == 384 then
        sineWave(1/60, 1, appX/25, 48)
    end
    if curStep == 448 then
        sineWave(1/60, 1, appX/20, 56)
    end
    if curStep == 512 then
        sineWave(1/60, 1, appX/15, 48)
    end
    if curStep == 592 then
        setStorage(appWidth, appHeight)
        moveWindow(0, 0, appWidth, appHeight)
    end
    if curStep == 593 then
        moveWindow((displayWidth - appWidth)/4, 0, appWidth, appHeight)
    end
    if curStep == 594 then
        moveWindow((displayWidth - appWidth)/4 * 2, 0, appWidth, appHeight)
    end
    if curStep == 595 then
        moveWindow((displayWidth - appWidth)/4 * 3, 0, appWidth, appHeight)
    end
    if curStep == 596 then
        moveWindow(0, (displayHeight - appHeight)/4, appWidth, appHeight)
    end
    if curStep == 597 then
        moveWindow((displayWidth - appWidth)/4, (displayHeight - appHeight)/4, appWidth, appHeight)
    end
    if curStep == 598 then
        moveWindow((displayWidth - appWidth)/4 * 2, (displayHeight - appHeight)/4, appWidth, appHeight)
    end
    if curStep == 599 then
        moveWindow((displayWidth - appWidth)/4 * 3, (displayHeight - appHeight)/4, appWidth, appHeight)
    end
    if curStep == 600 then
        moveWindow((displayWidth - appWidth)/4 * 3, (displayHeight - appHeight)/4 * 2, appWidth, appHeight)
    end
    if curStep == 601 then
        moveWindow((displayWidth - appWidth)/4 * 2, (displayHeight - appHeight)/4 * 2, appWidth, appHeight)
    end
    if curStep == 602 then
        moveWindow((displayWidth - appWidth)/4, (displayHeight - appHeight)/4 * 2, appWidth, appHeight)
    end
    if curStep == 603 then
        moveWindow(0, (displayHeight - appHeight)/4 * 2, appWidth, appHeight)
    end
    if curStep == 604 then
        moveWindow((displayWidth - appWidth)/4 * 3, (displayHeight - appHeight)/4 * 3, appWidth, appHeight)
    end
    if curStep == 605 then
        moveWindow((displayWidth - appWidth)/4 * 2, (displayHeight - appHeight)/4 * 3, appWidth, appHeight)
    end
    if curStep == 606 then
        moveWindow((displayWidth - appWidth)/4, (displayHeight - appHeight)/4 * 3, appWidth, appHeight)
    end
    if curStep == 607 then
        moveWindow(0, (displayHeight - appHeight)/4 * 3, appWidth, appHeight)
    end
    if curStep == 608 then
        centerWin()
    end
    if curStep == 624 then
        moveWindow(0, 0, appWidth, appHeight)
    end
    if curStep == 627 then
        moveWindow((displayWidth - appWidth)/4 * 3, 0, appWidth, appHeight)
    end
    if curStep == 628 then
        moveWindow((displayWidth - appWidth)/4, 0, appWidth, appHeight)
    end
    if curStep == 631 then
        moveWindow((displayWidth - appWidth)/4 * 2, 0, appWidth, appHeight)
    end
    if curStep == 632 then
        moveWindow(0, (displayHeight - appHeight)/4, appWidth, appHeight)
    end
    if curStep == 635 then
        moveWindow((displayWidth - appWidth)/4 * 3, (displayHeight - appHeight)/4, appWidth, appHeight)
    end
    if curStep == 636 then
        moveWindow((displayWidth - appWidth)/4, (displayHeight - appHeight)/4, appWidth, appHeight)
    end
    if curStep == 637 then
        moveWindow((displayWidth - appWidth)/4 * 3, (displayHeight - appHeight)/4, appWidth, appHeight)
    end
    if curStep == 638 then
        moveWindow((displayWidth - appWidth)/4 * 3, (displayHeight - appHeight)/4 * 2, appWidth, appHeight)
    end
    if curStep == 639 then
        moveWindow((displayWidth - appWidth)/4 * 3, (displayHeight - appHeight)/4 * 3, appWidth, appHeight)
    end
    if curStep == 640 then
        centerWin()
    end
    if curStep == 656 then
        setStorage(appWidth, appHeight)
        moveWindow(0, 0, appWidth, appHeight)
    end
    if curStep == 657 then
        moveWindow((displayWidth - appWidth)/4, 0, appWidth, appHeight)
    end
    if curStep == 658 then
        moveWindow((displayWidth - appWidth)/4 * 2, 0, appWidth, appHeight)
    end
    if curStep == 659 then
        moveWindow((displayWidth - appWidth)/4 * 3, 0, appWidth, appHeight)
    end
    if curStep == 660 then
        moveWindow((displayWidth - appWidth)/4 * 3, (displayHeight - appHeight)/4, appWidth, appHeight)
    end
    if curStep == 661 then
        moveWindow((displayWidth - appWidth)/4 * 2, (displayHeight - appHeight)/4, appWidth, appHeight)
    end
    if curStep == 662 then
        moveWindow((displayWidth - appWidth)/4 * 1, (displayHeight - appHeight)/4, appWidth, appHeight)
    end
    if curStep == 663 then
        moveWindow(0, (displayHeight - appHeight)/4, appWidth, appHeight)
    end
    if curStep == 664 then
        moveWindow(0, (displayHeight - appHeight)/4 * 2, appWidth, appHeight)
    end
    if curStep == 665 then
        moveWindow((displayWidth - appWidth)/4, (displayHeight - appHeight)/4 * 2, appWidth, appHeight)
    end
    if curStep == 666 then
        moveWindow((displayWidth - appWidth)/4 * 2, (displayHeight - appHeight)/4 * 2, appWidth, appHeight)
    end
    if curStep == 667 then
        moveWindow((displayWidth - appWidth)/4 * 3, (displayHeight - appHeight)/4 * 2, appWidth, appHeight)
    end
    if curStep == 668 then
        moveWindow((displayWidth - appWidth)/4 * 3, (displayHeight - appHeight)/4 * 3, appWidth, appHeight)
    end
    if curStep == 669 then
        moveWindow((displayWidth - appWidth)/4 * 2, (displayHeight - appHeight)/4 * 3, appWidth, appHeight)
    end
    if curStep == 670 then
        moveWindow((displayWidth - appWidth)/4, (displayHeight - appHeight)/4 * 3, appWidth, appHeight)
    end
    if curStep == 671 then
        moveWindow(0, (displayHeight - appHeight)/4 * 3, appWidth, appHeight)
    end
    if curStep == 672 then
        centerWin()
    end
    if curStep == 704 then
        sineWave(1/60, 2, appX/10, 128)
    end
    if curStep == 832 then
        bounce(-1, 0)
    end
    if curStep == 834 then
        bounce(-1, 0, 4)
    end
    if curStep == 840 then
        bounce(-1, 0)
    end
    if curStep == 844 then
        bounce(-1, 0)
    end
    if curStep == 848 then
        bounce(0, -1)
    end
    if curStep == 850 then
        bounce(0, -1, 4)
    end
    if curStep == 856 then
        bounce(0, -1)
    end
    if curStep == 860 then
        bounce(0, -1)
    end
    if curStep == 864 then
        bounce(1, 0)
    end
    if curStep == 866 then
        bounce(1, 0, 4)
    end
    if curStep == 872 then
        bounce(1, 0)
    end
    if curStep == 876 then
        bounce(1, 0)
    end
    if curStep == 880 then
        moveWindow(appX, appY + (displayHeight - appHeight), appWidth, appHeight)
    end
    if curStep == 881 then
        centerWin()
    end
    if curStep == 882 then
        moveWindow(appX, appY - (displayHeight - appHeight), appWidth, appHeight)
    end
    if curStep == 883 then
        centerWin()
    end
    if curStep == 884 then
        moveWindow(appX, appY + (displayHeight - appHeight), appWidth, appHeight)
    end
    if curStep == 885 then
        centerWin()
    end
    if curStep == 886 then
        moveWindow(appX, appY - (displayHeight - appHeight), appWidth, appHeight)
    end
    if curStep == 887 then
        centerWin()
    end
    if curStep == 888 then
        moveWindow(appX, appY + (displayHeight - appHeight), appWidth, appHeight)
    end
    if curStep == 889 then
        centerWin()
    end
    if curStep == 890 then
        moveWindow(appX, appY - (displayHeight - appHeight), appWidth, appHeight)
    end
    if curStep == 891 then
        centerWin()
    end
    if curStep == 892 then
        moveWindow(appX, appY + (displayHeight - appHeight), appWidth, appHeight)
    end
    if curStep == 893 then
        centerWin()
    end
    if curStep == 894 then
        moveWindow(appX, appY - (displayHeight - appHeight), appWidth, appHeight)
    end
    if curStep == 895 then
        centerWin()
    end
end