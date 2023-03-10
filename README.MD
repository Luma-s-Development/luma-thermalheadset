!!This is the non renewed qb-target verision. Due to this some options in the menus had to be moved around to get the other verision download the file "luma-drifting-r" from keymaster!!

1. Add this to qb-core/shared/items.lua

	['tyrekit'] 		= {['name'] = 'tyrekit', 			['label'] = 'Tire Repair Kit', 						['weight'] = 0, 		['type'] = 'item', 		['image'] = 'tyrekit.png', 				['unique'] = true, 		['useable'] = true, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'A Repair kit but for your tires'},

2. Copy the image from the "luma-drifting" folder and paste it to inventory images folder