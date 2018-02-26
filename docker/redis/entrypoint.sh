#!/bin/sh
sed -i.bak "s/^port .*$/port ${PORT}/" /etc/redis/redis.conf && rm /etc/redis/redis.conf.bak
if [ $SLAVEOF ];then
	echo "slaveof $SLAVEOF" >> /etc/redis/redis.conf
fi 

chown redis:redis /etc/redis/redis.conf

