Streaming application for Twitter data
#Step-by-step instructions on how to run the application. Detailed explanations in Architecture.pdf

source /opt/py27environment/bin/activate

mount -t ext4 /dev/xvdf /data

ps auxwww | grep postgres



/data/start_postgres.sh

psql -U postgres

CREATE DATABASE tcount;

\q




git clone https://github.com/Jackanator/W205-Storing-and-Retrieving-Data.git

cd streamparse

sparse quickstart tweetwordcount




rm /root/streamparse/tweetwordcount/topologies/wordcount.clj

rm /root/streamparse/tweetwordcount/src/spouts/words.py

rm /root/streamparse/tweetwordcount/src/bolts/wordcount.py




cp -avr /root/W205-Storing-and-Retrieving-Data/Exercise_2/tweetwordcount/topologies/tweetwordcount.clj /root/streamparse/tweetwordcount/topologies

cp -avr /root/W205-Storing-and-Retrieving-Data/Exercise_2/tweetwordcount/src/spouts/tweets.py /root/streamparse/tweetwordcount/src/spouts

cp -avr /root/W205-Storing-and-Retrieving-Data/Exercise_2/tweetwordcount/src/bolts/parse.py /root/streamparse/tweetwordcount/src/bolts

cp -avr /root/W205-Storing-and-Retrieving-Data/Exercise_2/tweetwordcount/src/bolts/wordcount.py /root/streamparse/tweetwordcount/src/bolts




cp -avr /root/W205-Storing-and-Retrieving-Data/Exercise_2/Twittercredentials.py /root/streamparse/tweetwordcount

cp -avr /root/W205-Storing-and-Retrieving-Data/Exercise_2/hello-stream-twitter.py /root/streamparse/tweetwordcount

cp -avr /root/W205-Storing-and-Retrieving-Data/Exercise_2/psycopg-init.py /root/streamparse/tweetwordcount




cd tweetwordcount

python psycopg-init.py

python hello-stream-twitter.py

sparse run




