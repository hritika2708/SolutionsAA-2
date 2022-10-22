-- Count of types of tigers
SELECT COUNT(*) FROM taxonomy WHERE species like '%Panthera tigris%';

-- ncbi_id of the Sumatran Tiger
SELECT ncbi_id FROM taxonomy WHERE species like '%Panthera tigris Sumatrae%';
