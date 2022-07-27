$Processes = get-process explorer | Group-Object -Property ProcessName
foreach($Process in $Processes)
{
    $Obj = ($Process.Group|Measure-Object WorkingSet -Sum).Sum
    $Obj 
}
