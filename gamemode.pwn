#include <a_samp>

main() 
{
    print("=== Script from Phone ===");
    print("=== Loaded Successfully ===");
}

public OnGameModeInit()
{
    SetGameModeText("My Phone Script");
    AddPlayerClass(0, 1958.3783, 1343.1572, 15.3746, 269.1425, 0, 0, 0, 0, 0, 0);
    return 1;
}

public OnPlayerConnect(playerid)
{
    SendClientMessage(playerid, -1, "اهلا! هذا سكريبت من الهاتف");
    return 1;
}

public OnPlayerCommandText(playerid, cmdtext[])
{
    if(strcmp(cmdtext, "/hello", true) == 0)
    {
        SendClientMessage(playerid, -1, "Hello from phone script!");
        return 1;
    }
    return 0;
}
