-- list the titles of episodes from season 6 (2008) that were released early, in 2007.
SELECT "title" FROM "episodes" WHERE ("season" = 6) AND "air_date" BETWEEN '2006-12-31' AND '2008-1-1';
