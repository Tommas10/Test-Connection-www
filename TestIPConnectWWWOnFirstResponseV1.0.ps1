#This is small PowerSheel script to Test-Connection "www" on first response.
#Under Microsoft Windows 10.
#Created by Tommas Huang 
#Created date: 2019-08-01


for($i = 0; $i -lt 4; $i++){
    if(Test-Connection -Quiet -ComputerName "8.8.8.8" -Count 1){
        $url = "https://www.google.com"
        $ie = New-Object -com internetexplorer.application
        $ie.visible = $true
        $ie.navigate($url)
        break
    }
}
#You can test 4 pings with -Count 1 and break the loop when ping is ok.
