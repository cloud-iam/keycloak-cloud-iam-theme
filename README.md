# Cloud-IAM Example Keycloak theme

## Install dependencies

```
npm install
```

## Compile theme scss files

```
npm run build
```

## Build the theme extension

```
mvn package
```

## Theme Development Workflow

Build this theme `.jar` file with:

```bash
# build the theme and wrap it in a .jar file
mvn package
```

Then start Keycloak IAM (in single-node mode) locally through docker and use the host `./src/main/resources/theme` folder as Keycloak deployment directory.

```bash
docker compose up -d
```

Connect to Keycloak console [http://localhost:8080](http://localhost:8080), click on `Themes` tab, and select `cloud-iam-redesign` in front of `Login Theme`.

## More :

If you want to activate the login, email or other theme, open :
```bash
src/main/resources/META-INF/keycloak-themes.json
```
change the type to put the themes you want :
```bash
{
    "themes": [{
        "name" : "cloud-iam-redesign",
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
