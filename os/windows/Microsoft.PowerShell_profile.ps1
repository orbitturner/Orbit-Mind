$PSDefaultParameterValues['Out-File:Encoding'] = 'utf8'
$PSDefaultParameterValues['*:Encoding'] = 'utf8'
[console]::InputEncoding = [console]::OutputEncoding = [System.Text.Encoding]::UTF8

# Import-Module oh-my-posh
Import-Module -Name Terminal-Icons
# Import-Module posh-git
# Set-PoshPrompt -Theme paradox
oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH/atomic.omp.json" | Invoke-Expression


# echo "        *####((((((((((##(/             ";
# echo "      .###((((((((///((((#####          ";
# echo "    (###(((/        (((((#((###((,      ";
# echo "  ,##((((.        *(((((((((#((((((     ";
# echo " ##((((*         ,((//((((/   ((((((/   ";
# echo "((((((           ////((//       (//////.";
# echo "((((((*         ////(///          */////";
# echo " .(//////     *////////.         ,/////*";
# echo "    */////*  ,/**////*,         ////*** ";
# echo "      /**********//**         ////***   ";
# echo "       .************       .///****     ";
# echo "              ****///////////***,       ";


# echo "🟢💻 WELCOME TO THE SPACESHIP OF 💻🟢";
echo "   ___      _     _ _     _____                            ";
echo "  /___\_ __| |__ (_) |_  /__   \_   _ _ __ _ __   ___ _ __ ";
echo " //  // '__| '_ \| | __|   / /\/ | | | '__| '_ \ / _ \ '__|";
echo "/ \_//| |  | |_) | | |_   / /  | |_| | |  | | | |  __/ |   ";
echo "\___/ |_|  |_.__/|_|\__|  \/    \__,_|_|  |_| |_|\___|_|   ";
echo "                          ***                              ";
echo "🚀 https://orbitturner.com 🌟 orbitturner@futurize.world 🚀";
# echo "💚🔰 KEEP GOING FURTHER 🔰💚";
# Chocolatey profile
$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile)) {
  Import-Module "$ChocolateyProfile"
}
