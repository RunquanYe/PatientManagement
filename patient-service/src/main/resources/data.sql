-- Drop the table (if safe to do so)
DROP TABLE IF EXISTS patient;

CREATE TABLE IF NOT EXISTS patient
(
    id              VARCHAR(255)      PRIMARY KEY,
    name            VARCHAR(255)            NOT NULL,
    email           VARCHAR(255) UNIQUE     NOT NULL,
    age             INT                     NOT NULL,
    gender          VARCHAR(6)              NOT NULL,
    address         VARCHAR(255)            NOT NULL,
    date_of_birth   DATE                    NOT NULL,
    registered_date DATE                    NOT NULL,
    FOREIGN KEY (id) REFERENCES patient(id)
    );

CREATE INDEX idx_patient_email ON patient(email);
CREATE INDEX idx_patient_name ON patient(name);

ALTER TABLE patient ADD CONSTRAINT chk_gender CHECK (gender IN ('男', '女'));


INSERT INTO patient (id, name, email, age, gender, address, date_of_birth, registered_date)
SELECT 'psmp001',
       '张伟',
       'johnZhang@example.com',
       37,
       '男',
       '北京市海淀区中关村南大街5号院3号楼',
       '1985-06-15',
       '2022-01-10'
    WHERE NOT EXISTS (SELECT 1
                  FROM patient
                  WHERE id = 'psmp001');

INSERT INTO patient (id, name, email, age, gender, address, date_of_birth, registered_date)
SELECT 'psmp002',
       '李娜',
       'janeLi@example.com',
       32,
       '女',
       '上海市浦东新区张江高科技园区科苑路88号',
       '1990-09-23',
       '2022-12-01'
    WHERE NOT EXISTS (SELECT 1
                  FROM patient
                  WHERE id = 'psmp002');

INSERT INTO patient (id, name, email, age, gender, address, date_of_birth, registered_date)
VALUES ('psmp003',
       '李明',
       'aliceLi@example.com',
       44,
       '男',
       '广州市天河区体育西路103号维多利广场A座',
       '1978-03-12',
       '2022-06-20');

INSERT INTO patient (id, name, email, age, gender, address, date_of_birth, registered_date)
VALUES ('psmp004',
       '王芳',
       'emilyWang@example.com',
       40,
       '女',
       '深圳市南山区科技园路1号腾讯大厦',
       '1982-11-30',
       '2022-05-14');

INSERT INTO patient (id, name, email, age, gender, address, date_of_birth, registered_date)
VALUES ('psmp005',
       '王强',
       'davisWang@example.com',
       27,
       '男',
       '成都市武侯区人民南路四段12号华润大厦',
       '1995-02-05',
       '2022-03-01');


INSERT INTO patient (id, name, email, age, gender, address, date_of_birth, registered_date)
VALUES ('psmp006',
       '刘洋',
       'michaelLiu@example.com',
       34,
       '男',
       '杭州市西湖区文三路478号华星时代广场',
       '1988-07-25',
       '2022-02-15');

INSERT INTO patient (id, name, email, age, gender, address, date_of_birth, registered_date)
VALUES ( 'psmp007',
       '陈浩',
       'davidChen@example.com',
       30,
       '男',
       '武汉市洪山区珞喻路726号光谷世界城',
       '1992-04-18',
       '2022-08-25');

INSERT INTO patient (id, name, email, age, gender, address, date_of_birth, registered_date)
VALUES ( 'psmp008',
       '张丽',
       'sarahZhang@example.com',
       47,
       '女',
       '南京市鼓楼区中山北路30号紫峰大厦',
       '1975-01-11',
       '2022-10-10');

INSERT INTO patient (id, name, email, age, gender, address, date_of_birth, registered_date)
VALUES ('psmp009',
       '刘婷',
       'lauraLiu@example.com',
       33,
       '女',
       '西安市雁塔区小寨西路26号赛格国际购物中心',
       '1989-09-02',
       '2022-04-20');


INSERT INTO patient (id, name, email, age, gender, address, date_of_birth, registered_date)
VALUES ('psmp010',
       '陈雪',
       'jennyChen@example.com',
       29,
       '女',
       '重庆市渝中区解放碑民权路28号英利国际金融中心',
       '1993-11-15',
       '2022-06-30'),

('psmp011',
       '周杰',
       'ethanZhou@example.com',
       42,
       '男',
       '苏州市工业园区星湖街328号创意产业园',
       '1980-08-09',
       '2022-01-22'),

('psmp012',
       '吴宇',
       'danielWu@example.com',
       38,
       '男',
       '长沙市岳麓区麓谷大道658号芯城科技园',
       '1984-05-03',
       '2022-05-12'),

('psmp013',
       '徐阳',
       'sophiaXu@example.com',
       31,
       '女',
       '天津市和平区南京路189号津汇广场',
       '1991-12-25',
       '2022-11-11'),


 ('psmp014',
       '陈雪',
       'emmaChen@example.com',
       46,
       '女',
       '青岛市市南区香港中路76号颐和国际大厦',
       '1976-06-08',
       '2022-09-19'),

('psmp015',
       '杨雨',
       'isabellaYang@example.com',
       35,
       '女',
       '厦门市思明区湖滨南路819号宝福大厦',
       '1987-10-17',
       '2022-03-29');