param location string = 'australiaeast'
param appServicePlanName string = 'az400AppServicePlan'
param webAppName string = 'az400flask-app'
param appInsightsName string = 'az400AppInsights'

resource appServicePlan 'Microsoft.Web/serverfarms@2021-02-01' = {
  name: appServicePlanName
  location: location
  sku: {
    tier: 'Free'
    name: 'F1'
  }
  kind: 'linux'
}

resource appInsights 'Microsoft.Insights/components@2020-02-02' = {
  name: appInsightsName
  location: location
  kind: 'web'
  properties: {
    Application_Type: 'web'
  }
}

resource webApp 'Microsoft.Web/sites@2021-02-01' = {
  name: webAppName
  location: location
  properties: {
    serverFarmId: appServicePlan.id
    siteConfig: {
      linuxFxVersion: 'PYTHON|3.11'
      appSettings: [
        {
          name: 'APPINSIGHTS_INSTRUMENTATIONKEY'
          value: appInsights.properties.InstrumentationKey
        }
      ]
    }
  }
}

output appServiceURL string = webApp.id
output appInsightsInstrumentationKey string = appInsights.properties.InstrumentationKey
