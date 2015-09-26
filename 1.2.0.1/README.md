Create your app:
docker run xherriot/meteor:1.2.0.1 meteor create mymeteorapp

Start your app:
docker run -d --name mongodb mongo:2.6.10 && docker run --cap-add SYS_ADMIN -it --link mongodb:db -e "MONGO_URL=mongodb://db" --name mymeteorapp --rm -p 3000:3000 -v "$(pwd)":/app xherriot/meteor:1.2.0.1
