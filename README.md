## Create Service Princpal
vineeth [ ~ ]$ az ad sp create-for-rbac --name "githubactions" --role contributor --scopes /subscriptions/xxxcccc/resourceGroups/az400preparation --sdk-auth
Option '--sdk-auth' has been deprecated and will be removed in a future release.
Creating 'contributor' role assignment under scope '/subscriptions/xxxcccc/resourceGroups/az400preparation'
The output includes credentials that you must protect. Be sure that you do not include these credentials in your code or check the credentials into your source control. For more information, see https://aka.ms/azadsp-cli
{
  "clientId": "rrrrrr",
  "clientSecret": "ffffff",
  "subscriptionId": "xxxcccc",
  "tenantId": "tttttt",
  "activeDirectoryEndpointUrl": "https://login.microsoftonline.com",
  "resourceManagerEndpointUrl": "https://management.azure.com/",
  "activeDirectoryGraphResourceId": "https://graph.windows.net/",
  "sqlManagementEndpointUrl": "https://management.core.windows.net:8443/",
  "galleryEndpointUrl": "https://gallery.azure.com/",
  "managementEndpointUrl": "https://management.core.windows.net/"
}
vineeth [ ~ ]$ 

## Build errors
\"Message\": \"The parameter LinuxFxVersion has an invalid value.\",\r\n  \"Target\": null,\r\n  \"Details\": [\r\n    ***\r\n      \"Message\": \"The parameter LinuxFxVersion has an invalid value.\"\r\n    ***,\r\n    ***\r\n      \"Code\": \"BadRequest\"\r\n    ***,\r\n    ***\r\n      \"ErrorEntity\": ***\r\n        \"ExtendedCode\": \"01007\",\r\n        \"MessageTemplate\": \"The parameter ***0*** has an invalid value.\",\r\n        \"Parameters\": [\r\n          \"LinuxFxVersion\"\r\n        ],\r\n        \"Code\": \"BadRequest\",\r\n        \"Message\": \"The parameter LinuxFxVersion has an invalid value.\"\r\n      ***\r\n    ***\r\n  ],\r\n  \"Innererror\": null\r\n***"***]***
Error: Process completed with exit code 1.
#### PYTHON|3.9 ,3.8 and 3.10 didn't work