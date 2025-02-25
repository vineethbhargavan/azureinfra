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