$url1 = "https://download.microsoft.com/download/9/A/A/9AA2328C-B0F7-49E1-A4F9-322792A0DD1C/SQLServer2005_SSMSEE_x64.msi"
$output1 = "C:\Users\Administrator\sqlserver2005SSMSE.msi"
(New-Object Net.WebClient).DownloadFile($url1, $output1) 
exit