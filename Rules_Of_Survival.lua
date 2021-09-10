-------------------------------------------------------------------------------
--📜📜📜📜📜📜📜 Menu 📜📜📜📜📜📜📜--
-------------------------------------------------------------------------------
function ROS() 
ros = gg.choice({
'🥇Меню 1',
'🥈Меню 2',
'🚪Выход'
},Lasttl,'🦁Rama Production🦁\n📝Авторы: Project Sfynx, Rama Production')
if ros == 1 then Menu1(M) end
if ros == 2 then Menu2(M) end
if ros == 3 then Exit(X) end
end
-------------------------------------------------------------------------------
--📕📕📕📕📕📕 Menu 1 📕📕📕📕📕📕--
-------------------------------------------------------------------------------
function Menu1(M)
ros1 = gg.multiChoice({
'🐇BunnyHop',
'🚇Под Землю',
'👻WallHack',
'🧗Альпинизм',
'⚡Скорострельность',
'🌊Под Воду',
'📦Бесконечные Боеприпасы',
'🗺️Высокий Обзор',
'🚑Быстрое Исцеление',
'🎯Антиразброс',
'👈Назад'
},Lasttl,'🦁Rama Production🦁\n🥇Menu🥇')
if ros1 == nil then gg.setVisible(false) else
if ros1[1] == true then JumpHack(F) end
if ros1[2] == true then Underground(F) end
if ros1[3] == true then WallHack(F) end
if ros1[4] == true then WallClimb(F) end
if ros1[5] == true then FastShoot(F) end
if ros1[6] == true then Underwater(F) end
if ros1[7] == true then UnlimitedAmmo(F) end
if ros1[8] == true then HighScope(F) end
if ros1[9] == true then QuickHeal(F) end
if ros1[10] == true then NoRecoil(F) end
if ros1[11] == true then ROS() end
end
end


----------------------------------------------------------------------------
--=============Jump Hack==============--
----------------------------------------------------------------------------
function JumpHack(F)
gg.setRanges(gg.REGION_ANONYMOUS | gg.REGION_C_HEAP | gg.REGION_C_ALLOC) 
gg.clearResults() 
gg.searchNumber('109.5445098877', gg.TYPE_FLOAT)
gg.getResults(1)
gg.editAll('200', gg.TYPE_FLOAT)
gg.clearResults() 
gg.toast('🦁Rama Production🦁')
end
----------------------------------------------------------------------------
--============Underground=============--
----------------------------------------------------------------------------
function Underground(F)
gg.setRanges(gg.REGION_ANONYMOUS | gg.REGION_C_HEAP | gg.REGION_C_ALLOC) 
gg.clearResults() 
gg.searchNumber('1.04719758034;-120.0;-300.0;-11.75', gg.TYPE_FLOAT)
gg.getResults(4)
local t = gg.getResults(4)
for i, v in ipairs(t) do
if v.flags == gg.TYPE_FLOAT then
v.value = "-30"
v.freeze = true
end
end
gg.addListItems(t)
t = nil
gg.clearResults() 
gg.toast('🦁Rama Production🦁')
end
----------------------------------------------------------------------------
--=============Wall Hack==============--
----------------------------------------------------------------------------
function WallHack(F)
gg.setRanges(gg.REGION_ANONYMOUS | gg.REGION_C_HEAP | gg.REGION_C_ALLOC) 
gg.clearResults() 
gg.searchNumber('1,204,289,536;1,221,066,752;1,275,679,808', gg.TYPE_DWORD)
gg.getResults(500)
gg.editAll('1,202,702,336', gg.TYPE_DWORD)
gg.clearResults()
gg.searchNumber('1,204,289,536;1,221,066,752;1,275,679,808', gg.TYPE_DWORD)
gg.getResults(500)
gg.editAll('1,202,702,336', gg.TYPE_DWORD)
gg.clearResults()
gg.searchNumber('1,204,289,536;1,221,066,752;1,275,679,808', gg.TYPE_DWORD)
gg.getResults(500)
gg.editAll('1,202,702,336', gg.TYPE_DWORD)
gg.clearResults() 
gg.toast('🦁Rama Production🦁')
end
----------------------------------------------------------------------------
--=============Wall Climb==============--
----------------------------------------------------------------------------
function WallClimb(F)
gg.setRanges(gg.REGION_ANONYMOUS | gg.REGION_C_HEAP | gg.REGION_C_ALLOC) 
gg.clearResults() 
gg.searchNumber('450;2', gg.TYPE_FLOAT)
gg.refineNumber('2', gg.TYPE_FLOAT)
gg.getResults(100)
gg.editAll('2000', gg.TYPE_FLOAT)
gg.clearResults()
gg.toast('🦁Rama Production🦁')
end
----------------------------------------------------------------------------
--=============Fast Shoot==============--
----------------------------------------------------------------------------
function FastShoot(F)
gg.setRanges(gg.REGION_ANONYMOUS | gg.REGION_C_HEAP | gg.REGION_C_ALLOC) 
gg.clearResults() 
gg.searchNumber('1F;1701993518;115::200', gg.TYPE_DWORD) 
gg.refineNumber('1', gg.TYPE_FLOAT) 
gg.getResults(100)
gg.editAll('10', gg.TYPE_FLOAT)
gg.clearResults()
gg.toast('🦁Rama Production🦁')
end
----------------------------------------------------------------------------
--=============Underwater==============--
----------------------------------------------------------------------------
function Underwater(F)
gg.setRanges(gg.REGION_ANONYMOUS | gg.REGION_C_HEAP | gg.REGION_C_ALLOC) 
gg.clearResults() 
gg.searchNumber('1,343,554,297',gg.TYPE_DWORD)
gg.getResults(4)
gg.editAll('985,963,430', gg.TYPE_DWORD)
gg.clearResults() 
gg.toast('🦁Rama Production🦁')
end
----------------------------------------------------------------------------
--==========Unlimited Ammo===========--
----------------------------------------------------------------------------
function UnlimitedAmmo(F)
gg.setRanges(gg.REGION_ANONYMOUS | gg.REGION_C_HEAP | gg.REGION_C_ALLOC) 
gg.clearResults() 
gg.searchNumber('21;20;19::25', gg.TYPE_DWORD)
gg.refineNumber('20', gg.TYPE_DWORD)
gg.getResults(1000)
gg.editAll('2147483647', gg.TYPE_DWORD)
gg.clearResults()
gg.toast('🦁Rama Production🦁')
end
----------------------------------------------------------------------------
--=============High Scope==============--
----------------------------------------------------------------------------
function HighScope(F)
gg.setRanges(gg.REGION_ANONYMOUS | gg.REGION_C_HEAP | gg.REGION_C_ALLOC) 
gg.clearResults() 
gg.searchNumber('2.28125;2.80312490463', gg.TYPE_FLOAT)
gg.getResults(10)
local t = gg.getResults(10)
for i, v in ipairs(t) do
if v.flags == gg.TYPE_FLOAT then
v[1].value = "3.0123"
v[1].freeze = true
v[2].value = "3.3333"
v[2].freeze = true
end
end
gg.addListItems(t)
t = nil
gg.clearResults() 
gg.toast('🦁Rama Production🦁')
end
----------------------------------------------------------------------------
--=============Quick Heal==============--
----------------------------------------------------------------------------
function QuickHeal(F)
gg.setRanges(gg.REGION_ANONYMOUS | gg.REGION_C_HEAP | gg.REGION_C_ALLOC) 
gg.clearResults() 
gg.searchNumber('6.0;4.0', gg.TYPE_DOUBLE)
gg.getResults(10)
gg.editAll('0.1', gg.TYPE_DOUBLE)
gg.clearResults()
gg.searchNumber('8.0;6.0;4.0', gg.TYPE_DOUBLE)
gg.getResults(50)
gg.editAll('0.1', gg.TYPE_DOUBLE)
gg.clearResults()
gg.searchNumber('125E;135000E;10E', gg.TYPE_DOUBLE)
gg.refineNumber('10', gg.TYPE_DOUBLE)
gg.getResults(100)
gg.editAll('0.1', gg.TYPE_DOUBLE)
gg.clearResults()
gg.toast('🦁Rama Production🦁')
end
----------------------------------------------------------------------------
--=============No Recoil==============--
----------------------------------------------------------------------------
function NoRecoil(F)
gg.setRanges(gg.REGION_ANONYMOUS | gg.REGION_C_HEAP | gg.REGION_C_ALLOC) 
gg.clearResults() 
gg.searchNumber('180;1D;-10::30', gg.TYPE_DOUBLE)
gg.refineNumber('180', gg.TYPE_DOUBLE)
gg.getResults(100)
gg.editAll('0', gg.TYPE_DOUBLE)
gg.clearResults()
gg.toast('🦁Rama Production🦁')
end
-------------------------------------------------------------------------------
--📗📗📗📗📗📗 Menu 2 📗📗📗📗📗📗--
-------------------------------------------------------------------------------
function Menu2(M)
ros2 = gg.choice({
'🌈Чамсы',
'🌿Удалить Траву',
'🦟Полет',
'🔄Быстрая Перезарядка',
'🐆SpeedHack',
'👈Назад'
},Lasttl,'🦁Rama Production🦁\n🥈Menu🥈')
if ros2 == 1 then Chams(M) end
if ros2 == 2 then NoGrass(F) end
if ros2 == 3 then FlyHack(F) end
if ros2 == 4 then BetterReload(F) end
if ros2 == 5 then BetterNitro(F) end
if ros2 == 6 then ROS() end
end
-------------------------------------------------------------------------------
--💠💠💠💠💠 Chams Menu 💠💠💠💠💠--
-------------------------------------------------------------------------------
function Chams(M)
ros3 = gg.choice({
'📒Золотистый',
'📕Красный',
'📗Зеленый',
'📘Голубой',
'📃Белый',
'📓Черный',
'👈Назад'
},Lasttl,'🦁Rama Production🦁\n🏳️‍🌈Chams🏳️‍🌈')
if ros3 == 1 then Gold(F) end
if ros3 == 2 then Red(F) end
if ros3 == 3 then Green(F) end
if ros3 == 4 then Blue(F) end
if ros3 == 5 then White(F) end
if ros3 == 6 then Black(F) end
if ros3 == 7 then Menu2(M) end
end
----------------------------------------------------------------------------
--===============Gold================--
----------------------------------------------------------------------------
function Gold(F)
gg.setRanges(gg.REGION_ANONYMOUS | gg.REGION_C_HEAP | gg.REGION_C_ALLOC) 
gg.clearResults() 
gg.searchNumber('0.8;0.77649998665;0.73729997873;1::13', gg.TYPE_FLOAT)
gg.refineNumber('0.8;0.77649998665', gg.TYPE_FLOAT)
gg.getResults(100)
gg.editAll('3.4e38', gg.TYPE_FLOAT)
gg.clearResults()
gg.searchNumber('3.4e38;0.73729997873;1::13', gg.TYPE_FLOAT)
gg.refineNumber('0.73729997873', gg.TYPE_FLOAT)
gg.getResults(100)
gg.editAll('-3.4e38', gg.TYPE_FLOAT)
gg.clearResults() 
gg.toast('🦁Rama Production🦁')
end
----------------------------------------------------------------------------
--================Red=================--
----------------------------------------------------------------------------
function Red(F)
gg.setRanges(gg.REGION_ANONYMOUS | gg.REGION_C_HEAP | gg.REGION_C_ALLOC) 
gg.clearResults() 
gg.searchNumber('0.8;0.77649998665;0.73729997873;1::13', gg.TYPE_FLOAT)
gg.refineNumber('0.8', gg.TYPE_FLOAT)
gg.getResults(100)
gg.editAll('3.4e38', gg.TYPE_FLOAT)
gg.clearResults()
gg.searchNumber('3.4e38;0.77649998665;0.73729997873;1::13', gg.TYPE_FLOAT)
gg.refineNumber('0.77649998665;0.73729997873', gg.TYPE_FLOAT)
gg.getResults(100)
gg.editAll('-3.4e38', gg.TYPE_FLOAT)
gg.clearResults() 
gg.toast('🦁Rama Production🦁')
end
----------------------------------------------------------------------------
--===============Green================--
----------------------------------------------------------------------------
function Green(F)
gg.setRanges(gg.REGION_ANONYMOUS | gg.REGION_C_HEAP | gg.REGION_C_ALLOC) 
gg.clearResults() 
gg.searchNumber('0.8;0.77649998665;0.73729997873;1::13', gg.TYPE_FLOAT)
gg.refineNumber('0.77649998665', gg.TYPE_FLOAT)
gg.getResults(100)
gg.editAll('3.4e38', gg.TYPE_FLOAT)
gg.clearResults()
gg.searchNumber('0.8;3.4e38;0.73729997873;1::13', gg.TYPE_FLOAT)
gg.refineNumber('0.8;0.73729997873', gg.TYPE_FLOAT)
gg.getResults(100)
gg.editAll('-3.4e38', gg.TYPE_FLOAT)
gg.clearResults() 
gg.toast('🦁Rama Production🦁')
end
----------------------------------------------------------------------------
--================Blue=================--
----------------------------------------------------------------------------
function Blue(F)
gg.setRanges(gg.REGION_ANONYMOUS | gg.REGION_C_HEAP | gg.REGION_C_ALLOC) 
gg.clearResults() 
gg.searchNumber('0.8;0.77649998665;0.73729997873;1::13', gg.TYPE_FLOAT)
gg.refineNumber('0.73729997873', gg.TYPE_FLOAT)
gg.getResults(100)
gg.editAll('3.4e38', gg.TYPE_FLOAT)
gg.clearResults()
gg.searchNumber('0.8;0.77649998665;3.4e38;1::13', gg.TYPE_FLOAT)
gg.refineNumber('0.8;0.77649998665', gg.TYPE_FLOAT)
gg.getResults(100)
gg.editAll('-3.4e38', gg.TYPE_FLOAT)
gg.clearResults() 
gg.toast('🦁Rama Production🦁')
end
----------------------------------------------------------------------------
--===============White================--
----------------------------------------------------------------------------
function White(F)
gg.setRanges(gg.REGION_ANONYMOUS | gg.REGION_C_HEAP | gg.REGION_C_ALLOC) 
gg.clearResults() 
gg.searchNumber('0.8;0.77649998665;0.73729997873;1::13', gg.TYPE_FLOAT)
gg.getResults(100)
gg.editAll('3.4e38', gg.TYPE_FLOAT)
gg.clearResults() 
gg.toast('🦁Rama Production🦁')
end
----------------------------------------------------------------------------
--===============Black================--
----------------------------------------------------------------------------
function Black(F)
gg.setRanges(gg.REGION_ANONYMOUS | gg.REGION_C_HEAP | gg.REGION_C_ALLOC) 
gg.clearResults() 
gg.searchNumber('0.8;0.77649998665;0.73729997873;1::13', gg.TYPE_FLOAT)
gg.getResults(100)
gg.editAll('-3.4e38', gg.TYPE_FLOAT)
gg.clearResults() 
gg.toast('🦁Rama Production🦁')
end
----------------------------------------------------------------------------
--=============No Grass==============--
----------------------------------------------------------------------------
function NoGrass(F)
gg.setRanges(gg.REGION_ANONYMOUS | gg.REGION_C_HEAP | gg.REGION_C_ALLOC) 
gg.clearResults() 
gg.searchNumber('40;640;2.2420775E-44;6.4096906E-10', gg.TYPE_FLOAT)
gg.refineNumber('40', gg.TYPE_FLOAT)
gg.getResults(10)
gg.editAll('3.4e38', gg.TYPE_FLOAT)
gg.clearResults() 
gg.toast('🦁Rama Production🦁')
end
----------------------------------------------------------------------------
--=============Fly Hack==============--
----------------------------------------------------------------------------
function FlyHack(F)
gg.setRanges(gg.REGION_ANONYMOUS | gg.REGION_C_HEAP | gg.REGION_C_ALLOC) 
gg.clearResults() 
gg.searchNumber('-11.75', gg.TYPE_FLOAT)
gg.getResults(1)
gg.editAll('200', gg.TYPE_FLOAT)
gg.clearResults() 
gg.toast('🦁Rama Production🦁')
end
----------------------------------------------------------------------------
--============Better Reload=============--
----------------------------------------------------------------------------
function BetterReload(F)
gg.setRanges(gg.REGION_ANONYMOUS | gg.REGION_C_HEAP | gg.REGION_C_ALLOC) 
gg.clearResults() 
gg.searchNumber('1.5;1.9375F;82D::', gg.TYPE_DOUBLE)
gg.refineNumber('1.5', gg.TYPE_DOUBLE)
gg.getResults(100)
gg.editAll('0.1', gg.TYPE_DOUBLE)
gg.clearResults() 
gg.toast('🦁Rama Production🦁')
end
----------------------------------------------------------------------------
--=============Better Nitro==============--
----------------------------------------------------------------------------
function BetterNitro(F)
gg.setRanges(gg.REGION_ANONYMOUS | gg.REGION_C_HEAP | gg.REGION_C_ALLOC) 
gg.clearResults() 
gg.searchNumber('0.5;40;1.5;0.75', gg.TYPE_DOUBLE)
gg.refineNumber('1.5', gg.TYPE_DOUBLE)
gg.getResults(100)
gg.editAll('0.1', gg.TYPE_DOUBLE)
gg.clearResults() 
gg.toast('🦁Rama Production🦁')
end
-------------------------------------------------------------------------------
--🚪🚪🚪🚪🚪🚪🚪 Exit 🚪🚪🚪🚪🚪🚪🚪--
-------------------------------------------------------------------------------
function Exit(X)
gg.toast('🦁Rama Production🦁')
print('🔘Надеюсь, Вам понравилась данная работа')
print('🔘До скорого возвращения в скрипт!👋')
print('🔘С Уважением, 🦁Rama Production🦁')
os.exit()
end
-------------------------------------------------------------------------------
--▶️▶️▶️▶️▶️▶️▶️▶️▶️ Over ◀️◀️◀️◀️◀️◀️◀️◀️◀️--
-------------------------------------------------------------------------------

while(true) do 
menuend = 0 
if gg.isVisible(true) then 
gg.setVisible(false) 
menuend=1 
if menuend==1 then ROS() end 
end end

-------------------------------------------------------------------------------
--▁ ▂ ▃ ▄ ▅ ▆ ▇ ▓ ▒ End ▒ ▓ ▇ ▆ ▅ ▄ ▃ ▂ ▁--
-------------------------------------------------------------------------------