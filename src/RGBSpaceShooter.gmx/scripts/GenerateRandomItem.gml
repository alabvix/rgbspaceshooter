var vx = argument[0]
var vy = argument[1]
var item = irandom_range(1,4)

switch (item) {
    case 1:
        LiberateIten(global.ITEM_SINGLE_LASER,vx,vy)
        break;
    case 2:   
        LiberateIten(global.ITEM_DOUBLE_LASER,vx,vy)
        break;
    case 3:
        LiberateIten(global.ITEM_TRI_LASER,vx,vy)
        break;
    case 4:
        LiberateIten(global.HUD_REFIL_20,vx,vy)
        break;
        
}         
