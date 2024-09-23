INSERT INTO badge_tb(img_url, name, requirements, created_at, last_modified_at)
VALUES ('test_img01', 'badge01', 'conditions01', now(), now());

INSERT INTO badge_tb(img_url, name, requirements, created_at, last_modified_at)
VALUES ('test_img02', 'badge02', 'conditions02', now(), now());

INSERT INTO badge_tb(img_url, name, requirements, created_at, last_modified_at)
VALUES ('test_img03', 'badge03', 'conditions03', now(), now());

INSERT INTO badge_tb(img_url, name, requirements, created_at, last_modified_at)
VALUES ('test_img04', 'badge04', 'conditions04', now(), now());

INSERT INTO badge_tb(img_url, name, requirements, created_at, last_modified_at)
VALUES ('test_img05', 'badge05', 'conditions05', now(), now());

INSERT INTO badge_tb(img_url, name, requirements, created_at, last_modified_at)
VALUES ('test_img06', 'badge06', 'conditions06', now(), now());

INSERT INTO user_tb(description, email, img_url, nickname, password, provider, role, created_at, last_modified_at)
VALUES
    ('hello world', 'lsh901673@gmail.com', '', 'lsh', '1234', 'PROVIDER_GOOGLE', 'ROLE_USER', now(), now()),
    ('hello', 'jhy0285@gmail.com', '', '조영진', '1234', 'PROVIDER_GOOGLE', 'ROLE_USER', now(), now()),
    ('hello', 'hcy1722@korea.ac.kr', '', 'hcy', '1234', 'PROVIDER_GOOGLE', 'ROLE_USER', now(), now()),
    ('hello', 'sangmin0205@gmail.com', '', 'sm', '1234', 'PROVIDER_GOOGLE', 'ROLE_USER', now(), now()),
    ('hello', 'chosohi20@gmail.com', '', 'csh', '1234', 'PROVIDER_GOOGLE', 'ROLE_USER', now(), now()),
    ('hello', 'vnclfjqm12@gmail.com', '', 'lsy', '1234', 'PROVIDER_GOOGLE', 'ROLE_USER', now(), now())
;

INSERT INTO user_badge_tb(user_id, badge_id, created_at, last_modified_at)
VALUES(1, 1, now(), now());

INSERT INTO user_badge_tb(user_id, badge_id, created_at, last_modified_at)
VALUES(1, 2, now(), now());

-- 카테고리: 'TOURISM', 'TREKKING', 'DINING', 'ACCOMMODATION', 'OTHER'

-- User ID 1과 2 사용, 카테고리는 'TOURISM', 'DINING' 사용
INSERT INTO post_tb (user_id, category, content, title, like_cnt, created_at, last_modified_at)
VALUES
    (1, 'TOURISM', 'This is a post about tourism.', 'Tourism Post', 10, now(), now()),
    (2, 'DINING', 'This is a post about dining.', 'Dining Post', 5, now(), now());



-- -- PostImage 테이블에 이미지 데이터 추가
-- -- post_id는 post_tb의 게시글 ID를 참조합니다.
--
-- INSERT INTO post_image_tb (post_id, url)
-- VALUES
--     (1, 'https://example.com/image1.jpg'),
--     (1, 'https://example.com/image2.jpg'),
--     (2, 'https://example.com/image3.jpg'),
--     (2, 'https://example.com/image199.jpg'),
--     (3, 'https://example.com/image4.jpg'),
--     (3, 'https://example.com/image5.jpg'),
--     (4, 'https://example.com/image6.jpg');


INSERT INTO course_tb(course_id, name, distance, difficulty, duration, img_url,
                      rating_average, route_url,
                      mid_latitude, mid_longitude,
                      start_point_name, start_address, start_latitude, start_longitude,
                      end_point_name, end_address, end_latitude, end_longitude,
                      created_at, last_modified_at)
VALUES (1, 'Namparang Trail Course 1', 19.0, 'Moderate', '7h', 'https://shorturl.at/G5bWW',
        0,
        'https://mandi-courses.s3.ap-northeast-2.amazonaws.com/NamparangTrail_1.gpx',
        35.13646979816257, 129.06845628283918,
        'Oryukdo Sunrise Park', 'Busan, Nam-gu, 용호제2동 산198', 35.09969000704587, 129.12371004000306,
        'Busan Station', 'Choryang-dong, Busan', 35.11454483494164, 129.0407629776746,
        now(), now()),
       (2, 'Namparang Trail Course 2', 18.9, 'Moderate', '7h 30m', 'https://shorturl.at/G5bWW',
        0,
        'https://mandi-courses.s3.ap-northeast-2.amazonaws.com/NamparangTrail_2.gpx',
        35.09047477506102, 129.05427125282586,
        'Busan Station', 'Choryang-dong, Busan', 35.11454483494164, 129.0407629776746,
        'Yeongdo Bridge', 'Nampo-dong 1(il)-ga, Yeongdo-gu, Busan', 35.096556935459375, 129.03596760705113,
        now(), now()),
       (3, 'Namparang Trail Course 3', 14.9, 'Moderate', '5h 30m', 'https://shorturl.at/G5bWW',
        0,
        'https://mandi-courses.s3.ap-northeast-2.amazonaws.com/NamparangTrail_3.gpx',
        35.0599085725844, 129.01863399893045,
        'Yeongdo Bridge', 'Nampo-dong 1(il)-ga, Yeongdo-gu, Busan', 35.096556935459375, 129.03596760705113,
        'Gamcheon Sageori', 'Busan', 35.08746676146984, 129.00448727421463,
        now(), now()),
       (4, 'Namparang Trail Course 4', 21.8, 'Easy', '7h 30m', 'https://shorturl.at/G5bWW',
        0,
        'https://mandi-courses.s3.ap-northeast-2.amazonaws.com/NamparangTrail_4.gpx',
        35.04962791688741, 128.97025767713785,
        'Gamcheon Sageori', 'Busan', 35.08747070096433, 129.00448073633015,
        'Sinpyeong-dong Intersection', 'Busan', 35.09638778865339, 128.9553397335112,
        now(), now()),
       (5, 'Namparang Trail Course 5', 21.9, 'Easy', '7h', 'https://shorturl.at/G5bWW',
        0,
        'https://mandi-courses.s3.ap-northeast-2.amazonaws.com/NamparangTrail_5.gpx',
        35.086464453488595, 128.91221777535975,
        'Sinpyeong-dong Intersection', 'Busan', 35.096398433670394, 128.95534375682473,
        'Sinpyeong Park', '1455 Songjeong-dong, Gangseo-gu, Busan', 35.09804354980587, 128.82239227183163,
        now(), now()),
       (6, 'Namparang Trail Course 6', 14.8, 'Easy', '5h', 'https://shorturl.at/G5bWW',
        0,
        'https://mandi-courses.s3.ap-northeast-2.amazonaws.com/NamparangTrail_6.gpx',
        35.11484373360872, 128.7845040578395,
        'Sinpyeong Park', '1455 Songjeong-dong, Gangseo-gu, Busan', 35.09804069995878, 128.82239311002195,
        'Jadeok Intersection', 'Changwon-si', 35.10188925080001, 128.74467291869223,
        now(), now()),
       (7, 'Haeparang Trail Course 1', 16.9, 'Moderate', '6h 30m', 'https://shorturl.at/G5bWW',
        0,
        'https://mandi-courses.s3.ap-northeast-2.amazonaws.com/HaeparangTrail_1.gpx',
        35.122557012364254, 129.12364399060607,
        'Oryukdo Sunrise Park', 'Busan, Nam-gu, 용호제2동 산198', 35.09968874976039, 129.12370610050857,
        'Haeundae-gu', 'Busan', 35.158975124359124, 129.16027123108506,
        now(), now()),
       (8, 'Haeparang Trail Course 2', 14.0, 'Easy', '5h', 'https://shorturl.at/G5bWW',
        0,
        'https://mandi-courses.s3.ap-northeast-2.amazonaws.com/HaeparangTrail_2.gpx',
        35.18409283831714, 129.2129628919065,
        'Haeundae Tourist Information Center', '264 Haeundaehaebyeon-ro, Haeundae, Busan', 35.15897478908301, 129.1602734103799,
        'Daebeon Port', 'Busan', 35.22339432500303, 129.22718957997859,
        now(), now()),
       (9, 'Haeparang Trail Course 3', 16.7, 'Moderate', '6h', 'https://shorturl.at/G5bWW',
        0,
        'https://mandi-courses.s3.ap-northeast-2.amazonaws.com/HaeparangTrail_3.gpx',
        35.2594324015081, 129.22657845541835,
        'Daebeon Port', 'Busan', 35.22339474409818, 129.22718974761665,
        'Imnang Beach', 'Imnanghaean-gil, Jangan-eup, Gijang-gun, Busan', 35.31877049244942, 129.2641089297831,
        now(), now()),
       (10, 'Haeparang Trail Course 4', 19.6, 'Moderate', '7h 30m', 'https://shorturl.at/G5bWW',
        0,
        'https://mandi-courses.s3.ap-northeast-2.amazonaws.com/HaeparangTrail_4.gpx',
        35.34672053530814, 129.32477144524455,
        'Imnang Beach', 'Imnanghaean-gil, Jangan-eup, Gijang-gun, Busan', 35.318834194913514, 129.26414648070931,
        'Jinhahaebyeon', '50 Jinhahaebyeon-gil, Seosaeng-myeon, Ulju-gun, Ulsan', 35.38589486852288, 129.3475735746324,
        now(), now()),
       (11, 'Songdo Coast Bolle-gil Walkway', 7.0, 'Moderate', '2h 30m', 'https://shorturl.at/G5bWW',
        0,
        'https://mandi-courses.s3.ap-northeast-2.amazonaws.com/SongdoCoastBolle-gil.gpx',
        35.062172, 129.021646,
        'Songdo Beach (Hyeon-in Park)', '580-2 Amnam-dong, Seo-gu, Busan', 35.0739551, 129.0154284,
        'Songdo Beach', '580-2 Amnam-dong, Seo-gu, Busan', 35.073949, 129.015331,
        now(), now()),
       (12, 'Galmaetgil Trail 8-1', 10.2, 'Moderate', '3h', 'https://shorturl.at/G5bWW',
        0,
        'https://mandi-courses.s3.ap-northeast-2.amazonaws.com/GalmaetgilTrail_8_1.gpx',
        35.244211, 129.116541,
        'Sanghyeon Village', 'Busan', 35.266424, 129.112549,
        'Dongcheongyo Bridge', '591-6 Seokdae-dong, Haeundae-gu, Busan', 35.2172545, 129.1189148,
        now(), now()),
       (13, 'Galmaetgil Trail 9-1', 11.5, 'Easy', '3h', 'https://shorturl.at/G5bWW',
        0,
        'https://mandi-courses.s3.ap-northeast-2.amazonaws.com/GalmaetgilTrail_9_1.gpx',
        35.2780192, 129.1379544,
        'Sanghyeon Village', 'Busan', 35.2664439, 129.1126665,
        'Yigok Village', 'Busan', 35.2753522, 129.1788715,
        now(), now()),
       (14, 'Galmaetgil Trail 9-2', 9.0, 'Easy', '3h', 'https://shorturl.at/G5bWW',
        0,
        'https://mandi-courses.s3.ap-northeast-2.amazonaws.com/GalmaetgilTrail_9_2.gpx',
        35.267099, 129.199205,
        'Yigok Village', 'Busan', 35.275348, 129.178932,
        'Gijang-gun Office', 'Busan', 35.244844, 129.221095,
        now(), now()),
       (15, 'Galmaetgil Trail 5-2', 20.1, 'Hard', '7h', 'https://shorturl.at/G5bWW',
        0,
        'https://mandi-courses.s3.ap-northeast-2.amazonaws.com/GalmaetgilTrail_5_2.gpx',
        35.0139012, 128.8278066,
        'Cheonga Bridge', 'Busan', 35.0654814, 128.8348326,
        'Cheonga Bridge', 'Busan', 35.0655692, 128.8349774,
        now(), now()),
       (16, 'Galmaetgil Trail 6-1', 13.2, 'Moderate', '4h', 'https://shorturl.at/G5bWW',
        0,
        'https://mandi-courses.s3.ap-northeast-2.amazonaws.com/GalmaetgilTrail_6_1.gpx',
        35.164122, 128.973656,
        'Nakdong River Estuary Bank', 'Hadan-dong, Saha-gu, Busan', 35.105079, 128.956447,
        'Gupo Station', 'Gupo-dong, Busan', 35.206233, 128.996213,
        now(), now()),
       (17, 'Galmaetgil Trail 6-2', 23.0, 'Moderate', '7h', 'https://shorturl.at/G5bWW',
        0,
        'https://mandi-courses.s3.ap-northeast-2.amazonaws.com/GalmaetgilTrail_6_2.gpx',
        35.1643241, 129.0046655,
        'Gupo Station', '1157-1 Gupo-dong, Buk-gu, Busan', 35.2063313, 128.9962184,
        'Seongjigok Reservoir', '43-5 Choeup-dong, Busanjin District, Busan', 35.1825514, 129.046813,
        now(), now()),
       (18, 'Galmaetgil Trail 6-4', 11.3, 'Moderate', '3h', 'https://shorturl.at/G5bWW',
        0,
        'https://mandi-courses.s3.ap-northeast-2.amazonaws.com/GalmaetgilTrail_6_4.gpx',
        35.2428264, 129.0211733,
        'Gupo Station', '1157-1 Gupo-dong, Buk-gu, Busan', 35.2063423, 128.9963405,
        'Dongmun', '산41-8 Geumseong-dong, Geumjeong-gu, Busan', 35.2454877, 129.0637337,
        now(), now()),
       (19, 'Galmaetgil Trail 7-1', 9.3, 'Easy', '4h', 'https://shorturl.at/G5bWW',
        0,
        'https://mandi-courses.s3.ap-northeast-2.amazonaws.com/GalmaetgilTrail_7_1.gpx',
        35.2091175, 129.0511098,
        'Seongjigok Reservoir', '43-5 Choeup-dong, Busanjin District, Busan', 35.1825558, 129.0467995,
        'Dongmun', '산41-8 Geumseong-dong, Geumjeong-gu, Busan', 35.2454953, 129.0637156,
        now(), now()),
       (20, 'Galmaetgil Trail 7-2', 13.0, 'Moderate', '5h', 'https://shorturl.at/G5bWW',
        0,
        'https://mandi-courses.s3.ap-northeast-2.amazonaws.com/GalmaetgilTrail_7_2.gpx',
        35.2835369, 129.0723127,
        'Dongmun', '산41-8 Geumseong-dong, Geumjeong-gu, Busan', 35.2454899, 129.0637377,
        'Sanghyeon Village', '1020-8 Seon-dong, Geumjeong-gu, Busan', 35.2664548, 129.1126209,
        now(), now());

INSERT INTO completed_course_tb(completed_course_id, user_id, course_id, distance, trekking_path_image_url, is_reviewed,
                                review_content, review_score, reviewed_at, started_at, completed_at, created_at, last_modified_at)
VALUES (1, 3, 1, 0.875, 'https://github.com/user-attachments/assets/03fea9d2-c196-4a8a-84e0-4e10c36ecfc6', 1, 'good', 5, now(), DATEADD('MINUTE', -35, now()), now(), now(), now()),
       (2, 3, 2, 1.23, 'https://github.com/user-attachments/assets/03fea9d2-c196-4a8a-84e0-4e10c36ecfc6', 1, 'nice', 4, now(), DATEADD('MINUTE', -60, now()), now(), now(), now()),
       (3, 3, 3, 2.7, 'https://github.com/user-attachments/assets/03fea9d2-c196-4a8a-84e0-4e10c36ecfc6', 0, null, null, null, DATEADD('MINUTE', -84, now()), now(), now(), now()),
       (4, 4, 4, 0.875, 'https://github.com/user-attachments/assets/03fea9d2-c196-4a8a-84e0-4e10c36ecfc6', 1, 'good', 5, now(), DATEADD('MINUTE', -27, now()), now(), now(), now()),
       (5, 4, 5, 1.23, 'https://github.com/user-attachments/assets/03fea9d2-c196-4a8a-84e0-4e10c36ecfc6', 1, 'nice', 4, now(), DATEADD('MINUTE', -60, now()), now(), now(), now()),
       (6, 4, 6, 4.0, 'https://github.com/user-attachments/assets/03fea9d2-c196-4a8a-84e0-4e10c36ecfc6', 0, null, null, null, DATEADD('MINUTE', -72, now()), now(), now(), now())
;

-- 기본 댓글 (parent_comment_id가 NULL)
INSERT INTO comment_tb (post_id, parent_comment_id, content, like_cnt, created_at, last_modified_at)
VALUES
    (1, NULL, 'This is a comment on the first post.', 5, now(), now()),  -- 1번 게시글에 대한 댓글
    (2, NULL, 'Another comment on a different post.', 3, now(), now()); -- 2번 게시글에 대한 댓글




-- 대댓글 (parent_comment_id가 기존 댓글의 comment_id)
INSERT INTO comment_tb (post_id, parent_comment_id, content, like_cnt, created_at, last_modified_at)
VALUES
    (1, 1, 'This is a reply to the first comment on post 1.', 2, now(), now()),  -- 1번 게시글의 1번 댓글에 대한 대댓글
    (2, 2, 'A reply to the second post comment.', 1, now(), now());-- 2번 게시글의 2번 댓글에 대한 대댓글

