function Get-MovieInfo {
    param(
        [string]$movieName
    )

    # URL of Wikipedia page for the movie
    $url = "https://en.wikipedia.org/wiki/$($movieName -replace ' ', '_')"

    # Send a GET request to the URL
    $response = Invoke-WebRequest -Uri $url

    # Check if the request was successful and what to do if it is
    if ($response.StatusCode -eq 200) {
        # Parse the HTML content
        $soup = New-Object -ComObject "HTMLFile"
        $soup.IHTMLDocument2_write($response.Content)

        # Get movie title
        $title = $soup.getElementById('firstHeading').innerText

        # Get movie cover art
        $coverArtElement = $soup.getElementsByClassName('infobox vevent')[0].getElementsByClassName('infobox-image')[0].getElementsByTagName('a')[0]
        $coverArtUrl = $coverArtElement.href

        # Get movie synopsis
        $synopsisElement = $soup.getElementById('Plot')
        $synopsis = $synopsisElement.nextElementSibling.innerText

        return $title, $coverArtUrl, $synopsis
    } else {
        Write-Host "Error fetching data from Wikipedia."
        return $null, $null, $null
    }
}

function Save-ToFile {
    param(
        [string]$movieName,
        [string]$title,
        [string]$coverArtUrl,
        [string]$synopsis
    )

    $fileContent = @"
Title: $title

Cover Art URL: $coverArtUrl

Synopsis:
$synopsis
"@

    Set-Content -Path "$movieName`_info.txt" -Value $fileContent
}

# Main function
function Main {
    $movieName = Read-Host "Enter the movie name"
    $title, $coverArtUrl, $synopsis = Get-MovieInfo -movieName $movieName

    if ($title) {
        Save-ToFile -movieName $movieName -title $title -coverArtUrl $coverArtUrl -synopsis $synopsis
        Write-Host "Information saved to $($movieName)_info.txt"
    } else {
        Write-Host "Movie information not found."
    }
}

Main