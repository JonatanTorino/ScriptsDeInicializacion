%comspec% /k "C:\Program Files (x86)\Microsoft Visual Studio\2019\Professional\Common7\Tools\VsDevCmd.bat"

Copy-Item -Path "K:\RetailSDK" -Destination "K:\RetailSDK_Axxon" -Recurse

tf vc workspace /new $Env:computername /collection:"https://axxonconsultinglocalization.visualstudio.com"

tf vc workfold /map /workspace:$env:COMPUTERNAME /collection:"https://axxonconsultinglocalization.visualstudio.com" "$/Axxon-Localizacion Finance and Operations/Trunk/Retail-Dev02/Metadata/AxxonAdvanceInvoice" "K:\AosService\PackagesLocalDirectory\AxxonAdvanceInvoice"
tf vc workfold /map /workspace:$env:COMPUTERNAME /collection:"https://axxonconsultinglocalization.visualstudio.com" "$/Axxon-Localizacion Finance and Operations/Trunk/Retail-Dev02/Metadata/AxxonArgentineanPackage" "K:\AosService\PackagesLocalDirectory\AxxonArgentineanPackage"
tf vc workfold /map /workspace:$env:COMPUTERNAME /collection:"https://axxonconsultinglocalization.visualstudio.com" "$/Axxon-Localizacion Finance and Operations/Trunk/Retail-Dev02/Metadata/AxxonCommerce" "K:\AosService\PackagesLocalDirectory\AxxonCommerce"
tf vc workfold /map /workspace:$env:COMPUTERNAME /collection:"https://axxonconsultinglocalization.visualstudio.com" "$/Axxon-Localizacion Finance and Operations/Trunk/Retail-Dev02/Metadata/AxxonUtilities" "K:\AosService\PackagesLocalDirectory\AxxonUtilities"
tf vc workfold /map /workspace:$env:COMPUTERNAME /collection:"https://axxonconsultinglocalization.visualstudio.com" "$/Axxon-Localizacion Finance and Operations/Trunk/Retail-Dev02/Metadata/LatamLocalizationFramework" "K:\AosService\PackagesLocalDirectory\LatamLocalizationFramework"
tf vc workfold /map /workspace:$env:COMPUTERNAME /collection:"https://axxonconsultinglocalization.visualstudio.com" "$/Axxon-Localizacion Finance and Operations/Trunk/Retail-Dev02/RetailSDK" "K:\RetailSDK_Axxon"

tf vc get /all "$/Axxon-Localizacion Finance and Operations/Trunk/Retail-Dev02/Metadata/AxxonAdvanceInvoice" "K:\AosService\PackagesLocalDirectory\AxxonAdvanceInvoice"
tf vc get /all "$/Axxon-Localizacion Finance and Operations/Trunk/Retail-Dev02/Metadata/AxxonArgentineanPackage" "K:\AosService\PackagesLocalDirectory\AxxonArgentineanPackage"
tf vc get /all "$/Axxon-Localizacion Finance and Operations/Trunk/Retail-Dev02/Metadata/AxxonCommerce" "K:\AosService\PackagesLocalDirectory\AxxonCommerce"
tf vc get /all "$/Axxon-Localizacion Finance and Operations/Trunk/Retail-Dev02/Metadata/AxxonUtilities" "K:\AosService\PackagesLocalDirectory\AxxonUtilities"
tf vc get /all "$/Axxon-Localizacion Finance and Operations/Trunk/Retail-Dev02/Metadata/LatamLocalizationFramework" "K:\AosService\PackagesLocalDirectory\LatamLocalizationFramework"
tf vc get /all "$/Axxon-Localizacion Finance and Operations/Trunk/Retail-Dev02/RetailSDK" "K:\RetailSDK_Axxon"