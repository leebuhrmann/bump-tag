$Uri = "https://api.github.com/users/leebuhrmann/repos"
$Headers = @{
    "Accept" = "application/vnd.github+json"
    "Authorization"="Bearer ${{ secrets.github_pat }}"
    "X-GitHub-Api-Version"="2022-11-28"
}
$Response = Invoke-RestMethod -Uri $Uri -Headers $Headers -Method Get
$response | Select-Object name, description | Format-Table