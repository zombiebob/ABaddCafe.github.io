docker build -t baddcafe-site .
docker run -dit -p 4000:4000 -v $(pwd):/usr/src/baddcafe --name baddcafe baddcafe-site