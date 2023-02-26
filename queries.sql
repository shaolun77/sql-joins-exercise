-- write your queries here
--Join the two tables so that every column and record appears, 
--regardless of if there is not an owner_id. 
joins_exercise=# SELECT * FROM owners 
joins_exercise-# JOIN vehicles
joins_exercise-# ON owners.id = vehicles.owner_id;

--Count the number of cars for each owner. 
--Display the owners first_name, last_name and count of vehicles. 
--The first_name should be ordered in ascending order. 

joins_exercise=# SELECT first_name, last_name, COUNT(v.owner_id)
joins_exercise-# FROM owners o
joins_exercise-# JOIN vehicles v
joins_exercise-# ON o.id = v.owner_id
joins_exercise-# GROUP BY (first_name, last_name)
joins_exercise-# ORDER BY first_name;


--Count the number of cars for each owner and display the average price for each of the cars as integers. 
--Display the owners first_name, last_name, average price and count of vehicles. 
--The first_name should be ordered in descending order. 
--Only display results with more than one vehicle and an average price greater than 10000. 

joins_exercise=# SELECT first_name, last_name, ROUND(AVG(price)) as average_price, COUNT(v.owner_id)
joins_exercise-# FROM owners o
joins_exercise-# JOIN vehicles v
joins_exercise-# ON o.id = v.owner_id
joins_exercise-# GROUP BY (first_name, last_name)
joins_exercise-# HAVING COUNT(owner_id) >  1 AND ROUND(AVG(price)) > 10000
joins_exercise-# ORDER BY first_name DESC;