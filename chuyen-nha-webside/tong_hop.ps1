# Script: tong_hop.ps1 # Tac gia: HOAN_THIEN
# Ngay tao: HOAN_THIEN
Write-Host "Dang tao bao cao..."
"--- BAO CAO SU CO WEBSITE ===" > HOAN_THIEN
Get-Content HOAN_THIÊN | Select-String "HOAN_THIEN" >> HOAN_THIEN
Get-Content HOAN_THIEN | Select-String "HOAN THIEN" | Measure-Object >> HOAN_THIEN
write-Host "Hoan thanh!"