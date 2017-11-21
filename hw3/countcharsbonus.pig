A = LOAD '/user/maria_dev/para*.txt' AS (lines:chararray);
B = FOREACH A GENERATE FLATTEN(TOKENIZE(LOWER((chararray)lines))) AS words;
C = FOREACH B GENERATE FLATTEN(TOKENIZE(REPLACE(words,'','|'), '|')) AS letters;
C1 = FILTER C BY (letters matches '.*(a|e|i|o|u).*');
D = GROUP C1 BY letters;
E = FOREACH D GENERATE COUNT(C1), group;
DUMP E;