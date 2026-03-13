-- ฐานเงินเดือนของพนักงานทั้งหมดในแต่ละร้านและสาขา
SELECT
    b.branch_id,
    b.branch_name_th,
    b.branch_name_en,
    SUM(e.salary) AS total_base_salary
FROM EMPLOYEE e
LEFT JOIN BRANCH b
    ON e.branch_id = b.branch_id
GROUP BY
    b.branch_id,
    b.branch_name_th,
    b.branch_name_en
ORDER BY b.branch_id;
