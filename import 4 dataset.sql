-- 删除表（如果存在）然后重新创建recruitment_data表
DROP TABLE IF EXISTS recruitment_data;
CREATE TABLE recruitment_data (
  `候选人ID` VARCHAR(255),
  `姓名` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `性别` VARCHAR(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `电话` VARCHAR(255),
  `邮箱` VARCHAR(255),
  `应聘职位` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `应聘部门` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `面试日期` DATE,
  `是否正式员工` VARCHAR(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- 删除表（如果存在）然后重新创建hris_data表
DROP TABLE IF EXISTS hris_data;
CREATE TABLE hris_data (
  `员工ID` VARCHAR(255),
  `姓名` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `拼音姓名` VARCHAR(255),
  `性别` VARCHAR(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `部门` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `职位` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `入职日期` DATE,
  `员工类型` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `电话` VARCHAR(255),
  `邮箱` VARCHAR(255)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- 删除表（如果存在）然后重新创建performance_data表
DROP TABLE performance_data;

CREATE TABLE performance_data (
  `员工ID` VARCHAR(255),
  `姓名` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `部门` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `职位` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `评估开始日期` DATE,
  `评估完成日期` DATE,
  `绩效评分` VARCHAR(255),
  `评语` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `评估者ID` VARCHAR(50)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

ALTER TABLE performance_data
ADD COLUMN `评估开始日期` DATE AFTER `职位`,
ADD COLUMN `评估完成日期` DATE AFTER `评估开始日期`,
ADD COLUMN `评估者ID` VARCHAR(50) AFTER `评语`;

ALTER TABLE performance_data
DROP COLUMN `评估周期`;

DESCRIBE performance_data;

-- 删除表（如果存在）然后重新创建learning_data表
DROP TABLE IF EXISTS learning_data;
CREATE TABLE learning_data (
  `员工ID` VARCHAR(255),
  `姓名` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `部门` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `课程名称` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `开始日期` DATE,
  `完成状态` VARCHAR(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `得分` VARCHAR(50)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


