# Create a connection Object to MySQL database.
# We will connect to the sampel database named "sakila" that comes with MySql installation.
library(RMySQL)
library(DBI)

#ALTER USER 'rmsridhar'@'localhost' IDENTIFIED WITH mysql_native_password BY 'srid_1968';
drv <- dbDriver("MySQL")
mysqlconnection = dbConnect(drv, username = 'rmsridhar', password = 'srid_1968', dbname = 'sakila',
                            host = 'localhost')
mysqlconnection = dbConnect(drv, user = 'root', password = '', dbname = 'sakila',
                            host = 'localhost')

mysqlconnection = dbConnect(RMySQL::MySQL(),
                            dbname='university',
                            host='localhost',
                            port=3306,
                            user='newuser',
                            password='Demo@123456')

# List the tables available in this database.
dbListTables(mysqlconnection)
#actor_id,first name, last name
result = dbSendQuery(mysqlconnection, "select * from actor where last_name='TORN'")
data.frame = fetch(result)
print(data.frame)

#actor_id,film_id
result=dbSendQuery(mysqlconnection,"select * from film_actor")
data.frame = fetch(result)
print(data.frame)

result=dbSendQuery(mysqlconnection,"select a.actor_id,a.first_name,b.film_id from  actor as a, film_actor as b where a.actor_id=2")
data.frame = fetch(result)
print(data.frame)


# Query the "actor" tables to get all the rows.
result = dbSendQuery(mysqlconnection, "select * from actor where actor_id>10 and actor_id<90")
data.frame = fetch(result)
print(data.frame)



result3 = dbSendQuery(mysqlconnection, "select * from actor")
data.frame = fetch(result3)
print(data.frame)


result = dbSendQuery(mysqlconnection, "select * from actor")
data.frame = fetch(result)
print(data.frame)


result = dbSendQuery(mysqlconnection, "select  a.actor_id, a.first_name, b.film_id from actor as a, film_actor as b where a.actor_id=b.actor_id and a.actor_id=1")
data.frame = fetch(result)
print(data.frame)
result=dbSendQuery(mysqlconnection,"select  a.actor_id, a.first_name, b.film_id,c.title from actor as a, film_actor as b,film_text as c where a.actor_id=b.actor_id and a.actor_id=2 and b.film_id=c.film_id")
# Fetch all the records(with n = -1) and store it as a data frame.
data.frame = fetch(result)
print(data.frame)

mtcars
