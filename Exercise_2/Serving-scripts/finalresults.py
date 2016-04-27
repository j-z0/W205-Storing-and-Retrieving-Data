import sys
import psycopg2

conn = psycopg2.connect(database="tcount", user="postgres", password="pass", host="localhost", port="5432")

cur = conn.cursor()

if len(sys.argv)>1:
    cur.execute("SELECT count FROM tweetwordcount WHERE word=%s",  sys.argv[1:])
    print "Total number of occurences of", str(sys.argv[1]), ":", cur.fetchone()
else:
    cur.execute("SELECT word, count FROM tweetwordcount ORDER BY word")
    for record in cur:
        print record

conn.close()
