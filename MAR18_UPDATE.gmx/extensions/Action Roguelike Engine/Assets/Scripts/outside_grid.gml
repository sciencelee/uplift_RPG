///outside_grid(id, x, y)
var i = argument0;
var xx = argument1;
var yy = argument2;

if (xx < 0 || yy < 0)
{
    return true;
}
else
{
    var w = ds_grid_width(i);
    var h = ds_grid_height(i);
    if (xx >= w || yy >= h)
    {
        return true;
    }
    else
    {
        return false;
    }
}