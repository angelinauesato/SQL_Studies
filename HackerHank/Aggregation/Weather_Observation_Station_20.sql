/*
    A median is defined as a number separating the higher half of a data set from the lower half. 
    Query the median of the Northern Latitudes (LAT_N) from STATION and round your answer to 4 decimal places. 
*/
SET @rowindex := -1;
 
SELECT
   ROUND(AVG(st.lat),4)
FROM
   (SELECT @rowindex:=@rowindex + 1 AS rowindex,
           s.lat_n AS lat
    FROM station s
    ORDER BY s.lat_n) AS st
WHERE
st.rowindex IN (FLOOR(@rowindex / 2) , CEIL(@rowindex / 2));