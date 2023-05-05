Simple scirpt for outfitbag

🌴DISCORD: Matys#0498🌴

🌹DEPENDENCIES: ox_lib and es_extended🌹

💡How to setup💡

Download MTS_Outfitbag
Put it in your resources folder
Add ensure MTS_Outfitbag to your server cfg
Add items to your inventory
Restart server
Enjoy

!! THE ITEM CAN BE CONFIGURED IN SERVER CFG!!

🔧ITEM NAMES🔧
1. outfitbag
OX Inventory setup:

	['outfitbag'] = {
		label = 'Outfitbag',
		weight = 241,
		stack = true,
		close = false,
	},

🔧FIVEM APPEARANCE🔧
Go to client/client.lua

And place this code somwhere

RegisterNetEvent('fivem-appearance:browseOutfitsOb', function()
    local outfits = lib.callback.await('fivem-appearance:getOutfits', 100)
    local Options = {}
    if outfits then 
      for i=1, #outfits do 
            Options[#Options + 1] = {
                title = outfits[i].name,
                event = 'fivem-appearance:setOutfit',
                args = {
                    ped = outfits[i].ped,
                    components = outfits[i].components,
                    props = outfits[i].props
                }
            }
        end
    else
        
    end
    lib.registerContext({
        id = 'outfit_menu',
        title = Strings.browse_outfits_title,
        options = Options
    })
    lib.showContext('outfit_menu')
end)