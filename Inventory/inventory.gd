extends Resource

class_name Inv

signal update

@export var slots: Array[InvSlot]

func insert(item: InvItem):
	print("insert_item: ",item)
	var itemslots = slots.filter(func(slot): return slot.item == item)
	if !itemslots.is_empty():
		itemslots[0].amount += 1
		print("added")
	else:
		var emptyslots = slots.filter(func(slot): return slot.item == null)
		#null cause it wasn't looking for anything
		if !emptyslots.is_empty():
			emptyslots[0].item = item
			emptyslots[0].amount = 1
			print("new item")
	update.emit()
	
	
