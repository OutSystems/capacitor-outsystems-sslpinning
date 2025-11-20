# capacitor-outsystems-sslpinning

Enables SSL Pinning for OutSystems Capacitor mobile applications (MABS 12 or higher - ODC only).

## Learn more about the plugin

This repository is owned by Mobile Ecosystem team. Refer to this [Confluence doc on how SSL Pinning works with OutSystems mobile apps](https://outsystemsrd.atlassian.net/wiki/spaces/RDMBLVS/pages/5556371517/How+SSL+Pinning+works+in+OutSystems)

## Development

This is one of the few plugins that does not have a public github repository - it's published to a private npm scope.

If you need to test an OutSystems build pointing to your branch code without publishing a new stable version, here's two ways that you can use:

1. Set the plugin version to a temporary one (e.g. 5.X.X-test1) on [package.json], create a tag with that same version, and then a release on GitHub that uses that tag. That will trigger this repo's GitHub action that in turn triggers an Azure DevOps pipeline. This pipeline requires manual approval to actually trigger the release to npm (if you cannot approve yourself try asking another team member). After that, you should be able to change the version in the plugin's Extensibility Configurations to the test version that was just generated.
2. If you don't have access to Azure, you can instead create a personal access token on GitHub (you may even create a fine-grained token to only give access to this repo), and then set the capacitor plugin on OutSystems Extensibility Configurations to be:
v
```json
{
    "buildConfigurations": {
        "capacitor": {
            "source": {
                "npm": "https://<PERSONAL_ACCESS_TOKEN>@github.com/OutSystems/capacitor-outsystems-sslpinning.git#<YOUR_BRANCH>"
            }
        }
    },
    // ...
}
```

## How to use

This plugin is meant to be used only in OutSystems mobile applications.
Refer to our [customer-facing OutSystems docs for more information](https://success.outsystems.com/documentation/outsystems_developer_cloud/integration_with_external_systems/mobile_plugins/ssl_pinning_plugin/).

The Certificate Pins get injected via [build actions](./build-actions/).

## API 

Most of the SSL Pinning logic happens behind the scenes, and so the plugin doesn't need to offer much API-wise.

<docgen-index>
</docgen-index>

<docgen-api>
</docgen-api>

## Credits

- TrustKit authors and collaborators, [https://github.com/datatheorem/TrustKit](https://github.com/datatheorem/TrustKit) - Used For pinning 
- OkHTTP authors and collaborators, [https://github.com/square/okhttp](https://github.com/square/okhttp)

## LICENSE

This plugin is released under MIT License. See [LICENSE](./LICENSE) for details.