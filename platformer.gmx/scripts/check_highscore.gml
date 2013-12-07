var level = argument0 // 0=easy , 1=normal , 2=hard
var sc = argument1 // score

for (var i = 0; i < 10; i+= 1)
{
    if sc > global.HS[level,i]
    {
        return true
        break;
    }
}
return false
