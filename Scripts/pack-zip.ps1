Remove-Item ..\QuickLook.Plugin.Exe.qlplugin -ErrorAction SilentlyContinue

$files = Get-ChildItem -Path ..\bin\Release\ -Exclude *.pdb,*.xml
Compress-Archive $files ..\QuickLook.Plugin.Exe.zip
Move-Item ..\QuickLook.Plugin.Exe.zip ..\QuickLook.Plugin.Exe.qlplugin