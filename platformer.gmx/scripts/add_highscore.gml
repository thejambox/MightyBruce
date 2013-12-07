var level = argument0 // 0=easy , 1=normal , 2=hard
var name = string(argument1) // name
var sc = argument2 // score

for (var i = 0; i < 10; i+= 1)
{
    if sc > global.HS[level,i]
    {
        var oldSC,oldName,newSC,newName;
        newSC = sc;
        newName = name;
        for (i=i ; i < 10; i+=1)
        {
            //score
            oldSC = global.HS[level,i];
            global.HS[level,i] = newSC;
            newSC = oldSC
            //name
            oldName = global.HSN[level,i];
            global.HSN[level,i] = newName;
            newName = oldName
        }
        instance_create(0,0,obj_save)
        return true
        break;
    }
}
return false
