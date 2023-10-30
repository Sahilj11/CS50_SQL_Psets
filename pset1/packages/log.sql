
-- *** The Lost Letter ***
-- First we need to find the id of both to and from address
-- Getting id of sender address "900 Somerville Avenue"
SELECT "id" FROM "addresses" WHERE "address" = '900 Somerville Avenue';
-- Output is 432
-- Now using this output in packages table to get contents of all letter send from this address
SELECT "contents" FROM "packages" WHERE "from_address_id" = 432;
-- one of the output is congratulatory Letter
SELECT "id" FROM "packages" WHERE "from_address_id" = 432 AND "contents" = 'Congratulatory letter';
-- above command give output 384 , this is package id 
SELECT "address_id" FROM "scans" WHERE "package_id" = 384;
-- this command give output of on which addresses package have been , output give two id , 432 and 854
-- as we know that 432 is the sender id , so the location of package must be 854
SELECT "address" FROM "addresses" WHERE "id" = 854;
-- this give output 2 Finnigan Street , here we can see the spelling mistake 

-- *** The Devious Delivery ***
-- one clue we have is that the content of package was a Ducks
SELECT "contents" FROM "packages" WHERE "contents" LIKE '%duck%';
-- this give many packages having duck as contents
-- one more thing we know that there is no from address on this package
SELECT "id" FROM "packages" WHERE "contents" LIKE '%duck%' AND "from_address_id" IS NULL;
-- above command give us package id , 5098
SELECT "address_id" FROM "scans" WHERE "package_id" = 5098;
-- here we get id 50 and 348 (drop location)
SELECT "address" FROM "addresses" WHERE "id" = 348;
-- output is 7 Humboldt Place of drop location
-- *** The Forgotten Gift ***

