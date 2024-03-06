# Cz-farm
 A comprehensive farming script designed for the QB-Core Framework .

<div align="center">
  <a href="https://discord.gg/deWH6JVDxK">
    <img align="center" src="https://logopoppin.com/wp-content/uploads/2021/09/discord-logo-current.jpg" width="100">
  </a><br>
  <a href="https://discord.gg/deWH6JVDxK">CZ Scripts HUB Discord</a><br>
</div>

## Dependencies :

- [qb-core](https://github.com/qbcore-framework/qb-core)

- [qb-target:](https://github.com/qbcore-framework/qb-target)

- [qb-menu:](https://github.com/qbcore-framework/qb-menu)

- [Rpemotes](https://github.com/TayMcKenzieNZ/rpemotes)


# Instalation:

- Run SQL File

- Add to qb-target/init.lua at Config.TargetModels:

```lua
    ["farm_cow"] = {
        models = {
            "a_c_cow",
        },
        options = {
            {
                type = "client",
                event = "Cz-farm:client:MilkingCows",
                icon = "fas fa-cow", 
                label = "Milk Cow",
            }
        },
        distance = 2.5,
    },
```

- Add to qb-core/shared/items.lua

```lua
	--Cz-farm 2.0
	["farm_fertilizer"]     	= {["name"] = "farm_fertilizer", 				["label"] = "Agricultural Fertilizer", 			["weight"] = 100, 		["type"] = "item", 			["image"] = "farm_fertilizer.png", 		    ["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
	["farm_tomato"]     		= {["name"] = "farm_tomato", 				    ["label"] = "Tomato Seeds", 					["weight"] = 100, 		["type"] = "item", 			["image"] = "farm_tomato.png", 		    		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
	["farm_wheat"]     			= {["name"] = "farm_wheat", 				    ["label"] = "Wheat Seeds", 						["weight"] = 100, 		["type"] = "item", 			["image"] = "farm_wheat.png", 		    		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
	["farm_potato"]    		= {["name"] = "farm_potato", 				    ["label"] = "Potato Seeds", 					["weight"] = 100, 		["type"] = "item", 			["image"] = "farm_potato.png", 		    	["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
	["farm_cucumber"]     		= {["name"] = "farm_cucumber", 				    ["label"] = "Cucumber Seeds", 					["weight"] = 100, 		["type"] = "item", 			["image"] = "farm_cucumber.png", 		    		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
	["farm_onion"]     		= {["name"] = "farm_onion", 				    ["label"] = "Onion Seeds", 						["weight"] = 100, 		["type"] = "item", 			["image"] = "farm_onion.png", 		    		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
	["farm_cabbage"]     			= {["name"] = "farm_cabbage", 				    	["label"] = "Cabbage Seeds", 					["weight"] = 100, 		["type"] = "item", 			["image"] = "farm_cabbage.png", 		    		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
	["farm_lettuce"]     		= {["name"] = "farm_lettuce", 				    ["label"] = "Lettuce Seeds", 					["weight"] = 100, 		["type"] = "item", 			["image"] = "farm_lettuce.png", 		    		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
	["farm_carrot"]     		= {["name"] = "farm_carrot", 				    ["label"] = "Carrot Seeds", 					["weight"] = 100, 		["type"] = "item", 			["image"] = "farm_carrot.png", 		    		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
	["farm_beetrootseed"]     		= {["name"] = "farm_beetrootseed", 				["label"] = "Beet Seeds", 						["weight"] = 100, 		["type"] = "item", 			["image"] = "farm_beetrootseed.png", 		    	["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
	["farm_turnip"]     			= {["name"] = "farm_turnip", 				    	["label"] = "Turnip Seeds", 					["weight"] = 100, 		["type"] = "item", 			["image"] = "farm_turnip.png", 		    		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
	["farm_mushrooms"]     		= {["name"] = "farm_mushrooms", 				["label"] = "Mushrooms Seeds", 					["weight"] = 100, 		["type"] = "item", 			["image"] = "farm_mushrooms.png", 		    	["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
	["watering_can"]     		= {["name"] = "watering_can", 				    ["label"] = "Empty Watering Can", 				["weight"] = 100, 		["type"] = "item", 			["image"] = "watering_can.png", 		    	["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
	["farm_watering_can_full"]     	= {["name"] = "farm_watering_can_full", 		 	["label"] = "Full Watering Can", 				["weight"] = 100, 		["type"] = "item", 			["image"] = "watering_can.png", 		    	["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
	["farm_shovel"]     			= {["name"] = "farm_shovel", 				    	["label"] = "Shovel", 							["weight"] = 100, 		["type"] = "item", 			["image"] = "farm_shovel.png", 		    			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
	["farm_wheat_harvested"]     	= {["name"] = "farm_wheat_harvested", 			["label"] = "Wheat", 							["weight"] = 100, 		["type"] = "item", 			["image"] = "farm_wheat_harvested.png", 		    ["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
	["farm_tomato_harvested"]     = {["name"] = "farm_tomato_harvested", 			["label"] = "Tomato", 							["weight"] = 100, 		["type"] = "item", 			["image"] = "farm_tomato_harvested.png", 		    ["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
	["farm_turnip_harvested"]     	= {["name"] = "farm_turnip_harvested", 				["label"] = "Turnip", 							["weight"] = 100, 		["type"] = "item", 			["image"] = "farm_turnip_harvested.png", 		    ["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
	["farm_beetroot_harvested"]     	= {["name"] = "farm_beetroot_harvested", 				["label"] = "Beetroot", 							["weight"] = 100, 		["type"] = "item", 			["image"] = "farm_beetroot_harvested.png", 		    ["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
	["farm_potatoes_harvested"]    = {["name"] = "farm_potatoes_harvested", 			["label"] = "Potato", 							["weight"] = 100, 		["type"] = "item", 			["image"] = "farm_potatoes_harvested.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
	["farm_cucumber_harvested"]     = {["name"] = "farm_cucumber_harvested", 			["label"] = "Cucumber", 						["weight"] = 100, 		["type"] = "item", 			["image"] = "farm_cucumber_harvested.png", 		    ["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
	["farm_onion_harvested"]     = {["name"] = "farm_onion_harvested", 			["label"] = "Onion", 							["weight"] = 100, 		["type"] = "item", 			["image"] = "farm_onion_harvested.png", 		    ["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
	["farm_cabbage_harvested"]     	= {["name"] = "farm_cabbage_harvested", 				["label"] = "Cabbage", 							["weight"] = 100, 		["type"] = "item", 			["image"] = "farm_cabbage_harvested.png", 		    ["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
	["farm_lettuce_harvested"]     = {["name"] = "farm_lettuce_harvested", 			["label"] = "Lettuce", 							["weight"] = 100, 		["type"] = "item", 			["image"] = "farm_lettuce_harvested.png", 		    ["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
	["farm_carrot_harvested"]     = {["name"] = "farm_carrot_harvested", 			["label"] = "Carrot", 							["weight"] = 100, 		["type"] = "item", 			["image"] = "farm_carrot_harvested.png", 		    ["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
	["farm_mushrooms_harvested"]  = {["name"] = "farm_mushrooms_harvested", 		["label"] = "Mushrooms", 						["weight"] = 100, 		["type"] = "item", 			["image"] = "farm_mushrooms_harvested.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
	["farm_milk"]  			= {["name"] = "farm_milk", 					["label"] = "Fresh Milk", 						["weight"] = 100, 		["type"] = "item", 			["image"] = "farm_milk.png", 					["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
	["farm_apple"]  				= {["name"] = "farm_apple", 						["label"] = "Apple", 							["weight"] = 100, 		["type"] = "item", 			["image"] = "farm_apple.png", 					["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
	["farm_peach"]  			= {["name"] = "farm_peach", 					["label"] = "Peach", 							["weight"] = 100, 		["type"] = "item", 			["image"] = "farm_peach.png", 				["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
	["farm_pear"]  				= {["name"] = "farm_pear", 						["label"] = "Pear", 							["weight"] = 100, 		["type"] = "item", 			["image"] = "farm_pear.png", 					["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
	["farm_mango"]  			= {["name"] = "farm_mango", 					["label"] = "Mango", 							["weight"] = 100, 		["type"] = "item", 			["image"] = "farm_mango.png", 					["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
	["farm_orange"]  			= {["name"] = "farm_orange", 					["label"] = "Orange", 							["weight"] = 100, 		["type"] = "item", 			["image"] = "farm_orange.png", 				["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
	["farm_lemon"]  			= {["name"] = "farm_lemon", 					["label"] = "Limon", 							["weight"] = 100, 		["type"] = "item", 			["image"] = "farm_lemon.png", 					["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
	["farm_scissor"]  			= {["name"] = "farm_scissor", 					["label"] = "Farm Scisors", 					["weight"] = 100, 		["type"] = "item", 			["image"] = "farm_scissor.png", 				["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
	["farm_tomato_ketchup"]  		= {["name"] = "farm_tomato_ketchup", 				["label"] = "Tomato Juice", 					["weight"] = 100, 		["type"] = "item", 			["image"] = "farm_tomato_ketchup.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
	["farm_flour"]  			= {["name"] = "farm_flour", 					["label"] = "Wheat Flour", 						["weight"] = 100, 		["type"] = "item", 			["image"] = "farm_flour.png", 				["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
	["farm_orange_juice"]  		= {["name"] = "farm_orange_juice", 				["label"] = "Orange Juice", 					["weight"] = 100, 		["type"] = "item", 			["image"] = "farm_orange_juice.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
	["farm_peach_juice"]  		= {["name"] = "farm_peach_juice", 				["label"] = "Peach Juice", 						["weight"] = 100, 		["type"] = "item", 			["image"] = "farm_peach_juice.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
	["farm_apple_juice"]  		= {["name"] = "farm_apple_juice", 				["label"] = "Apple Juice", 						["weight"] = 100, 		["type"] = "item", 			["image"] = "farm_apple_juice.png", 				["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
	["farm_mango_juice"]  		= {["name"] = "farm_mango_juice", 				["label"] = "Mango Juice", 						["weight"] = 100, 		["type"] = "item", 			["image"] = "farm_mango_juice.png", 				["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
	["farm_pear_juice"]  		= {["name"] = "farm_pear_juice", 				["label"] = "Pear Juice", 						["weight"] = 100, 		["type"] = "item", 			["image"] = "farm_pear_juice.png", 				["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
	["farm_lemon_juice"]  		= {["name"] = "farm_lemon_juice", 				["label"] = "Lemon Juice", 						["weight"] = 100, 		["type"] = "item", 			["image"] = "farm_lemon_juice.png", 				["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},

```

- Add images to qb-inventory/html/images