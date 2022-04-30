# powershell profile

If profile is sync with Onedrive add this to the local $Profile file

```powershell
'loading PS Onedrive profile'
. $Env:OneDrive\Devops\Impoptools\Microsoft.PowerShell_profile.ps1
```

Apply the same method if sync with using other ways

# Decrapify

Execute the script to decrapify windows 10 18xx/19xx. Use this:

```powershell
 .\decrapfy.ps1 -onedrive -tablet
```
For 2004 version

https://github.com/farag2/Windows-10-Setup-Script

# Aliases

Folder _aliases_

1. CMD aliases

   *alias.cmd* sets aliases   
   *addtoregistry.reg* tells windows to execute alias.cmd for every CMD open
2. Place *Microsoft.PowerShell_profile.ps1* under *%USERPROFILE%\Documents\WindowsPowerShell*
3. Place .bash_profile under *%USERPROFILE%*


# Markdown references

https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet

# Fix DPI issues with RDP

Folder FixRDPDPI

1. Merge *PreferExternalManigest.reg*
2. Copy *mstsc.exe.manifest* to *%SYSTEMROOT%\system32*

# Bravia commands

Pre-shared key 1234 is set up in the settings menu network & settings -> home network setup -> ip control

TV IP might change since it's set to DHCP

REST reference in https://pro-bravia.sony.net/develop/integrate/rest-api/spec/service/video/v1_0/setPictureQualitySettings/index.html

good info on https://gist.github.com/kalleth/e10e8f3b8b7cb1bac21463b0073a65fb