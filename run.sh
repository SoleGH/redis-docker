current_path=$(pwd)
docker run -p 6379:6379 --name redis -v ${current_path}/redis.conf:/etc/redis/redis.conf -v ${current_path}/data:/data -d redis redis-server /etc/redis/redis.conf --appendonly yes
