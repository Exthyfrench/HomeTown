#Author: Jay Caudill
#Date:9/14/2024
#Function to select two random names from a list for DrugScreen

function Select-RandomNames {
    param (
        [string[]]$names
    )

    if ($names.Count -lt 2) {
        Write-Output "The list must contain at least two names."
        return
    }

    $randomNames = Get-Random -InputObject $names -Count 2
    return $randomNames
}

# Add Names to list "$names", need to have ", " in between as delimiter, make sure to use double quotes.
$names = @("Andrew", "Chris", "Kayla", "Robin", "Kristi")
$selectedNames = Select-RandomNames -names $names
Write-Output "The selected names are: $selectedNames"