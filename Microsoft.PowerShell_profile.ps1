Set-PoshPrompt -Theme agnoster 
Import-Module posh-git
Import-Module oh-my-posh
Import-Module -Name Terminal-Icons

#Imports PSReadLine
Import-Module PSReadLine

#Tab - Gives a menu of suggestions
Set-PSReadLineKeyHandler -Key Tab -Function MenuComplete
#DownArrow will show the least recent command
Set-PSReadLineKeyHandler -Key DownArrow -Function HistorySearchForward

#During auto completion, pressing arrow key up or down will move the cursor to the end of the completion
Set-PSReadLineOption -HistorySearchCursorMovesToEnd

#Shows tooltip during completion
Set-PSReadLineOption -ShowToolTips
#Gives completions/suggestions from historical commands
Set-PSReadLineOption -PredictionSource History
#UpArrow will show the most recent command
Set-PSReadLineKeyHandler -Key UpArrow -Function HistorySearchBackward
#Alias
Set-Alias -Name vim -Value nvim
Set-Alias -Name ll -Value ls

# which command
function which ($command) {
  Get-Command -Name $command -ErrorAction SilentlyContinue |
    Select-Object -ExpandProperty Path -ErrorAction SilentlyContinue
}
#Nguồn: Nhiều nơi trên mạng. Không thể đếm :))
