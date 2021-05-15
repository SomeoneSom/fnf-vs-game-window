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
    if curStep <= 303 and  not (curstep <= 63 and curstep >= 48) then
        if curstep % 4 == 0 then
            bounce(0.4, 0)
        else if curstep % 2 == 0 then
            bounce(-0.4, 0)
        end
end