<#

.NAME
    Powershell_AppQuickInstall_WinGet.ps1    

.SYNOPSIS
    Installs multiple applications using WinGet
    
.Note
    I have nothing to do with any of these mentioned vendors or publishers. Install on your own behalf/risk.
    
#>

# Optional: Export installed WinGet-Apps for later import to a new PC
winget export -o C:\Temp\winget-Export.txt
winget import -i C:\Temp\winget-export.txt --accept-package-agreements --accept-source-agreements

# Update all by winget / store installed applications
winget upgrade --all

# List all installed apps within WinGet
winget list

# Install Default PC software
winget install "Microsoft.Office" --silent --accept-source-agreements --accept-package-agreements
winget install "Microsoft.Edge" --silent --accept-source-agreements --accept-package-agreements
winget install "Microsoft.OneDrive.Enterprise" --silent --accept-source-agreements --accept-package-agreements
winget install "Microsoft.Teams" --silent --accept-source-agreements --accept-package-agreements
winget install "Microsoft.VisioViewer" --silent --accept-source-agreements --accept-package-agreements

winget install "Adobe.Acrobat.Reader.64-bit" --silent --accept-source-agreements --accept-package-agreements
winget install "Piriform.CCleaner" --silent --accept-source-agreements --accept-package-agreements
winget install "TeamViewer.TeamViewer" --silent --accept-source-agreements --accept-package-agreements
winget install "TechSmith.Snagit.2025" --silent --accept-source-agreements --accept-package-agreements
winget install "calibre.calibre" --silent --accept-source-agreements --accept-package-agreements
winget install "dotPDN.PaintDotNet" --silent --accept-source-agreements --accept-package-agreements
winget install "Citrix.Workspace" --silent --accept-source-agreements --accept-package-agreements
winget install "Cisco.Webex" --silent --accept-source-agreements --accept-package-agreements

winget install "Greenshot.Greenshot" --silent --accept-source-agreements --accept-package-agreements --disable-interactivity #Attention to browser-popup
winget install "7Zip.7Zip" --silent --accept-source-agreements --accept-package-agreements

winget install "geeksoftwareGmbH.PDF24Creator" --silent --accept-source-agreements --accept-package-agreements
winget install "Notepad++.Notepad++" --silent --accept-source-agreements --accept-package-agreements
winget install "Google.Chrome" --silent --accept-source-agreements --accept-package-agreements
winget install "DominikReichl.KeePass" --silent --accept-source-agreements --accept-package-agreements
winget install "CodecGuide.K-LiteCodecPack.Basic" --silent --accept-source-agreements --accept-package-agreements

winget install "JasnaPaka.MozBackup" --silent --accept-source-agreements --accept-package-agreements
winget install "Mozilla.Firefox.ESR" --silent --accept-source-agreements --accept-package-agreements # Attention Popup!
winget install "Mozilla.Thunderbird.ESR" --silent --accept-source-agreements --accept-package-agreements

winget install "Microsoft.VCLibs.Desktop.14" --silent --accept-source-agreements --accept-package-agreements
winget install "Microsoft.VCRedist.2005.x64" --silent --accept-source-agreements --accept-package-agreements
winget install "Microsoft.VCRedist.2005.x86" --silent --accept-source-agreements --accept-package-agreements
winget install "Microsoft.VCRedist.2008.x64" --silent --accept-source-agreements --accept-package-agreements
winget install "Microsoft.VCRedist.2008.x86" --silent --accept-source-agreements --accept-package-agreements
winget install "Microsoft.VCRedist.2010.x64" --silent --accept-source-agreements --accept-package-agreements
winget install "Microsoft.VCRedist.2010.x86" --silent --accept-source-agreements --accept-package-agreements
winget install "Microsoft.VCRedist.2012.x64" --silent --accept-source-agreements --accept-package-agreements
winget install "Microsoft.VCRedist.2012.x86" --silent --accept-source-agreements --accept-package-agreements
winget install "Microsoft.VCRedist.2013.x64" --silent --accept-source-agreements --accept-package-agreements
winget install "Microsoft.VCRedist.2013.x86" --silent --accept-source-agreements --accept-package-agreements
winget install "Microsoft.VCRedist.2015+.x64" --silent --accept-source-agreements --accept-package-agreements
winget install "Microsoft.VCRedist.2015+.x86" --silent --accept-source-agreements --accept-package-agreements

# Special software; Maybe not on ervery user PC needed

winget install "Microsoft.Azure.AZCopy.10" --silent --accept-source-agreements --accept-package-agreements
winget install "Microsoft.LAPS" --silent --accept-source-agreements --accept-package-agreements
winget install "Microsoft.MediaCreationTool" --silent --accept-source-agreements --accept-package-agreements
winget install "Microsoft.PowerAutomateDesktop" --silent --accept-source-agreements --accept-package-agreements
winget install "Microsoft.Sysinternals.Autoruns" --silent --accept-source-agreements --accept-package-agreements
winget install "Microsoft.VisualStudioCode" --silent --accept-source-agreements --accept-package-agreements

winget install "Lenovo.DockManager" --silent --accept-source-agreements --accept-package-agreements
winget install "Lenovo.SystemUpdate" --silent --accept-source-agreements --accept-package-agreements
winget install "Jabra.Direct" --silent --accept-source-agreements --accept-package-agreements

winget install "AmN.IconExtractor" --silent --accept-source-agreements --accept-package-agreements
winget install "Antutu.AntutuBenchmark" --silent --accept-source-agreements --accept-package-agreements
winget install "AutoHotkey.AutoHotkey" --silent --accept-source-agreements --accept-package-agreements
winget install "AutoIt.AutoIt" --silent --accept-source-agreements --accept-package-agreements
winget install "ByteDance.CapCut" --silent --accept-source-agreements --accept-package-agreements
winget install "Guru3D.Afterburner" --silent --accept-source-agreements --accept-package-agreements

winget install "NirSoft.UninstallView" --silent --accept-source-agreements --accept-package-agreements
winget install "WiresharkFoundation.Wireshark" --silent --accept-source-agreements --accept-package-agreements



