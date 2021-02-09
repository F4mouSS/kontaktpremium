#include <sourcemod> 
#include <cstrike>
#include <clientprefs>
#include <sdktools>
#include <multicolors>
#include <chat-processor>
 
public Plugin:myinfo =
{
	name = "CS-4Frags.pl Kontakt i Opis Premium",
	author = "F4mouS",
	description = "Kontakt i Opis Premium",
	version = "1.0", //Wersja podstawowa bez configów, tłumaczeń...
	url = "https://forum.cs-4frags.pl/" 
};

public OnPluginStart()
{
        RegConsoleCmd("geforce", GeForce)
        RegConsoleCmd("lacuty", LaCuty);
        RegConsoleCmd("fb", facebook);
        RegConsoleCmd("facebook", facebook);
        RegConsoleCmd("steam", steam);
        RegConsoleCmd("vip", vip);
        RegConsoleCmd("premium", vip);
        RegConsoleCmd("wlasciciel", wlasciciel);
        RegConsoleCmd("devilguardian", wlasciciel)
        RegConsoleCmd("opiekun", opiekun);
        RegConsoleCmd("kontakt", kontakt);
        RegConsoleCmd("regulamin", regulamin);       
}

 
public Action:regulamin(client, args)
{
 
 
        PrintToChat(client, "\x02★\x01CS-4Frags.pl \x02» \x01Regulamin serwera znajduje się na naszym forum,\n \x01CS-4FRAGS.PL link znajdziesz ponizej!",ITEMDRAW_DISABLED);
 
        PrintToChat(client, "\x07 __________________________________________________");
        PrintToChat(client, "regulamin-link");
        PrintToChat(client, "\x07 __________________________________________________");
        return Plugin_Handled;
}
 
public Action:GeForce(client, args)
{
 
 
        PrintToChat(client, "\x02★\x01CS-4Frags.pl \x02» \x01GeForce Jest Wlascicielem sieci oraz tego serwera,\n \x01Link do Jego profilu znajdziesz ponizej!",ITEMDRAW_DISABLED);
 
        PrintToChat(client, " \x07 __________________________________________________");
        PrintToChat(client, "https://steamcommunity.com/id/geforcekamil/");
        PrintToChat(client, " \x07 __________________________________________________");
        return Plugin_Handled;
}
 
public Action:LaCuty(client, args)
{
 
 
        PrintToChat(client, "\x02★\x01CS-4Frags.pl \x02» \x01LaCuty Jest Wlascicielem sieci oraz tego serwera,\n \x01Link do Jego profilu znajdziesz ponizej!",ITEMDRAW_DISABLED);
 
        PrintToChat(client, " \x07 __________________________________________________");
        PrintToChat(client, "https://steamcommunity.com/id/lacuty");
        PrintToChat(client, " \x07 __________________________________________________");
        return Plugin_Handled;
}
public Action:wlasciciel(client, args)
{
 
 
        PrintToChat(client, "\x02★\x01CS-4Frags.pl \x02» \x01 LaCuty, GeForce i DevilGuardian są właścicielami tego serwera!,\n \x01Linki do ich profili na steamie znajdziesz niżej!",ITEMDRAW_DISABLED);
 
        PrintToChat(client, " \x07 __________________________________________________");
        PrintToChat(client, "\x02★\x01LaCuty \x02» https://steamcommunity.com/id/lacuty");
        PrintToChat(client, " \x07 __________________________________________________");
        PrintToChat(client, "\x02★\x01GeForce \x02»https://steamcommunity.com/id/geforcekamil/");
        PrintToChat(client, " \x07 __________________________________________________");
        PrintToChat(client, "\x02★\x01DevilGuardian \x02»https://steamcommunity.com/id/Ferrarilp/");
        PrintToChat(client, " \x07 __________________________________________________");
        return Plugin_Handled;
}
 
public Action:facebook(client, args)
{
 
 
        PrintToChat(client, "\x02★\x01CS-4Frags.pl \x02» \x01Link do FanPage CS-4FRAGS.PL znajdziesz ponizej!",ITEMDRAW_DISABLED);
 
        PrintToChat(client, " \x07 ═══════════════════════════");
        PrintToChat(client, "https://www.facebook.com/cs4frags");
        PrintToChat(client, " \x07 ═══════════════════════════");
        return Plugin_Handled;
}
 
public Action:steam(client, args)
{
 
 
        PrintToChat(client, "https://steamcommunity.com/groups/CS4FRAGSPL",ITEMDRAW_DISABLED);
 
        PrintToChat(client, " \x07 __________________________________________________");
        PrintToChat(client, "https://steamcommunity.com/groups/CS4FRAGSPL");
        PrintToChat(client, " \x07 __________________________________________________");
        return Plugin_Handled;
}

public Action:opiekun(client, args)
{
 
 
        PrintToChat(client, "\x02★\x01CS-4Frags.pl \x02» \x01 XXXX Jest Opiekunem tego serwera,\n \x01Link do Jego profilu znajdziesz ponizej!",ITEMDRAW_DISABLED);
 
        PrintToChat(client, " \x07 __________________________________________________");
        PrintToChat(client, "link-opiekun1");
        PrintToChat(client, " \x07 __________________________________________________");
        return Plugin_Handled;
}


 
public Action:kontakt(client, args)
{
 
 
        PrintToChat(client, " \x07 __________________________________________________");
        PrintToChat(client, "\x02★\x01CS-4Frags.pl \x02» \x01Właścicielami tego serwera są LaCuty, GeForce i DevilGuardian");
        PrintToChat(client, " \x07 __________________________________________________");       
        PrintToChat(client,"")
        PrintToChat(client, " \x07 __________________________________________________");
        PrintToChat(client, "\x02★\x01CS-4Frags.pl \x02» \x01Aby skontaktować się z nimi wpisz !lacuty, !geforce lub !devilguardian");
        PrintToChat(client, " \x07 __________________________________________________");
        return Plugin_Handled;
}


public Action vip(int client, int args)
{
        Menu menu = new Menu(Klik_vip);
        menu.SetTitle("Co posiada PREMIUM?");
        menu.AddItem("", "1", ITEMDRAW_DISABLED);
        menu.AddItem("", "2", ITEMDRAW_DISABLED);
        menu.AddItem("", "3", ITEMDRAW_DISABLED);
        menu.AddItem("", "4", ITEMDRAW_DISABLED); 
        menu.AddItem("", "5", ITEMDRAW_DISABLED);
        menu.AddItem("", "6", ITEMDRAW_DISABLED);
        menu.AddItem("", "7", ITEMDRAW_DISABLED);
        menu.AddItem("", "8", ITEMDRAW_DISABLED);
        menu.AddItem("1", "Jak zakupić usługę?");
        menu.ExitBackButton = true;
        menu.Display(client, 60);
}
public Klik_vip(Handle:classhandle, MenuAction:action, client, Position)
{
        if(action == MenuAction_Select)
        {
                new String:Item[32];
                GetMenuItem(classhandle, Position, Item, sizeof(Item));
       
                if(StrEqual(Item, "1"))
                {
                        PrintToChat(client, " \x07 __________________________________________________");
                        PrintToChat(client, " \x02★\x01CS-4Frags.pl \x02» \x01Usluge mozesz zakupic za pomoca SMS/PSC/Przelew/PayPal sluzy do tego automatyczny sklep pod komenda \x04!sklepsms");
                        PrintToChat(client, " \x07 __________________________________________________");
                }
        }
        else if(action == MenuAction_End)
                CloseHandle(classhandle);
}
