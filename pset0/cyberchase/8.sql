-- write a query that counts the number of episodes released in the last 6 years, from 2018 to 2023, inclusive. 
SELECT COUNT("episode_in_season") FROM "episodes" WHERE "air_date" BETWEEN '2007-12-31' AND '2024-1-1';
