-- 完整性
-- hirs
SELECT
    'hris' AS data_source,
    CONCAT('hris_', '员工ID') AS field_name,
    ROUND((COUNT(员工ID) * 100.0 / COUNT(*)), 0) AS completion_rate
FROM `hris_database`.`hris_data`
WHERE 员工ID IS NOT NULL
UNION
SELECT 
    'hris' AS data_source,
    CONCAT('hris_', '姓名') AS field_name,
    ROUND((COUNT(姓名) * 100.0 / COUNT(*)), 0) AS completion_rate
FROM `hris_database`.`hris_data`
WHERE 姓名 IS NOT NULL
UNION
SELECT 
    'hris' AS data_source,
    CONCAT('hris_', '性别') AS field_name,
    ROUND((COUNT(性别) * 100.0 / COUNT(*)), 0) AS completion_rate
FROM `hris_database`.`hris_data`
WHERE 性别 IS NOT NULL
UNION
SELECT 
    'hris' AS data_source,
    CONCAT('hris_', '部门') AS field_name,
    ROUND((COUNT(部门) * 100.0 / COUNT(*)), 0) AS completion_rate
FROM `hris_database`.`hris_data`
WHERE 部门 IS NOT NULL
UNION
SELECT 
    'hris' AS data_source,
    CONCAT('hris_', '职位') AS field_name,
    ROUND((COUNT(职位) * 100.0 / COUNT(*)), 0) AS completion_rate
FROM `hris_database`.`hris_data`
WHERE 职位 IS NOT NULL
UNION
SELECT 
    'hris' AS data_source,
    CONCAT('hris_', '员工类型') AS field_name,
    ROUND((COUNT(员工类型) * 100.0 / COUNT(*)), 0) AS completion_rate
FROM `hris_database`.`hris_data`
WHERE 员工类型 IS NOT NULL
UNION
SELECT 
    'hris' AS data_source,
    CONCAT('hris_', '入职日期') AS field_name,
    ROUND((COUNT(入职日期) * 100.0 / COUNT(*)), 0) AS completion_rate
FROM `hris_database`.`hris_data`
WHERE 入职日期 IS NOT NULL;

-- learning_data
SELECT
    'learning' AS data_source,
    CONCAT('learning_', '员工ID') AS field_name,
    ROUND((COUNT(员工ID) * 100.0 / COUNT(*)), 0) AS completion_rate
FROM `hris_database`.`learning_data`
WHERE 员工ID IS NOT NULL
UNION
SELECT 
    'learning' AS data_source,
    CONCAT('learning_', '姓名') AS field_name,
    ROUND((COUNT(姓名) * 100.0 / COUNT(*)), 0) AS completion_rate
FROM `hris_database`.`learning_data`
WHERE 姓名 IS NOT NULL
UNION
SELECT 
    'learning' AS data_source,
    CONCAT('learning_', '部门') AS field_name,
    ROUND((COUNT(部门) * 100.0 / COUNT(*)), 0) AS completion_rate
FROM `hris_database`.`learning_data`
WHERE 部门 IS NOT NULL
UNION
SELECT 
    'learning' AS data_source,
    CONCAT('learning_', '课程名称') AS field_name,
    ROUND((COUNT(课程名称) * 100.0 / COUNT(*)), 0) AS completion_rate
FROM `hris_database`.`learning_data`
WHERE 课程名称 IS NOT NULL
UNION
SELECT 
    'learning' AS data_source,
    CONCAT('learning_', '开始日期') AS field_name,
    ROUND((COUNT(开始日期) * 100.0 / COUNT(*)), 0) AS completion_rate
FROM `hris_database`.`learning_data`
WHERE 开始日期 IS NOT NULL
UNION
SELECT 
    'learning' AS data_source,
    CONCAT('learning_', '完成状态') AS field_name,
    ROUND((COUNT(完成状态) * 100.0 / COUNT(*)), 0) AS completion_rate
FROM `hris_database`.`learning_data`
WHERE 完成状态 IS NOT NULL
UNION
-- SELECT 
--     'learning' AS data_source,
--     CONCAT('learning_', '得分') AS field_name,
--     ROUND((COUNT(得分) * 100.0 / COUNT(*)), 0) AS completion_rate
-- FROM `hris_database`.`learning_data`
-- WHERE 得分 IS NOT NULL
SELECT 
    'learning' AS data_source,
    'learning_得分' AS field_name,
    ROUND((COUNT(得分) * 100.0 / COUNT(*)), 0) AS completion_rate
FROM `hris_database`.`learning_data`;

-- performance data
SELECT
    'hris' AS data_source,
    CONCAT('hris_', '员工ID') AS field_name,
    ROUND((COUNT(员工ID) * 100.0 / COUNT(*)), 0) AS completion_rate
FROM `performance_data`
WHERE 员工ID IS NOT NULL
UNION
SELECT 
    'hris' AS data_source,
    CONCAT('hris_', '姓名') AS field_name,
    ROUND((COUNT(姓名) * 100.0 / COUNT(*)), 0) AS completion_rate
FROM `performance_data`
WHERE 姓名 IS NOT NULL
UNION
SELECT 
    'hris' AS data_source,
    CONCAT('hris_', '评估周期') AS field_name,
    ROUND((COUNT(评估周期) * 100.0 / COUNT(*)), 0) AS completion_rate
FROM `performance_data`
WHERE 性别 IS NOT NULL
UNION
SELECT 
    'hris' AS data_source,
    CONCAT('hris_', '部门') AS field_name,
    ROUND((COUNT(部门) * 100.0 / COUNT(*)), 0) AS completion_rate
FROM `hris_database`.`hris_data`
WHERE 部门 IS NOT NULL
UNION
SELECT 
    'hris' AS data_source,
    CONCAT('hris_', '职位') AS field_name,
    ROUND((COUNT(职位) * 100.0 / COUNT(*)), 0) AS completion_rate
FROM `hris_database`.`hris_data`
WHERE 职位 IS NOT NULL
UNION
SELECT 
    'hris' AS data_source,
    CONCAT('hris_', '员工类型') AS field_name,
    ROUND((COUNT(员工类型) * 100.0 / COUNT(*)), 0) AS completion_rate
FROM `hris_database`.`hris_data`
WHERE 员工类型 IS NOT NULL
UNION
SELECT 
    'hris' AS data_source,
    CONCAT('hris_', '入职日期') AS field_name,
    ROUND((COUNT(入职日期) * 100.0 / COUNT(*)), 0) AS completion_rate
FROM `hris_database`.`hris_data`
WHERE 入职日期 IS NOT NULL;
