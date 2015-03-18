///Remove an item from the inventory if it exists
/*
argument0 -- item to check for
return true if removed, false if not in inventory
*/


item_checked = ds_list_find_index(global.inventory_list, argument0);

if (item_checked >= 0)
{
    ds_list_delete(global.inventory_list, item_checked);
    removed = true;
}
else 
{
    removed = false;
}
item_checked = noone;
return removed;