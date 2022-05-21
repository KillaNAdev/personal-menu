p = print

p("[KN]: Script Loaded. \n\n[KN]: https://discord.gg/t3d5qCVgjW")
ESX = nil
    
   


local menu = MenuV:CreateMenu(' ', 'Personal Menu', 'topcenter', 30, 144, 255, 'size-150', 'default', 'menuv', 'default')
local menu1 = MenuV:CreateMenu(' ', 'Misc Options', 'topcenter', 30, 144, 255,'size-150', 'default')
local menu2 = MenuV:CreateMenu(' ', 'Report Options', 'topcenter', 30, 144, 255,'size-150', 'default')

local menu_button2 = menu:AddButton({  label = 'Misc Options', value = menu1 })
local menu_button3 = menu:AddButton({  label = 'Report Options', value = menu2 })


menu1:On('open', function(item)
    menu1:ClearItems() 
    local elements = {
        [1] = {
            label = 'Crosshair Menu',
            value = "1",
            description = 'Press [ENTER] FOR Crosshair Menu'
        },
        [2] = {
            label = 'Holsters & Aim',
            value = "2",
            description = 'Press [ENTER] FOR Holsters & Aim'
        },
        [3] = {
            label = 'Toggle Chat',
            value = "3",
            description = 'Press [ENTER] To Toggle Chat'
        },

        [4] = {
            label = 'Skin Menu',
            value = "4",
            description = 'Press [ENTER] To Skin Menu'
        },

    } 
    for k,v in ipairs(elements) do
        menu1:AddButton({icon = v.icon,label = v.label,value = v,description = v.description,select = function(btn)
            local selection = btn.Value
            WeaponList(selection.value)
        end})
    end
end)

function WeaponList(value)
    if value == '1' then
    ExecuteCommand('crosshair') 
    MenuV:CloseAll()
    elseif value == '2' then
        ExecuteCommand('wam') 
        MenuV:CloseAll()
    elseif value == '3' then
        ExecuteCommand('togglechat') 
        MenuV:CloseAll()
    elseif value == '4' then
        ExecuteCommand('skin') 
        MenuV:CloseAll()
    end
end

menu2:On('open', function(item)
    menu2:ClearItems() 
    local elements = {
        [1] = {
            label = 'RDM Report',
            value = "1",
            description = 'Press [ENTER] FOR RDM Report'
        },
        
      
        [2] = {
            label = 'VDM Report',
            value = "2",
            description = 'Press [ENTER] FOR VDM Report'
        },

        [3] = {
            label = 'Help Report',
            value = "3",
            description = 'Press [ENTER] FOR Help Report'
        },

        [4] = {
            label = 'Expoit Report',
            value = "4",
            description = 'Press [ENTER] FOR Expoit Report'
        },

        [5] = {
            label = 'TOS Report',
            value = "5",
            description = 'Press [ENTER] FOR TOS Report'
        },
    } 
    for k,v in ipairs(elements) do
        menu2:AddButton({icon = v.icon,label = v.label,value = v,description = v.description,select = function(btn)
            local selection = btn.Value
            ToolsList(selection.value)
        end})
    end
end)


function ToolsList(value)
    if value == '1' then
    ExecuteCommand('report rdm') 
    MenuV:CloseAll()
    elseif value == '2' then
        ExecuteCommand('report vdm') 
        MenuV:CloseAll()
    elseif value == '3' then
        ExecuteCommand('report need help') 
        MenuV:CloseAll()
    elseif value == '4' then
        ExecuteCommand('report user using expoit need help') 
        MenuV:CloseAll()
    elseif value == '5' then
        ExecuteCommand('report user said tos need staff member') 
        MenuV:CloseAll()
    end
end




menu:OpenWith('KEYBOARD', 'F5') 
