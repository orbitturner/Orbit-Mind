$PSDefaultParameterValues['Out-File:Encoding'] = 'utf8'
$PSDefaultParameterValues['*:Encoding'] = 'utf8'
[console]::InputEncoding = [console]::OutputEncoding = [System.Text.Encoding]::UTF8


Import-Module -Name Terminal-Icons
Import-Module PSReadLine
Set-PSReadLineOption -PredictionSource HistoryAndPlugin
Set-PSReadLineOption -PredictionViewStyle ListView

Set-PSReadLineOption -EditMode Emacs

# Searching for commands with up/down arrow is really handy.  The
# option "moves to end" is useful if you want the cursor at the end
# of the line while cycling through history like it does w/o searching,
# without that option, the cursor will remain at the position it was
# when you used up arrow, which can be useful if you forget the exact
# string you started the search on.
Set-PSReadLineOption -HistorySearchCursorMovesToEnd
Set-PSReadLineKeyHandler -Key UpArrow -Function HistorySearchBackward
Set-PSReadLineKeyHandler -Key DownArrow -Function HistorySearchForward

# Sometimes you enter a command but realize you forgot to do something else first.
# This binding will let you save that command in the history so you can recall it,
# but it doesn't actually execute.  It also clears the line with RevertLine so the
# undo stack is reset - though redo will still reconstruct the command line.
Set-PSReadLineKeyHandler -Key Alt+w `
                         -BriefDescription SaveInHistory `
                         -LongDescription "Save current line in history but do not execute" `
                         -ScriptBlock {
    param($key, $arg)

    $line = $null
    $cursor = $null
    [Microsoft.PowerShell.PSConsoleReadLine]::GetBufferState([ref]$line, [ref]$cursor)
    [Microsoft.PowerShell.PSConsoleReadLine]::AddToHistory($line)
    [Microsoft.PowerShell.PSConsoleReadLine]::RevertLine()
}


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
