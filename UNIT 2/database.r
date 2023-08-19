# Create a connection Object to MySQL database.
# We will connect to the sampel database named "sakila" that comes with MySql installation.
library(RMySQL)
library(DBI)

#ALTER USER 'rmsridhar'@'localhost' IDENTIFIED WITH mysql_native_password BY 'srid_1968';
drv <- dbDriver("MySQL")
mysqlconnection = dbConnect(drv, username = 'rmsridhar', password = 'srid_1968', dbname = 'sakila',
                            host = 'localhost')

# List the tables available in this database.
dbListTables(mysqlconnection)

# Query the "actor" tables to get all the rows.
result = dbSendQuery(mysqlconnection, "select * from actor where actor_id>10 and actor_id<90")
data.frame = fetch(result)
print(data.frame)

# Store the result in a R data frame object. n = 5 is used to fetch first 5 rows.
data.frame = fetch(result, n = 10)
print(data.frame)

result = dbSendQuery(mysqlconnection, "select * from actor where last_name = 'TORN'")
result = dbSendQuery(mysqlconnection, "select  a.actor_id, a.first_name, b.film_id from actor as a, film_actor as b where a.actor_id=b.actor_id and a.actor_id=1")
data.frame = fetch(result)
print(data.frame)
result=dbSendQuery(mysqlconnection,"select  a.actor_id, a.first_name, b.film_id,c.title from actor as a, film_actor as b,film_text as c where a.actor_id=b.actor_id and a.actor_id=2 and b.film_id=c.film_id")
# Fetch all the records(with n = -1) and store it as a data frame.
data.frame = fetch(result)
print(data.frame)
mtcars
