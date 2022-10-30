# Як запустити проект:
### За допомогою Node
```
node index.js
```
### За допомогою Docker
```
docker build -t dumpling-image .
docker run --rm --name lab1 --cpus="1" --memory="64M" -p 80:80 dumpling-image
```
### За допомогою docker-compose
```
docker-compose --compatibility up
```
P.S. Режим сувмісності використовується, бо в нових версіях докеркомпоза обмеження потужностей можна ввімкнути тільки в 
swarm