-- write a SQL query to list the English titles of the 5 prints with the least contrast by Hokusai, from least to highest contrast.
SELECT "english_title" FROM "views" WHERE ("artist" = 'Hiroshige') ORDER BY "brightness" LIMIT 5;
