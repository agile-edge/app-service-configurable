<a name="2.0.0"></a>

## Change Logs for EdgeX Dependencies

- [app-functions-sdk-go](https://github.com/edgexfoundry/app-functions-sdk-go/blob/main/CHANGELOG.md)

## [4.0.0] Odessa - 2025-03-12 (Only compatible with the 4.x releases)

### ✨  Features

- Add new build-noziti and docker-noziti targets into Makefile ([1114b19…](https://github.com/edgexfoundry/app-service-configurable/commit/1114b1985558a9549ef2aa3b9a81ca743a036c0e))
- Enable PIE support for ASLR and full RELRO ([9200144…](https://github.com/edgexfoundry/app-service-configurable/commit/92001444439b5571917969c8a7ea74bbf5fbffd8))
- Add postgres db init start script ([#673](https://github.com/edgexfoundry/app-service-configurable/issues/673)) ([15c04fe…](https://github.com/edgexfoundry/app-service-configurable/commit/15c04fe60731885bccda40a58f5d4699135bca2b))
```text

BREAKING CHANGE: Switched default database to PostgreSQL across all services

```
- Add openziti support ([#652](https://github.com/edgexfoundry/app-service-configurable/issues/652)) ([d14d288…](https://github.com/edgexfoundry/app-service-configurable/commit/d14d2885d31a8bbc3eba5c894c279c3ceea6765f))
- Add MQTT Export preconnect settings to profiles ([#633](https://github.com/edgexfoundry/app-service-configurable/issues/633)) ([bdd01e9…](https://github.com/edgexfoundry/app-service-configurable/commit/bdd01e90b95e6b38e37d562ed60190accab1224f))

### ♻ Code Refactoring

- Update module to v4 ([cdafe4a…](https://github.com/edgexfoundry/app-service-configurable/commit/cdafe4aac16d8228de4a4ea5c9f65f47895288ba))
```text

BREAKING CHANGE: import paths will need to change to v4, also replace consul with core keeper

```

### 🐛 Bug Fixes

- Only one ldflags flag is allowed ([e14eefe…](https://github.com/edgexfoundry/app-service-configurable/commit/e14eefe25dbc7c62754f0ebe2ed209c64148497d))

### 👷 Build

- Upgrade the SDK version in the makefile ([970307e…](https://github.com/edgexfoundry/app-service-configurable/commit/970307ebbe9179528340d1a166cd371fef10ef11))
- Upgrade to go-1.23, Linter1.61.0 and Alpine 3.20 ([b97eeb4…](https://github.com/edgexfoundry/app-service-configurable/commit/b97eeb49fda9cd5b1e2d1d18cf48f9a15151a2fe))

## [v3.1.0] Napa - 2023-11-15 (Only compatible with the 3.x releases)

### ✨  Features

- Remove snap packaging ([#612](https://github.com/edgexfoundry/app-service-configurable/issues/612)) ([5219991…](https://github.com/edgexfoundry/app-service-configurable/commit/52199917436ecc7613ed2233e2d3644ee65f7bdc))
```text

BREAKING CHANGE: Remove snap packaging ([#612](https://github.com/edgexfoundry/app-service-configurable/issues/612))

```
- Add defaults for new Last Will options ([#610](https://github.com/edgexfoundry/app-service-configurable/issues/610)) ([f689f4b…](https://github.com/edgexfoundry/app-service-configurable/commit/f689f4ba914cd94db4edcd504921ce235cc7ee6f))


### ♻ Code Refactoring

- Remove github.com/pkg/errors from Attribution.txt ([#584](https://github.com/edgexfoundry/app-service-configurable/issues/584)) ([7eb6870…](https://github.com/edgexfoundry/app-service-configurable/commit/7eb6870f083ace6c1f79e58d33ce706f6bd3bcba))


### 🐛 Bug Fixes

- Add InsecureSecrets section to external-mqtt-trigger profile ([#579](https://github.com/edgexfoundry/app-service-configurable/issues/579)) ([766558f…](https://github.com/edgexfoundry/app-service-configurable/commit/766558fd32b3d60314202d2661e12183be73f345))


### 📖 Documentation

- Update link to point to new docs section ([#616](https://github.com/edgexfoundry/app-service-configurable/issues/616)) ([b279e99…](https://github.com/edgexfoundry/app-service-configurable/commit/b279e99bc72aab90b799f17157d7f2e7dfbc53e7))
- Update repo links in the readme ([#591](https://github.com/edgexfoundry/app-service-configurable/issues/591)) ([426d498…](https://github.com/edgexfoundry/app-service-configurable/commit/426d4987f89e41a3a60d71327a42892dbbd5fd11))


### 👷 Build

- Upgrade to go-1.21, Linter1.54.2 and Alpine 3.18 ([#594](https://github.com/edgexfoundry/app-service-configurable/issues/594)) ([759f161…](https://github.com/edgexfoundry/app-service-configurable/commit/759f161ccdd1991ea406a7cb9b3094479a703e86))


### 🤖 Continuous Integration

- Add automated release workflow on tag creation ([f1d380f…](https://github.com/edgexfoundry/app-service-configurable/commit/f1d380f375b477c8bbf415d18cc168c061acd04c))



## [v3.0.1] Minnesota - 2023-07-25 (Only compatible with the 3.x releases)
### Features ✨
Security - Add missing authentication hooks to standard routes (#1447)

BREAKING CHANGE: EdgeX standard routes, except /ping, will require authentication when running in secure mode

## [v3.0.0] Minnesota - 2023-05-31 (Only compatible with the 3.x releases)

### Features ✨

- Remove ZeroMQ MessageBus capability ([#4955b72](https://github.com/edgexfoundry/app-service-configurable/commit/4955b72e7e2333f21a3dea3e923d2a5036ff361a))
  ```text
  BREAKING CHANGE: ZeroMQ MessageBus capability no longer available
  ```
- Use latest SDK for MessageBus Request API ([#ae4d96f](https://github.com/edgexfoundry/app-service-configurable/commit/ae4d96f51e6c1b0b3f3d1c807dd8827f71e240f6))
  ```text
  BREAKING CHANGE: Command Client MessageBus topic configuration changed
  ```
- Updates for common config ([#731cbe3](https://github.com/edgexfoundry/app-service-configurable/commit/731cbe338f54dd8dac0167938734c2fced573176))
  ```text
  BREAKING CHANGE: configuration file changed to remove common config settings
  ```
- Update profiles to use TargetType flag for configurable functions ([#509](https://github.com/edgexfoundry/app-service-configurable/issues/509)) ([#851ef8f](https://github.com/edgexfoundry/app-service-configurable/commits/851ef8f))
- Enable core-command via message bus ([#505](https://github.com/edgexfoundry/app-service-configurable/issues/505)) ([#aa420e0](https://github.com/edgexfoundry/app-service-configurable/commits/aa420e0))

### Bug Fixes 🐛

- Consume Store and Forward fix in latest SDK ([#555](https://github.com/edgexfoundry/app-service-configurable/issues/555)) ([#f6c79ab](https://github.com/edgexfoundry/app-service-configurable/commits/f6c79ab))
- **snap:** Refactor to avoid conflicts with readonly config provider directory ([#533](https://github.com/edgexfoundry/app-service-configurable/issues/533)) ([#dd1354e](https://github.com/edgexfoundry/app-service-configurable/commits/dd1354e))

### Code Refactoring ♻

- Use latest SDK for flattened config stem ([#567a951](https://github.com/edgexfoundry/app-service-configurable/commit/567a9513bdf41f4241f3f16eba2134c73a24fbd7))
  ```text
  BREAKING CHANGE: Location of service configuration in Consul changed
  ```
- Rename command line flags for the sake of consistency ([#cb787cf](https://github.com/edgexfoundry/app-service-configurable/commit/cb787cf93205ab4377f67f508fa24aa232c36287))
  ```text
  BREAKING CHANGE: renamed -c/--confdir to -cd/--configDirand -f/--file to -cf/--configFile
  ```
- Adjust configuration for reworked MessageBus config ([#fd65586](https://github.com/edgexfoundry/app-service-configurable/commit/fd655868e697ec9388f878b1610694eb9d0dc845))
  ```text
  BREAKING CHANGE: MessageBus configuration is now standalone from Trigger
  ```
- Update message bus topic wild cards ([#2fb2187](https://github.com/edgexfoundry/app-service-configurable/commit/2fb2187aee5de59b88737c8c64f9f7346195a6a3))
  ```text
  BREAKING CHANGE: use MQTT wild cards + for single level and # for multiple levels
  ```
- Replace internal topics from config with new constants and use base topic ([#ae5c3a2](https://github.com/edgexfoundry/app-service-configurable/commit/ae5c3a222e830755d999430446b5cf0927b9c680))
  ```text
  BREAKING CHANGE: Internal topics no longer configurable, except the base topic. Trigger topics for edgex-messagebus and external-mqtt now directly under Trigger section. All configured topics (subscribe and function pipeline) now automatically have the base topic (default of "edgex/") prepended.
  ```
- Consume Secret DTO changes in App SDK ([#38d2ea](https://github.com/edgexfoundry/app-service-configurable/commit/38d2ea53745de48730f2be4fd311f21cab61737a))
  ```text
  BREAKING CHANGE: Secret dtos Path property renamed to SecretName
  ```
- Renamed SecretName to SecretValueKey and SecretnPath to SecretName ([#64e14a40](https://github.com/edgexfoundry/app-service-configurable/commit/64e14a40a239d934ad2ac2e5656398ec3b76321c))
  ```text
  BREAKING CHANGE: Renamed SecretName to SecretValueKey and SecretPath to SecretName, removed push-to-core profile
  ```
- Change configuration profile formats to YAML ([#726c7ba](https://github.com/edgexfoundry/app-service-configurable/commit/726c7bac779ae455276856dfdf2d144874947dc5))
  ```text
  BREAKING CHANGE: Configuration profiles now uses YAML format
  ```
- Consume MakeItRun rename to Run ([#558](https://github.com/edgexfoundry/app-service-configurable/issues/558)) ([#023efeb](https://github.com/edgexfoundry/app-service-configurable/commits/023efeb))
- **snap:** Drop the support for legacy snap env options ([#33a8a0f](https://github.com/edgexfoundry/app-service-configurable/commit/33a8a0fb1d1881fd1b73fa23662390bbef39c173))
  ```text
  BREAKING CHANGE: Drop the support for deprecated snap options starting with `env.`
  ```
- **snap:** Update command and metadata sourcing ([#532](https://github.com/edgexfoundry/app-service-configurable/issues/532)) ([#11af183](https://github.com/edgexfoundry/app-service-configurable/commits/11af183))

### Documentation 📖

- Add main branch Warning ([#561](https://github.com/edgexfoundry/app-service-configurable/issues/561)) ([#a1dbe1c](https://github.com/edgexfoundry/app-service-configurable/commits/a1dbe1c))

### Build 👷

- Update to Go 1.20, Alpine 3.17 and linter v1.51.2 ([#530](https://github.com/edgexfoundry/app-service-configurable/issues/530)) ([#a803cbc](https://github.com/edgexfoundry/app-service-configurable/commits/a803cbc))
- Disable CGO for all docker builds so always work ([#494](https://github.com/edgexfoundry/app-service-configurable/issues/494)) ([#8115572](https://github.com/edgexfoundry/app-service-configurable/commits/8115572))
- **snap:** Remove ZMQ from snap ([#a0e8a3](https://github.com/edgexfoundry/app-service-configurable/commit/a0e8a3cf402e2d18cab125a1c4a8a92554f18848))

## [v2.3.0] - Levski - 2022-11-09 (Only compatible with the 2.x releases)

### Features ✨

- Add new service metrics to appropriate profiles ([#437](https://github.com/edgexfoundry/app-service-configurable/issues/437)) ([#bef6658](https://github.com/edgexfoundry/app-service-configurable/commits/bef6658))
- Add NATS configuration ([#460](https://github.com/edgexfoundry/app-service-configurable/issues/460)) ([#47bb9df](https://github.com/edgexfoundry/app-service-configurable/commits/47bb9df))
- **snap:** add config interface with unique identifier ([#475](https://github.com/edgexfoundry/app-service-configurable/issues/475)) ([#a73b250](https://github.com/edgexfoundry/app-service-configurable/commits/a73b250))

### Documentation

- Update attribution.txt to reference paho license as v2.0 ([#428](https://github.com/edgexfoundry/app-service-configurable/issues/428)) ([#1efec17](https://github.com/edgexfoundry/app-service-configurable/commits/1efec17))

### Code Refactoring ♻

- **snap:** edgex-snap-hooks related upgrade  ([#450](https://github.com/edgexfoundry/app-service-configurable/issues/450)) ([#6216b3a](https://github.com/edgexfoundry/app-service-configurable/commits/6216b3a))

### Build 👷

- Upgrade to Go 1.18 and alpine 3.16 ([#438](https://github.com/edgexfoundry/app-service-configurable/issues/438)) ([#77beed3](https://github.com/edgexfoundry/app-service-configurable/commits/77beed3))
- Optimize test-attribution-txt.sh to use go.mod, not vendor ([#430](https://github.com/edgexfoundry/app-service-configurable/issues/430)) ([#f853e12](https://github.com/edgexfoundry/app-service-configurable/commits/f853e12))
- Add NATS convenience build targets ([#463](https://github.com/edgexfoundry/app-service-configurable/issues/463)) ([#f1292a7](https://github.com/edgexfoundry/app-service-configurable/commits/f1292a7))

## [v2.2.0] - Kamakura - 2022-05-11 (Only compatible with the 2.x releases)

### Features ✨

- No ZMQ on windows ([#362](https://github.com/edgexfoundry/app-service-configurable/issues/362)) ([#d12ee3a](https://github.com/edgexfoundry/app-service-configurable/commits/d12ee3a))

  ```
  BREAKING CHANGE:
  ZeroMQ no longer supported on native Windows for EdgeX
  MessageBus
  ```

- Add new metrics-influxdb profile ([#410](https://github.com/edgexfoundry/app-service-configurable/issues/410)) ([#b8e8d18](https://github.com/edgexfoundry/app-service-configurable/commits/b8e8d18))

- Enable use of common app service metrics ([#409](https://github.com/edgexfoundry/app-service-configurable/issues/409)) ([#4cd65a0](https://github.com/edgexfoundry/app-service-configurable/commits/4cd65a0))

- Enable Delay Start capability  ([#404](https://github.com/edgexfoundry/app-service-configurable/issues/404)) ([#1a526f1](https://github.com/edgexfoundry/app-service-configurable/commits/1a526f1))

- **snap:** use updated environment variable injection ([#407](https://github.com/edgexfoundry/app-service-configurable/issues/407)) ([#df3e4aa](https://github.com/edgexfoundry/app-service-configurable/commits/df3e4aa))

- **snap:** refer content interface to edgex-config-provider repo ([#62cfba0](https://github.com/edgexfoundry/app-service-configurable/commits/62cfba0))

- **snap:** add additional tokens for app-service-configurable profiles ([#361](https://github.com/edgexfoundry/app-service-configurable/issues/361)) ([#adf35ca](https://github.com/edgexfoundry/app-service-configurable/commits/adf35ca))

- **snap:** add content interface `app-service-config` ([#41aa95c](https://github.com/edgexfoundry/app-service-configurable/commits/41aa95c))

### Bug Fixes 🐛

- **snap:** expose parent directory in app-config plug ([#a7da7e3](https://github.com/edgexfoundry/app-service-configurable/commits/a7da7e3))

### Documentation 📖

- **snap:** update snap/README and README  ([#360](https://github.com/edgexfoundry/app-service-configurable/issues/360)) ([#c4eee9a](https://github.com/edgexfoundry/app-service-configurable/commits/c4eee9a))
- **snap:** Remove usage instructions from readme ([#416](https://github.com/edgexfoundry/app-service-configurable/issues/416)) ([#0ec6f66](https://github.com/edgexfoundry/app-service-configurable/commits/0ec6f66))
- **snap:** add relevant README for content interface app-service-config ([#bb470c8](https://github.com/edgexfoundry/app-service-configurable/commits/bb470c8))

### Build 👷

- Go 1.17 related changes ([#368](https://github.com/edgexfoundry/app-service-configurable/issues/368)) ([#1b0e324](https://github.com/edgexfoundry/app-service-configurable/commits/1b0e324))
- enable security hardening ([#396](https://github.com/edgexfoundry/app-service-configurable/issues/396)) ([#e18cf4e](https://github.com/edgexfoundry/app-service-configurable/commits/e18cf4e))
- **snap:** source metadata from repo ([#380](https://github.com/edgexfoundry/app-service-configurable/issues/380)) ([#426cd0b](https://github.com/edgexfoundry/app-service-configurable/commits/426cd0b))
- **snap:** add CI workflow, disable jenkins snap build ([#393](https://github.com/edgexfoundry/app-service-configurable/issues/393)) ([#ab4754b](https://github.com/edgexfoundry/app-service-configurable/commits/ab4754b))
- **snap:** add support for secretsfile config ([#f5409b6](https://github.com/edgexfoundry/app-service-configurable/commits/f5409b6))

## [v2.1.0] - Jakarta - 2021-11-17 (Only compatible with the 2.x releases)

### Features ✨

- Add new Secrets File config settings to profiles ([#345](https://github.com/edgexfoundry/app-service-configurable/issues/345)) ([#329a187](https://github.com/edgexfoundry/app-service-configurable/commits/329a187))
- Add CORS capability ([#342](https://github.com/edgexfoundry/app-service-configurable/issues/342)) ([#c489e49](https://github.com/edgexfoundry/app-service-configurable/commits/c489e49))
- Add external-mqtt-trigger configuration file for TAF test ([#338](https://github.com/edgexfoundry/app-service-configurable/issues/338)) ([#2fab480](https://github.com/edgexfoundry/app-service-configurable/commits/2fab480))
- Update for SDK multi-topics per pipeline ([#323](https://github.com/edgexfoundry/app-service-configurable/issues/323)) ([#de5cd0c](https://github.com/edgexfoundry/app-service-configurable/commits/de5cd0c))
- Enable Pipeline Per Topic capability in configurable pipelines. ([#313](https://github.com/edgexfoundry/app-service-configurable/issues/313)) ([#3f87ca8](https://github.com/edgexfoundry/app-service-configurable/commits/3f87ca8))

### Bug Fixes 🐛

- Add/Fix optional MQTT MessageBus settings ([#305](https://github.com/edgexfoundry/app-service-configurable/issues/305)) ([#2474bfb](https://github.com/edgexfoundry/app-service-configurable/commits/2474bfb))

### Code Refactoring ♻

- Clean up TOML quotes and add LF MD files ([#f597c7f](https://github.com/edgexfoundry/app-service-configurable/commits/f597c7f))

## [2.0.1] - Ireland - 2021-07-28 (Not Compatible with 1.x releases)

### Bug Fixes 🐛

- Fixes from SDK

## [2.0.0] - Ireland - 2021-06-30 (Not Compatible with 1.x releases)

### Change Logs for EdgeX Dependencies

- [app-functions-sdk-go](https://github.com/edgexfoundry/app-functions-sdk-go/blob/master/CHANGELOG.md)

### Features ✨

- Update profiles for V2 PushToCoreData ([#281](https://github.com/edgexfoundry/app-service-configurable/issues/281)) ([#e4f9454](https://github.com/edgexfoundry/app-service-configurable/commits/e4f9454))
    ```
    BREAKING CHANGE:
    PushToCoreData configuration parameters have changed
    ```
    
- Add additional parameters for Multiple HTTP export destinations via chaining ([#278](https://github.com/edgexfoundry/app-service-configurable/issues/278)) ([#01778f3](https://github.com/edgexfoundry/app-service-configurable/commits/01778f3))

- Add KeepAlive and ConnectTimeout parameters for MQTT Export ([#265](https://github.com/edgexfoundry/app-service-configurable/issues/265)) ([#99c32bb](https://github.com/edgexfoundry/app-service-configurable/commits/99c32bb))

- Add secure MessageBus capability ([#243](https://github.com/edgexfoundry/app-service-configurable/issues/243)) ([#dfdcab1](https://github.com/edgexfoundry/app-service-configurable/commits/dfdcab1))

- Switch to Redis as the default MessageBus ([#242](https://github.com/edgexfoundry/app-service-configurable/issues/242)) ([#3684568](https://github.com/edgexfoundry/app-service-configurable/commits/3684568))
    ```
    BREAKING CHANGE:
    All services sending/receiving Events must now be configured to use Redis as the MessageBus
    rules-engine-redis profiles has been removed.
    ```
    
- Add Registry/Config Access token capability via Secret Provider ([#229](https://github.com/edgexfoundry/app-service-configurable/issues/229)) ([#7b79720](https://github.com/edgexfoundry/app-service-configurable/commits/7b79720))
    ```
    BREAKING CHANGE:
    When running with the secure Edgex Stack now need to have the SecretStore configured, and run with EDGEX_SECURITY_SECRET_STORE=true so a Vault token is created.
    ```
    
- Enable Registry and Config Access Token ([#224](https://github.com/edgexfoundry/app-service-configurable/issues/224)) ([#4992cc8](https://github.com/edgexfoundry/app-service-configurable/commits/4992cc8))

    ```
    BREAKING CHANGE:
    Service key changed to `app-<profile name>` to standerdize Vault token and Consul access token creation
    ```

- Add new FilterBySourceName to profiles ([#211](https://github.com/edgexfoundry/app-service-configurable/issues/211)) ([#02c1bdd](https://github.com/edgexfoundry/app-service-configurable/commits/02c1bdd))

- Update profiles for latest SDK changes ([#196](https://github.com/edgexfoundry/app-service-configurable/issues/196)) ([#50a23fb](https://github.com/edgexfoundry/app-service-configurable/commits/50a23fb))
    ```
    BREAKING CHANGE:
    requires SecretStore.Type be set to `vault`
    ```
    
- Added new secrets configuration parameters to EncryptWithAES ([#193](https://github.com/edgexfoundry/app-service-configurable/issues/193)) ([#0f5331e](https://github.com/edgexfoundry/app-service-configurable/commits/0f5331e))

- Update profiles for new filter enhancements ([#187](https://github.com/edgexfoundry/app-service-configurable/issues/187)) ([#8e9141f](https://github.com/edgexfoundry/app-service-configurable/commits/8e9141f))

- Update profiles for new subscribe topic for V2 DTOs ([#175](https://github.com/edgexfoundry/app-service-configurable/issues/175)) ([#b2b5516](https://github.com/edgexfoundry/app-service-configurable/commits/b2b5516))

- Update profiles for multiple MessageBus subscriptions ([#164](https://github.com/edgexfoundry/app-service-configurable/issues/164)) ([#2d8b7de](https://github.com/edgexfoundry/app-service-configurable/commits/2d8b7de))

- Remove MarkAsPushed feature ([#159](https://github.com/edgexfoundry/app-service-configurable/issues/159)) ([#ed155f3](https://github.com/edgexfoundry/app-service-configurable/commits/ed155f3))

    ```
    BREAKING CHANGE:
    MarkedAsPushed capability no longer supported
    ```

- Update configuration files to set default non-TLS ([#157](https://github.com/edgexfoundry/app-service-configurable/issues/157)) ([#0b6ac86](https://github.com/edgexfoundry/app-service-configurable/commits/0b6ac86))

- Remove remote logging capability ([#143](https://github.com/edgexfoundry/app-service-configurable/issues/143)) ([#dc1b719](https://github.com/edgexfoundry/app-service-configurable/commits/dc1b719))
### Bug Fixes 🐛
- Make default http export secret settings blank as default ([#280](https://github.com/edgexfoundry/app-service-configurable/issues/280)) ([#712355d](https://github.com/edgexfoundry/app-service-configurable/commits/712355d))
- Remove retry related properties and update secret path of SecretStore config ([#272](https://github.com/edgexfoundry/app-service-configurable/issues/272)) ([#abca950](https://github.com/edgexfoundry/app-service-configurable/commits/abca950))
- Fix docker image version version built locally ([#251](https://github.com/edgexfoundry/app-service-configurable/issues/251)) ([#adb0691](https://github.com/edgexfoundry/app-service-configurable/commits/adb0691))
- **snap:** fix README's security-secret-store doc ([#207](https://github.com/edgexfoundry/app-service-configurable/issues/207)) ([#a4c663a](https://github.com/edgexfoundry/app-service-configurable/commits/a4c663a))
- **snap:** allow disabling of secret-store via config hook ([#151](https://github.com/edgexfoundry/app-service-configurable/issues/151)) ([#8bb6462](https://github.com/edgexfoundry/app-service-configurable/commits/8bb6462))
### Code Refactoring ♻
- Update profiles for change to use common Service config section ([#263](https://github.com/edgexfoundry/app-service-configurable/issues/263)) ([#29d31ba](https://github.com/edgexfoundry/app-service-configurable/commits/29d31ba))
    ```
    BREAKING CHANGE:
    Service configuration in all profiles has changed.
    ```
    
- Update to assign and use new Port Assignments ([#258](https://github.com/edgexfoundry/app-service-configurable/issues/258)) ([#8ac7400](https://github.com/edgexfoundry/app-service-configurable/commits/8ac7400))
    ```
    BREAKING CHANGE:
    App Service Configurable default port numbers have changed.
    ```
    
- Update for new service key names and overrides for hyphen to underscore ([#253](https://github.com/edgexfoundry/app-service-configurable/issues/253)) ([#794145f](https://github.com/edgexfoundry/app-service-configurable/commits/794145f))
    ```
    BREAKING CHANGE:
    Service key names used in configuration have changed.
    ```
    
- Move topic config to appropriate config struct ([#249](https://github.com/edgexfoundry/app-service-configurable/issues/249)) ([#021e289](https://github.com/edgexfoundry/app-service-configurable/commits/021e289))

    ```
    BREAKING CHANGE:
    Topic configurtion for certian Triggers has moved
    ```

- Remove V1 subscribe topic from profiles ([#240](https://github.com/edgexfoundry/app-service-configurable/issues/240)) ([#279c7ea](https://github.com/edgexfoundry/app-service-configurable/commits/279c7ea))

    ```
    BREAKING CHANGE:
    Default MessageBus subscribe topic has changed to `/edgex/events/#`
    ```

- Switch to 2.0 Consul path ([#227](https://github.com/edgexfoundry/app-service-configurable/issues/227)) ([#bbf9d34](https://github.com/edgexfoundry/app-service-configurable/commits/bbf9d34))
    ```
    BREAKING CHANGE:
    Consul configuration now under the /2.0/ path
    ```
    
- Updated profiles to use service keys for Client names ([#217](https://github.com/edgexfoundry/app-service-configurable/issues/217)) ([#be356fe](https://github.com/edgexfoundry/app-service-configurable/commits/be356fe))
    ```
    BREAKING CHANGE:
    Clients configuration has changed
    ```
    
- Rework code and profiles for refactored SDK ([#214](https://github.com/edgexfoundry/app-service-configurable/issues/214)) ([#d1338e8](https://github.com/edgexfoundry/app-service-configurable/commits/d1338e8))

    ```
    BREAKING CHANGE:
    SetOutputData function has changed to SetResponseData
    ```

- Consolidate function pipeline configuration ([#208](https://github.com/edgexfoundry/app-service-configurable/issues/208)) ([#d52bde6](https://github.com/edgexfoundry/app-service-configurable/commits/d52bde6))

    ```
    BREAKING CHANGE:
    - TransformToXML & TransformToJSON functions have be combined into the Transform function with the new 'Type' parameter
    - CompressWithGZIP & CompressWithZLIB functions have be combined into the Compress function with the new 'Algorithm ' parameter
    - HTTPPost, HTTPPut, HTTPPostJSON, HTTPPutJSON, HTTPPostXML and HTTPPutXML have be combined into the HTTPExport function with the new 'method' parameter and utilizing the existing 'MimeType' parameter
    - BatchByCount, BatchByTime, BatchByTimeAndCount have be combined into the Batch function with the new 'Mode' parameter
    ```

- Update profiles for change in Trigger configuration ([#203](https://github.com/edgexfoundry/app-service-configurable/issues/203)) ([#ca2daa4](https://github.com/edgexfoundry/app-service-configurable/commits/ca2daa4))

    ```
    BREAKING CHANGE:
    - [Binding] section has been renamed to [Trigger]
    - [MessageBus] section has been renamed to [EdgexMessageBus] and moved under [Trigger]
    - [MqttBroker] section has been renamed to [ExternalMqtt] and moved under [Trigger]
    ```

- Update profiles for refactored http export with secret header ([#198](https://github.com/edgexfoundry/app-service-configurable/issues/198)) ([#6a27a6a](https://github.com/edgexfoundry/app-service-configurable/commits/6a27a6a))
    ```
    BREAKING CHANGE:
    Parameters have changed for HTTP Post/Put with SecretHeader
    ```
    
- Renaming blackbox-tests profile to functional-tests ([#179](https://github.com/edgexfoundry/app-service-configurable/issues/179)) ([#007494f](https://github.com/edgexfoundry/app-service-configurable/commits/007494f))

- Remove SecretStoreExclusive configuration ([#158](https://github.com/edgexfoundry/app-service-configurable/issues/158)) ([#45b32cc](https://github.com/edgexfoundry/app-service-configurable/commits/45b32cc))

    ```
    BREAKING CHANGE:
    SecretStoreExclusive no longer used
    ```

- Remove use of deprecated MQTTSend ([#145](https://github.com/edgexfoundry/app-service-configurable/issues/145)) ([#86d88ba](https://github.com/edgexfoundry/app-service-configurable/commits/86d88ba))

    ```
    BREAKING CHANGE:
    MQTTSend no longer available. Replaced by MQTTSecretSend 
    ```
### Documentation 📖
- Add badges to readme ([#aa00b56](https://github.com/edgexfoundry/app-service-configurable/commits/aa00b56))
### Build 👷
### Continuous Integration 🔄
- update local docker image names ([#3401d5c](https://github.com/edgexfoundry/app-service-configurable/commits/3401d5c))
- Update files for Go 1.16 ([#246](https://github.com/edgexfoundry/app-service-configurable/issues/246)) ([#6494f19](https://github.com/edgexfoundry/app-service-configurable/commits/6494f19))
- standardize dockerfiles ([#160](https://github.com/edgexfoundry/app-service-configurable/issues/160)) ([#29a5207](https://github.com/edgexfoundry/app-service-configurable/commits/29a5207))

<a name="v1.3.1"></a>
## [v1.3.1] Hanoi - 2021-02-08 (Compatible with all V1 Releases)
### Bug Fixes 🐛
- Upgrade to go-mod-messaging with ZMQ fix for Hanoi ([#181](https://github.com/edgexfoundry/app-service-configurable/issues/181)) ([#e7b814b](https://github.com/edgexfoundry/app-service-configurable/commits/e7b814b))
- **snap:** allow disabling of secret-store via config hook ([#180](https://github.com/edgexfoundry/app-service-configurable/issues/180)) ([#1818c95](https://github.com/edgexfoundry/app-service-configurable/commits/1818c95))
### Build 👷
- Update to use released SDK for 1.3.1 dot release ([#184](https://github.com/edgexfoundry/app-service-configurable/issues/184)) ([#072b184](https://github.com/edgexfoundry/app-service-configurable/commits/072b184))

<a name="v1.3.0"></a>
## [v1.3.0] Hanoi - 2020-11-18 (Compatible with all V1 Releases)
### Features ✨
- Add ResponseContentType to SetOutputData ([#134](https://github.com/edgexfoundry/app-service-configurable/issues/134)) ([#958790d](https://github.com/edgexfoundry/app-service-configurable/commits/958790d))
- Add ability to use PUT method for HTTP Export in configurable pipeline ([#129](https://github.com/edgexfoundry/app-service-configurable/issues/129)) ([#36f96dc](https://github.com/edgexfoundry/app-service-configurable/commits/36f96dc))
- Add AddTags function to sample, http-export & mqtt-export profiles ([#114](https://github.com/edgexfoundry/app-service-configurable/issues/114)) ([#9362ccc](https://github.com/edgexfoundry/app-service-configurable/commits/9362ccc))
- set ServerBindAddr config item, fixes [#93](https://github.com/edgexfoundry/app-service-configurable/issues/93) ([#94](https://github.com/edgexfoundry/app-service-configurable/issues/94)) ([#8f8a21a](https://github.com/edgexfoundry/app-service-configurable/commits/8f8a21a))
- **snap:** added startup and duration interval values ([#132](https://github.com/edgexfoundry/app-service-configurable/issues/132)) ([#6aed5cd](https://github.com/edgexfoundry/app-service-configurable/commits/6aed5cd))
### Bug Fixes 🐛
- Enable using redis streams MessageBus in secure mode ([#127](https://github.com/edgexfoundry/app-service-configurable/issues/127)) ([#07d155c](https://github.com/edgexfoundry/app-service-configurable/commits/07d155c))
- Update to latest SDK so V2 APIs are available for TAF tests ([#112](https://github.com/edgexfoundry/app-service-configurable/issues/112)) ([#6d51720](https://github.com/edgexfoundry/app-service-configurable/commits/6d51720))
- app-functions-sdk-go backwards compatibility, fixes [#95](https://github.com/edgexfoundry/app-service-configurable/issues/95) ([#abecb38](https://github.com/edgexfoundry/app-service-configurable/commits/abecb38))
### Code Refactoring ♻
- update dockerfile to appropriately use ENTRYPOINT and CMD ([#104](https://github.com/edgexfoundry/app-service-configurable/issues/104)) ([#52089d7](https://github.com/edgexfoundry/app-service-configurable/commits/52089d7))
- Remove ClientMonitor setting. ([#6792fb2](https://github.com/edgexfoundry/app-service-configurable/commits/6792fb2))
### Documentation 📖
- fix of README heading sizes ([#340aba0](https://github.com/edgexfoundry/app-service-configurable/commits/340aba0))
- Add latest PR template ([#84](https://github.com/edgexfoundry/app-service-configurable/issues/84)) ([#6ceeec9](https://github.com/edgexfoundry/app-service-configurable/commits/6ceeec9))
### Build 👷
- Switch to using Go 1.15 ([#117](https://github.com/edgexfoundry/app-service-configurable/issues/117)) ([#8582f2b](https://github.com/edgexfoundry/app-service-configurable/commits/8582f2b))
- Update to used latest SDK with content type fix ([#140](https://github.com/edgexfoundry/app-service-configurable/issues/140)) ([#ba8dc87](https://github.com/edgexfoundry/app-service-configurable/commits/ba8dc87))
- add dependabot.yml ([#90](https://github.com/edgexfoundry/app-service-configurable/issues/90)) ([#b48d588](https://github.com/edgexfoundry/app-service-configurable/commits/b48d588))
- Updated to latest SDK with version check fix ([#101](https://github.com/edgexfoundry/app-service-configurable/issues/101)) ([#bfdbddf](https://github.com/edgexfoundry/app-service-configurable/commits/bfdbddf))
- **snap:** Update snapcraft.yaml version (1.2.0) ([#83](https://github.com/edgexfoundry/app-service-configurable/issues/83)) ([#a7f3ace](https://github.com/edgexfoundry/app-service-configurable/commits/a7f3ace))

<a name="v1.2.0"></a>

## [v1.2.0] Geneva - 2020-06-11 (Compatible with all V1 Releases)
### Features ✨
- upgrade to app-functions-sdk-go v1.2.0 ([#81](https://github.com/edgexfoundry/app-service-configurable/issues/81)) ([#9e5891b](https://github.com/edgexfoundry/app-service-configurable/commits/9e5891b))
- Add ability to Filter functions to reverse the logic to filter out specified names ([#78](https://github.com/edgexfoundry/app-service-configurable/issues/78)) ([#18accf3](https://github.com/edgexfoundry/app-service-configurable/commits/18accf3))
### Bug Fixes 🐛
- incorrect documentation link for snap ([#fc76386](https://github.com/edgexfoundry/app-service-configurable/commits/fc76386))
### Build 👷
- **snap:** update snapcraft ([#d0bc213](https://github.com/edgexfoundry/app-service-configurable/commits/d0bc213))
### Continuous Integration 🔄
- add semantic.yml for commit linting ([#76](https://github.com/edgexfoundry/app-service-configurable/issues/76)) ([#04d8ebe](https://github.com/edgexfoundry/app-service-configurable/commits/04d8ebe))

<a name="v1.1.0"></a>
## [v1.1.0] - Fuji - 2020-05-12 (Compatible with all V1 Releases)
### Features ✨
- Update to latest SDK for latest features and fixes and tweaks ([#72](https://github.com/edgexfoundry/app-service-configurable/issues/72)) ([#3c0b3bd](https://github.com/edgexfoundry/app-service-configurable/commits/3c0b3bd))
- Updated profiles for latest security config and to latest SDK ([#65fcb17](https://github.com/edgexfoundry/app-service-configurable/commits/65fcb17))
- Integrate new Redis Message Bus ([#e01e8a5](https://github.com/edgexfoundry/app-service-configurable/commits/e01e8a5))
- **MessageBus:** Update to lasted go-mod-messaging and created sample profile for MQTT Message Bus ([#b11e8ee](https://github.com/edgexfoundry/app-service-configurable/commits/b11e8ee))
### Refactor
- Change Database to be Redis and add -cp command line to Dockerfile entrypoint ([#dc9fab4](https://github.com/edgexfoundry/app-service-configurable/commits/dc9fab4))
### Doc
- **profile:** Move default configuration to "sample" profile ([#852cbb2](https://github.com/edgexfoundry/app-service-configurable/commits/852cbb2))
### Bug Fixes 🐛
- **SecretStore:** SecretStore configuration is optional ([#1757981](https://github.com/edgexfoundry/app-service-configurable/commits/1757981))
- **configuration:** Always provide mongo credentials ([#fb01f3d](https://github.com/edgexfoundry/app-service-configurable/commits/fb01f3d))
### Build 👷
- Update to latest SDK and tweaks/add/remove profiles ([#8b89b2c](https://github.com/edgexfoundry/app-service-configurable/commits/8b89b2c))
- Update four files for Go compiler 1.13. Closes [#48](https://github.com/edgexfoundry/app-service-configurable/issues/48) ([#84e673f](https://github.com/edgexfoundry/app-service-configurable/commits/84e673f))
- **go.mod:** update sdk version for latest features ([#f0de623](https://github.com/edgexfoundry/app-service-configurable/commits/f0de623))

<a name="v1.0.0"></a>
## [v1.0.0] - Edinburgh - 2019-11-12
### Bug
- **StoreForward:** Add missing configuration for Vault Integration for DB credentials ([#4c28d98](https://github.com/edgexfoundry/app-service-configurable/commits/4c28d98))
### Snap
- update go to 1.12 ([#32c1fa2](https://github.com/edgexfoundry/app-service-configurable/commits/32c1fa2))
### Features ✨
- **PushToCore:** Add PushToCore funtcion to pipeline configurations ([#9499ac6](https://github.com/edgexfoundry/app-service-configurable/commits/9499ac6))
- **StoreForward:** Use lastet SDK and update configurations for Store & Forward ([#ad6d12d](https://github.com/edgexfoundry/app-service-configurable/commits/ad6d12d))
- **TargetType:** Document use of UseTargetTypeOfByteArray ([#e2c8787](https://github.com/edgexfoundry/app-service-configurable/commits/e2c8787))
- **TargetType:** Document use of UseTargetTypeOfByteArray ([#30b7b7c](https://github.com/edgexfoundry/app-service-configurable/commits/30b7b7c))
- **app-service-configurable:** Set ApplicationVersion & SDKVersion from build via makefile ([#35dbdda](https://github.com/edgexfoundry/app-service-configurable/commits/35dbdda))
- **app-service-configurable:** Create an Application Service which create its Pipeline from Configuration ([#d577d54](https://github.com/edgexfoundry/app-service-configurable/commits/d577d54))
- **configuration:** Update configuration intervals in TOML to duration string   Fix issue [#232](https://github.com/edgexfoundry/app-service-configurable/issues/232) . ([#e1a245a](https://github.com/edgexfoundry/app-service-configurable/commits/e1a245a))
- **environment:**  Replace docker profiles with environment variable overrides ([#6fc75f0](https://github.com/edgexfoundry/app-service-configurable/commits/6fc75f0))
- **profile:** Add environment override for profile command line argument ([#b1c7bf1](https://github.com/edgexfoundry/app-service-configurable/commits/b1c7bf1))
### Bug Fixes 🐛
- **Attribution:** Add Attribution.txt file and tests to "make test" ([#25b7dc0](https://github.com/edgexfoundry/app-service-configurable/commits/25b7dc0))
- **Profile:** Use latest SDK with Registry HasConfiguration fix ([#a400715](https://github.com/edgexfoundry/app-service-configurable/commits/a400715))
- **configuration:** There is a duplicate LogLevel key in the TOML ([#1acc82c](https://github.com/edgexfoundry/app-service-configurable/commits/1acc82c))
### Build 👷
- **docker:** Adding latest and branch tags to docker images for nexus ([#fa0a795](https://github.com/edgexfoundry/app-service-configurable/commits/fa0a795))
- **sdk:** Update SDK Verison ([#2e15ac1](https://github.com/edgexfoundry/app-service-configurable/commits/2e15ac1))

[v2.0.0]: https://github.com/edgexfoundry/app-service-configurable/compare/v1.3.1...v2.0.0
[v1.3.1]: https://github.com/edgexfoundry/app-service-configurable/compare/v1.3.0...v1.3.1
[v1.3.0]: https://github.com/edgexfoundry/app-service-configurable/compare/v1.2.0...v1.3.0
[v1.2.0]: https://github.com/edgexfoundry/app-service-configurable/compare/v1.1.0...v1.2.0
[v1.1.0]: https://github.com/edgexfoundry/app-service-configurable/compare/v1.0.0...v1.1.0

