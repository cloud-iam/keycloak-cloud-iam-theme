# Cloud-IAM Example Keycloak theme

## Build the theme extension

```
mvn package
```

## Docker

Lancer le docker avec la commande suivante :
```
docker run -p 8080:8080 -e KEYCLOAK_USER=admin -e KEYCLOAK_PASSWORD=admin -v /tmp/theme:/opt/jboss/keycloak/standalone/deployments/ quay.io/keycloak/keycloak:15.0.0
```

Puis aller sur `localhost:8080`. Une fois connecter, aller dans la section thème et pour la liste déroulante `Login Theme` choisissez cloud-iam.

Pour ajouter un thème, il faudra récupérer le fichier jar compiler lors du `mvn package`, qui se situe dans le dossier `/target` et le placer sur votre ordinateur dans le dossier `/tmp/theme`.

Si vous regardez dans la commande docker, vous pouvez voir que `/tmp/theme` qui est en local sera relié à `/opt/jboss/keycloak/standalone/deployments/` qui sera sur le docker.