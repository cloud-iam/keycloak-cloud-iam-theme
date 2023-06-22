# Cloud-IAM Example Keycloak theme

## Build the theme extension

Simply run the `./build.sh` script.
It requires node, npm and maven with java.

## Theme Development Workflow

Build this theme `.jar` file with (or use the `build.sh` file):

```bash
# install dependencies
npm install

# compile theme scss files
npm run build

# package theme and wrap it in a .jar file
mvn package

# move theme to /tmp/theme/ folder for futur use by keycloak
mkdir -p /tmp/theme && cp -v target/*.jar /tmp/theme/
```

Then start Keycloak IAM (in single-node mode) locally through docker and use the host `/tmp/theme` folder as Keycloak deployment directory.

```bash
docker run -p 8080:8080 -e KEYCLOAK_USER=admin -e KEYCLOAK_PASSWORD=admin -v /tmp/theme:/opt/jboss/keycloak/standalone/deployments/ quay.io/keycloak/keycloak:21.1.1
```

Connect to Keycloak console [http://localhost:8080](http://localhost:8080), click on `Themes` tab, and select `cloud-iam` in front of `Login Theme`.

## More :

If you want to activate the login, email or other theme, open :
```bash
src/main/resources/META-INF/keycloak-themes.json
```
change the type to put the themes you want :
```bash
{
    "themes": [{
        "name" : "cloud-iam",
        "types": [ "login", "email" ]
    }]
}
```

## How to use this theme as a starter

If you want to start developping your new theme based on our existing template, help yourself!

Assuming your company is named `acme`, you'll have to setup a few things before building your own theme.

- rename `src/main/resources/theme/cloud-iam-redesign` to `src/main/resources/theme/acme`
- in `package.json`: 
  - adjust the name
  - adjust the description
  - adjust the `scripts.build` section accordingly with the new path `src/main/resources/theme/acme` in the parcel commands
- in `pom.xml`:
  - set your own group id
  - set your own artifact id

- in `src/main/resources/META-INF/keycloak-themes.json`, adjust the theme name to `acme`

## Resources

- https://www.baeldung.com/spring-keycloak-custom-themes
- see also https://www.keycloakify.dev/ (https://github.com/InseeFrLab/keycloakify)
