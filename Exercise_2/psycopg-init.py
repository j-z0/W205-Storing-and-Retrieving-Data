import psycopg2

conn = psycopg2.connect(database="tcount", user="postgres", password="pass", ho\
st="localhost", port="5432")

#The first step is to create a cursor.
cur = conn.cursor()

#Delete existing table if it is already there
cur.execute("DROP TABLE tweetwordcount")

#Create a new table
cur.execute('''CREATE TABLE tweetwordcount
       (word TEXT PRIMARY KEY     NOT NULL,
       count INT     NOT NULL);''')
conn.commit()
conn.close()
