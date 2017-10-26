A = LOAD ¡®output_10k/part-r-00000¡¯ USING PigStorage() AS (word:chararray, count:int); 
B = ORDER A BY $1 DESC; 
C = LIMIT B 10; 
DUMP C; 
