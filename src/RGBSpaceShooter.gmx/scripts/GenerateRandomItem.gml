var vx = argument[0]
var vy = argument[1]
var i = irandom_range(1,6)
if (i == 2 ) {
    LiberateIten(global.ITEM_DOUBLE_LASER,vx,vy)
} else {
    LiberateIten(global.ITEM_SINGLE_LASER,vx,vy)
}


