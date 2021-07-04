docker build --pull --rm -f Dockerfile -t fvbakel/kotlin-native:1.5.20 .
docker run --rm -it fvbakel/kotlin-native:1.5.20

# requires docker login
docker push fvbakel/kotlin-native:1.5.20