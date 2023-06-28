# Azure Environment Switcher for Windows Terminal

Azure Environment Switcher provides an easy way to switch between different Azure environments directly in the Windows Terminal. This feature can be beneficial for Azure administrators and developers who frequently interact with multiple Azure environments.

This project customizes the Windows Terminal configuration to create separate profiles for each Azure environment. When a new terminal tab is opened with one of these profiles, the terminal automatically logs into the specified Azure environment.

## Requirements

This project has the following prerequisites:

1. Windows Terminal
2. PowerShell 7+ or Windows PowerShell 5.1
3. Azure CLI

## Implementation

1. **Determine the PowerShell Path:** 

   Determine the path to your PowerShell executable. This will depend on the version and installation location of PowerShell on your system. 

   For PowerShell 7, the default installation location is typically `C:\\Program Files\\PowerShell\\7\\pwsh.exe`. For Windows PowerShell, it's usually `%SystemRoot%\\System32\\WindowsPowerShell\\v1.0\\powershell.exe`. Replace `powershell_path` in the following steps with your actual PowerShell path.

2. **Create Your PowerShell Profile:**

   Create a PowerShell profile if it doesn't already exist. This profile will contain functions to log into different Azure environments. It is usually located at `%UserProfile%\\Documents\\PowerShell\\Microsoft.PowerShell_profile.ps1` for PowerShell 7, and `%UserProfile%\\Documents\\WindowsPowerShell\\Microsoft.PowerShell_profile.ps1` for Windows PowerShell.

3. **Edit Your PowerShell Profile:**

    Copy the function `Connect-AzAccountForEnvironment` from the `PowerShellProfileExample.ps1` file in this repository, and paste it into your PowerShell profile.

4. **Edit the Windows Terminal Settings:**
   Open the settings of Windows Terminal (using the drop-down menu and selecting 'Settings'). This will open the settings.json file in your default text editor.
In the profiles section, add a new profile for each environment. Replace powershell_path with the path to your PowerShell executable and {generated-guid} with a unique GUID. Example in settings.json file in this repository.
Remember to replace {generated-guid} with a unique GUID for each profile and customize the color schemes to your liking. You can generate new GUIDs using online services or tools available in your development environment.

5. **Optional: Set Up Color Schemes:**
   If you want to visually distinguish between your different environments, you can create a color scheme for each environment. Add these schemes in the schemes section of settings.json and reference them in the colorScheme property of the corresponding profiles.
