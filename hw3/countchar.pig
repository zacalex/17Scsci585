A = LOAD '/user/maria_dev/para*.txt' AS (lines:chararray);
B = FOREACH A GENERATE FLATTEN(TOKENIZE(LOWER((chararray)lines))) AS words;
C = FOREACH B GENERATE FLATTEN(TOKENIZE(REPLACE(words,'','|'), '|')) AS letters;
D = GROUP C BY letters;
E = FOREACH D GENERATE COUNT(C), group ;
DUMP E;