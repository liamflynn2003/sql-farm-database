/*Code to view all cattle in order of tag number*/
 SELECT
 tag_num AS "Tag Number",
  breed AS "Cattle Breeds",
  prev_owner AS "Previous Owner",
  sex AS "Sex",
  curr_owner AS "Current Owner",
  prev_owner AS "Previous Owner",
  herd_num AS "Herd Number"
FROM livestock
  ORDER BY tag_num DESC;

 /* Sql code to view all cattle with previous owners, in descending order of their tags
 This would be used when a farmer wants to see what cattle in his stock he bought in.*/
 SELECT
 tag_num AS "Tag Number",
  breed AS "Cattle Breeds",
  prev_owner AS "Previous Owner",
  sex AS "Sex"
FROM livestock
WHERE prev_owner IS NOT NULL
  ORDER BY tag_num DESC;
  
   /* Sql code to view all cattle with no previous owners, in descending order of their tags
 This would be used when a farmer wants to see all the cattle he owns that he did not buy into his herd.*/
SELECT
 tag_num AS "Tag Number",
  breed AS "Cattle Breeds",
  sex AS "Sex"
FROM
  livestock
   WHERE 
  prev_owner IS NULL;
  
  /*Sql code for the farmer to view forage that was made from Field 1, Plot 1A*/
  SELECT
  forage_type AS "Forage",
  field_id AS "Field",
  plot_id AS "Plot",
  amount AS "Bales Made"
FROM
  forage
WHERE
  field_id = '1' AND plot_id='1A';

/*Code to see the batch number and weight of all cereal purchase that cost more then 110 euro.
This allows the farmer to see how much he has to buy to stay under a certain price, in this case 110 euro.*/
  SELECT
  batch_num AS "Batch No.",
  cost  AS "Cost",
  weight  AS "Weight"
FROM cereals
WHERE cost>=110.00
ORDER BY batch_num, weight DESC;

/*This code allows the farmer to see the dates where he fed cattle more than two bales.*/
  SELECT
  feed_num AS "Feed No.",
  date_fed AS "Date Fed",
  amount_used AS "Bales Used"
FROM forage_usages
WHERE amount_used>2
ORDER BY date_fed DESC;

/*Code to see total cost of all medicine.*/
SELECT
SUM(cost) AS "Total Cost of Medicine"
FROM medication;

/*Code to see fertilisers used in order of cost.*/
  SELECT
agrochem_id AS "Agrochemical ID",cost AS "Cost",chem_units AS "Chemical Units",npk_value "NPK Values"
FROM agrochemicals
WHERE chem_units IS NOT NULL
ORDER BY cost DESC;

/*Code to see pesticides used in order of cost.*/
  SELECT
agrochem_id AS "Agrochemical ID",cost AS "Cost",cas_num AS "CAS Number",chem_name AS "Chemical Name"
FROM agrochemicals
WHERE cas_num IS NOT NULL
ORDER BY cost DESC;