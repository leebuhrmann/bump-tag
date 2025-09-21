$tagList = git tag --list

if ($tagList.Length -eq 0) {
    Console.WriteLine("No tags.")
}
else {
    Console.WriteLine("Found some Tags.")
}