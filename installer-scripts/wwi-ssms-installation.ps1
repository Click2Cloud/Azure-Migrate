$url1 = "https://download.microsoft.com/download/0/4/B/04BE03CD-EAF3-4797-9D8D-2E08E316C998/SQLEXPR_x64_ENU.exe"
$output1 = "C:\Users\Administrator\sqlserver2005SSMSE.exe"
(New-Object Net.WebClient).DownloadFile($url1, $output1) 
exit