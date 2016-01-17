function Component()
{
}
Component.prototype.isDefault = function()
{
return true;
}
Component.prototype.createOperations = function()
{
try
{
component.createOperations();
}
catch (e)
{
print(e);
}
if (installer.value("os") === "win")
{
component.addOperation("CreateShortcut", "@TargetDir@/vcGiftTrac.exe", "@StartMenuDir@/vcGiftTrac.lnk");
}
//if (installer.value("os") === "x11")
//{
//component.addOperation("CreateDesktopEntry", "@HomeDir@/.local/share/applications/vcGiftTrac.desktop", "Version=1.0\nType=Application\nTerminal=false\nExec=@TargetDir@/vcGiftTrac\nName=vcGiftTrac\nIcon=@TargetDir@/vcGiftTrac.png\nName[en_US]=vcGiftTrac");
//}
}
