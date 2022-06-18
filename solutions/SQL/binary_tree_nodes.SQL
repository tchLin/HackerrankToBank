SELECT CASE 
    WHEN P IS null THEN concat(N, ' Root')
    WHEN N IN (SELECT P FROM BST) THEN concat(N, ' Inner')
    ELSE concat(N, ' Leaf')
END
FROM BST
ORDER BY N
