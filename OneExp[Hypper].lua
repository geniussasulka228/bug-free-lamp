local get = gg.getFile()
info = gg.prompt({"Выберите файл для защифровки🛡️"},{get},{"file"})
if info == nil then print("Вы отменили") os.exit() end
get = info[1]
 local load = loadfile(info[1])
 if load == nil then gg.alert("Ошибка") os.exit() 
 else
local out = get..".BANSHO.lua"
file = io.open(out,"w")
file:write(string.dump(load)," BANSHO TENIN ENCRYPT")
file:close()
gg.alert("ФАЙЛ СОХРАНЁН В:"..out)
end
