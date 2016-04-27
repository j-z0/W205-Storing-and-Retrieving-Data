import sys
import psycopg2

conn = psycopg2.connect(database="tcount", user="postgres", password="pass", host="localhost", port="5432")

cur = conn.cursor()

x = sys.argv[1].split(',')[0]
y = sys.argv[1].split(',')[1]

cur.execute("SELECT word,count FROM tweetwordcount WHERE count BETWEEN %s  AND %s", (x,y))
for record in cur:
    print record
    
conn.close()
