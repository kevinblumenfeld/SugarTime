function Convert-PriceList {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory, ValueFromPipeline)]
        [object]
        $pricelist
    )

    process {
        foreach ($Item in $pricelist) {
            if ($Item.Service -and $Item.Price) {
                '  - service: "{0}"' -f $Item.Service
                '    price: "${0}"{1}' -f $Item.Price, "`r`n"
            }
            elseif ($Item.Category) {
                '{0}:' -f $Item.Category
            }
        }
    }
}

