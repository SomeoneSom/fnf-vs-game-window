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
    if curStep == 64 then
        bounce(-1, 0)
    end
    if curStep == 72 then
        bounce(1, 0)
    end
    if curStep == 80 then
        bounce(-1, 0)
    end
    if curStep == 88 then
        bounce(1, 0)
    end
    if curStep == 96 then
        bounce(-1, 0)
    end
    if curStep == 104 then
        bounce(1, 0)
    end
    if curStep == 112 then
        bounce(-1, 0)
    end
    if curStep == 120 then
        bounce(1, 0)
    end
    if curStep == 128 then
        bounce(0, -1)
    end
    if curStep == 136 then
        bounce(0, 1)
    end
    if curStep == 144 then
        bounce(0, -1)
    end
    if curStep == 152 then
        bounce(0, 1)
    end
    if curStep == 160 then
        bounce(0, -1)
    end
    if curStep == 168 then
        bounce(0, 1)
    end
    if curStep == 176 then
        bounce(0, -1)
    end
    if curStep == 184 then
        bounce(0, 1)
    end
    if curStep == 192 then
        bounce(-1, 0)
    end
    if curStep == 200 then
        bounce(0, -1)
    end
    if curStep == 208 then
        bounce(0, 1)
    end
    if curStep == 216 then
        bounce(1, 0)
    end
    if curStep == 224 then
        bounce(-1, 0)
    end
    if curStep == 232 then
        bounce(0, -1)
    end
    if curStep == 240 then
        bounce(0, 1)
    end
    if curStep == 248 then
        bounce(1, 0)
    end
    if curStep == 256 then
        bounce(0, 1)
    end
    if curStep == 260 then
        bounce(0, 1)
    end
    if curStep == 264 then
        bounce(0, -1)
    end
    if curStep == 272 then
        bounce(0, 1)
    end
    if curStep == 276 then
        bounce(0, 1)
    end
    if curStep == 280 then
        bounce(1, 0)
    end
    if curStep == 288 then
        bounce(0, 1)
    end
    if curStep == 292 then
        bounce(0, 1)
    end
    if curStep == 296 then
        bounce(0, -1)
    end
    if curStep == 304 then
        bounce(0, 1)
    end
    if curStep == 308 then
        bounce(0, 1)
    end
    if curStep == 312 then
        bounce(1, 0)
    end
    if curStep == 320 then
        bounce(0, 1, 2)
    end
    if curStep == 322 then
        bounce(0, -1, 2)
    end
    if curStep == 324 then
        bounce(1, 0, 2)
    end
    if curStep == 326 then
        bounce(0, -1, 2)
    end
    if curStep == 332 then
        bounce(1, 0)
    end
    if curStep == 336 then
        bounce(0, 1, 2)
    end
    if curStep == 338 then
        bounce(0, -1, 2)
    end
    if curStep == 340 then
        bounce(1, 0, 2)
    end
    if curStep == 342 then
        bounce(0, -1, 2)
    end
    if curStep == 348 then
        bounce(1, 0)
    end
    if curStep == 352 then
        bounce(1, 0)
    end
    if curStep == 356 then
        bounce(0, 1)
    end
    if curStep == 360 then
        bounce(-1, 0)
    end
    if curStep == 364 then
        bounce(0, 1)
    end
    if curStep == 368 then
        bounce(0, -1)
    end
    if curStep == 372 then
        bounce(1, 0)
    end
    if curStep == 376 then
        bounce(-1, 0)
    end
    if curStep == 380 then
        bounce(0, -1)
    end
    if curStep == 384 then
        bounce(0, 1)
    end
    if curStep == 431 then
        centerWin()
    end
end
print("Mod Chart script loaded :)")