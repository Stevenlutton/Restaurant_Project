-- All of the inspection types
SELECT DISTINCT(inspectiontype)
FROM da_steven.restaraunt_violations
--  ROUTINE INSPECTION
--  2ND FOLLOW-UP INSPECTION-COMPLIANCE
--  INVESTIGATION INSPECTION
--  3RD FOLLOW-UP INSPECTION COMPLIANCE
--  3RD FOLLOW-UP INSPECTION NON COMPLIANCE
--  FOLLOW-UP (NON-COMPLIANCE)
--  QUICK ASSESSMENT INSPECTION
--  2ND FOLLOW-UP INSPECTION- NON COMPLIANCE
--  4TH FOLLOW-UP- NON COMPLIANCE
--  REGULAR INSPECTION
--  ACTIVE MANAGEMENT CONTROL (AMC)
--  COMPLAINT INSPECTION
--  TEMPORARY EVENT INSPECTION
--  OPERATING WITHOUT A LICENSE-WARNING
--  FOLLOW UP -GREEN STICKER
--  FOLLOW-UP INSPECTION
--  4TH FOLLOW-UP INSPECTION COMPLIANCE

--All of the types of facilities
SELECT DISTINCT(typeoffacility)
FROM da_steven.restaraunt_violations;
--  SPECIAL EVENT
--  RESTAURANT 0 TO 100 SEATS
--  TEMP EVENT ON SITE PREP
--  MOBILE UNIT PREPACKAGED
--  MOBILE UNIT FULL FOOD SERVICE
--  GROCERY STORE  MORE THAN 15000 SQ FT
--  GROCERY STORE W DELI MORE THAN 15000 SQ FT
--  RESTAURANT MORE THAN 200 SEATS
--  GROCERY STORE 0 TO 15000 SQ FT
--  RESTAURANT 101 TO 200 SEATS
--  GROCERY STORE W DELI 0 TO 15000 SQ FT
--  LIMITED FOOD SERVICE CONVENIENCE OTHER
--  NO FEE LICENSE K12 SCHOOLS NON PROFIT

--Total amount of facilities
SELECT DISTINCT(facilityname)
FROM da_steven.restaraunt_violations
ORDER BY facilityname;
 --1,571 facilities

--List of facility categories
SELECT DISTINCT (categoryoffacility)
FROM da_steven.restaraunt_violations;
-- SCHOOLS
-- SPECIAL EVENT
-- CONCESSIONS SENIOR NUTRITION
-- FOOD BANK
-- PRE PACKAGED
-- MOBILE UNITS
-- CONVENIENCE STORES
-- RETAIL COMMISSARY
-- CATERING
-- BARS FRATERNAL ORGANIZATIONS
-- FULL MENU LIMITED SERVICE
-- FULL SERVICE FULL MENU
-- CHURCHES
-- GROCERY FINISHED FOODS
-- TEMPORARY EVENTS
-- DAY TREATMENT PROGRAM
-- RESIDENTIAL FACILITIES
-- FAST FOOD LIMITED MENU
-- 18 Rows

--How I discovered the variation in points
SELECT DISTINCT (violationpoints)
FROM da_steven.restaraunt_violations
LIMIT 1000
-- Null, 0, 1, 2, 5, 10, 15, 20, 25

--There are 133 different violations recorded
SELECT DISTINCT (violation)
FROM da_steven.restaraunt_violations
LIMIT 1000
--133 rows

--Research on my restaurant (my place of employment)
SELECT facilityid, facilityname, city, state, zip, inspectiontype, inspectiondate, violationcode, violation, violationpoints, violationtype, inspectionscore
FROM da_steven.restaraunt_violations
WHERE facilityname LIKE '%95A%'
ORDER BY inspectiondate 
 -- 95A Data

SELECT facilityid, facilityname, city, state, zip, inspectiontype, inspectiondate, violationcode, violation, violationpoints, violationtype, inspectionscore
FROM da_steven.restaraunt_violations
WHERE facilityname LIKE '%95A%' AND inspectiontype LIKE 'COMPLAINT INSPECTION'
ORDER BY inspectiondate 
 -- 95A Data - complaint inspections

--Boulder Restaurants
SELECT DISTINCT(facilityname),
       facilityid,
       city,
	   state,
	   zip,
	   inspectiontype,
	   inspectiondate,
	   violationcode,
	   violation,
	   violationpoints,
	   violationtype,
	   inspectionscore
FROM da_steven.restaraunt_violations
WHERE city IN ('Boulder','BOULDER','boulder')
 --191287 rows

 --Lafayette Restaurants 
SELECT DISTINCT *
FROM da_steven.restaraunt_violations
WHERE city IN ('Lafayette','LAFAYETTE','lafayette')

 --Louisville Restaurants 
--26103 rows
SELECT *
FROM da_steven.restaraunt_violations
WHERE city IN ('Louisville','LOUISVILLE','louisville')


SELECT * 
FROM da_steven.boulder_restaurants b 
JOIN da_steven.liquor_licenses l ON b.siteaddress = l.street_address;
 -- Boulder restaurants joined with liquor licenses 

SELECT * 
FROM da_steven.lafayette_restaurants b 
JOIN da_steven.liquor_licenses l ON b.siteaddress = l.street_address;
 --Lafayette restaurants joined with liquor licenses


SELECT * 
FROM da_steven.louisville_restaurants b 
JOIN da_steven.liquor_licenses l ON b.siteaddress = l.street_address;
 -- Louisville restaurants joined with liquor licenses


SELECT DISTINCT license_type 
FROM da_steven.liquor_licenses;

--  Racetrack License (city)
--  Liquor Licensed Drug Store (county)
--  Wholesale (vinous & spirituous)
--  Optional Premises (county)
--  Limited Winery
--  Brew Pub (city)
--  Club License (county)
--  Master File (Business)
--  Bed & Breakfast Permit
--  Master File (Person)
--  Resort Complex (county)
--  Arts License (city)
--  Manufacturer (distillery & rectifier)
--  Optional Premises (city)
--  Campus Liquor Complex (City)
--  Hotel & Restaurant / Optional (city)
--  Hotel & Restaurant (city)
--  Fermented Malt Beverage Wholesale
--  Fermented Malt Beverage Manufacturer
--  Club License (city)
--  Lodging & Entertainment (City)
--  Fermented Malt Beverage Off (city)
--  Wholesale Beer (malt liquor)
--  Fermented Malt Beverage On/Off (county)
--  Manufacturer (brewery)
--  Beer & Wine (city)
--  Tavern (county)
--  Importer (malt liquor)
--  Related Facility Permit (City)
--  Tavern (city)
--  Brew Pub (county)
--  Arts License (county)
--  Manager Permit (LLDS)
--  Manufacturer (winery)
--  Fermented Malt Beverage Off (county)
--  Fermented Malt Beverage On/Off (city)
--  Beer & Wine (county)
--  Fermented Malt Beverage On (city)
--  Retail Gaming Tavern (city)
--  Resort Complex (city)
--  Liquor Store (county)
--  Hotel & Restaurant / Optional (county)
--  Vintner's Restaurant (city)
--  Fermented Malt Beverage On (county)
--  Alternating Proprietor Premises
--  Importer (vinous & spirituous)
--  Wine Packaging Permit
--  Fermented Malt Beverage Nonresident
--  Fermented Malt Beverage Importer
--  Public Transportation
--  Nonresident Manufacturer (malt liquor)
--  Lodging & Entertainment (County)
--  Liquor Licensed Drug Store (city)
--  Vintner's Restaurant (county)
--  Hotel & Restaurant (county)
--  Distillery Pub (City)
--  Art Gallery Permit
--  Liquor Store (city)
--  Wine Delivery Permit
--  Racetrack License (county)

SELECT *, LEFT(zip, 5) 
FROM da_steven.restaraunt_violations
-- Restuarant data with 5 digit zip


SELECT facilityname, avg(inspectionscore)::Integer
FROM da_steven.restaraunt_violations r
JOIN da_steven.liquor_licenses l ON r.facilityname = l.doing_business_as 
GROUP BY 1
ORDER BY 2 DESC
 
 ----------------TOP 10 RESTAURANTS IN BOULDER ACCORDING TO TRIP ADVISOR.COM--------------------

SELECT * 
FROM da_steven.restaraunt_violations
WHERE facilityname LIKE '%BLACK CAT%'

-- 1. BLACK CAT
-- 2. SNOOZE AN AM EATERY
-- 3. AVERY BREWING COMPANY
-- 4. MOUNTAIN SUN PUB & BREWERY 
-- 5. BOULDER DUSHANBE TEA HOUSE
-- 6. RIFF'S URBAN FARE    'RIFFS URBAN FARE''
-- 7. JAX FISHOUSE & OYSTER BAR  'JAX FISH HOUSE'
-- 8. BRASSERIE TEN TEN
-- 9. OAK AT FOURTEENTH
-- 10. LUCILE'S CREOLE CAFE  'LUCILES CREOLE CAFE'



------LOCATIONS---------
SELECT DISTINCT facilityname, location 
FROM da_steven.restaraunt_violations 
WHERE facilityname LIKE '%BLACK CAT%'
  OR facilityname LIKE '%SNOOZE%'
  OR facilityname LIKE '%AVERY%'
  OR facilityname LIKE '%BOULDER DUSHANBE%'
  OR facilityname LIKE '%OAK%'
  OR facilityname LIKE '%MOUNTAIN SUN%'
  OR facilityname LIKE '%RIFFS%'
  OR facilityname LIKE '%LUCILES%'
  OR facilityname LIKE '%JAX%'
  OR facilityname LIKE '%BRASSERIE%'

  -----MY FINAL DATASET (Restaurant.csv)-------------
SELECT * 
FROM da_steven.fivedigitzipallco
WHERE violationpoints NOT LIKE '0' 
  AND violationpoints NOT LIKE 'NULL' 
