%comspec% /k "C:\Program Files (x86)\Microsoft Visual Studio\2019\Professional\Common7\Tools\VsDevCmd.bat"

Copy-Item -Path "K:\RetailSDK" -Destination "K:\RetailSDK_FBM" -Recurse

tf vc workspace /new $Env:computername /collection:"https://dev.azure.com/Unimaco" /login:axxondev@familiabercomat.com,Cobra.2012 /noprompt

tf vc workfold /map /workspace:$env:COMPUTERNAME /collection:"https://dev.azure.com/Unimaco" /login:axxondev@familiabercomat.com,Cobra.2012 $/PyCommerce/Trunk/DevAxxonB2/Metadata/FamiliaBercomat "K:\AosService\PackagesLocalDirectory\FamiliaBercomat"
tf vc workfold /map /workspace:$env:COMPUTERNAME /collection:"https://dev.azure.com/Unimaco" /login:axxondev@familiabercomat.com,Cobra.2012 $/PyCommerce/Trunk/DevAxxonB2/Projects "C:\Users\Admin26c6e4bed2\source\repos\Fbm"
tf vc workfold /map /workspace:$env:COMPUTERNAME /collection:"https://dev.azure.com/Unimaco" /login:axxondev@familiabercomat.com,Cobra.2012 $/PyCommerce/Trunk/DevAxxonB2/RetailSDK "K:\RetailSDK_FBM"

tf vc get /all $/PyCommerce/Trunk/DevAxxonB2/Metadata/FamiliaBercomat "K:\AosService\PackagesLocalDirectory\FamiliaBercomat"
tf vc get /all $/PyCommerce/Trunk/DevAxxonB2/Projects "C:\Users\Admin26c6e4bed2\source\repos\Fbm"
tf vc get /all $/PyCommerce/Trunk/DevAxxonB2/RetailSDK "K:\RetailSDK_FBM"