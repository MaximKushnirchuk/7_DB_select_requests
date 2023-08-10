--  Задание 1

-- 1_таблица - genries
INSERT INTO genries(genre_name)
     VALUES ('rap'), ('rock'), ('hip hop'), ('pop'), ('metall');

-- 2_таблица - singers
INSERT INTO singers(allias)
VALUES ('Timoty'),
       ('Limp bizkit'),
       ('Linkin park'),
       ('Баста'),
       ('Филипп Киркоров');

-- 3_table - singer_genre
INSERT INTO singer_genre(id_genre_sg, id_singer_sg)
     VALUES (1, 1), (1, 2), (1, 4), (2, 3), (3, 1),
            (4, 1), (4, 4), (4, 5), (5, 3), (5, 2);


--  4_table - albums
INSERT INTO albums(album_name, year_of_created)
     VALUES ('Black star', 2006), 
            ('Олимп', 2020);

INSERT INTO albums(album_name, year_of_created)
     VALUES ('Results may vary', 2003),
            ('Gold cobra', 2011);

INSERT INTO albums(album_name, year_of_created)
     VALUES ('Meteora', 2003),
            ('Hybrid theory', 2000);

INSERT INTO albums(album_name, year_of_created)
     VALUES ('Баста 1', 2019),
            ('Теплый', 2009);

INSERT INTO albums(album_name, year_of_created)
     VALUES ('Ты ты ты', 1991),
            ('Примадонна', 1995);

-- 5_table - singer_album

INSERT INTO singer_album(id_singer_sa, id_album_sa)
     VALUES (1, 1), (1, 2), (2, 3), (2, 4), (3, 5),
            (3, 6), (4, 7), (4, 8), (5, 9), (5, 10),
            (1, 10), (2, 5), (3, 4), (4, 2), (5, 7);


-- 6_table - tracks

INSERT INTO tracks(track_name, long, from_album)
     VALUES ('Откровение', '00:04:54', 1),
            ('Сны', '00:04:11', 1),
            ('My zombie', '00:04:07', 1),
            ('Жара', '00:04:27', 1),
            ('Вопросы', '00:04:22', 1);

INSERT INTO tracks(track_name, long, from_album)
     VALUES ('Мага', '00:03:50', 2),
            ('Олимп - мой', '00:03:41', 2),
            ('Автомойка', '00:04:27', 2),
            ('Баклажан', '00:03:07', 2);

INSERT INTO tracks(track_name, long, from_album)
     VALUES ('Eat my alive', '00:03:55', 3),
            ('Drown', '00:04:51', 3),
            ('Almost over', '00:03:49', 3),
            ('Phenomenon', '00:03:07', 3),
            ('Behind blue eyes', '00:03:07', 3);

INSERT INTO tracks(track_name, long, from_album)
     VALUES ('Introbra', '00:03:35', 4),
            ('Myloser', '00:04:31', 4),
            ('Autotunage', '00:03:49', 4),
            ('Shotmygun', '00:03:07', 4),
            ('Bring it back', '00:03:07', 4);

INSERT INTO tracks(track_name, long, from_album)
     VALUES ('Numb', '00:04:55', 5),
            ('Faint', '00:05:51', 5),
            ('My my', '00:03:49', 5),
            ('Foreword my', '00:03:07', 5),
            ('Breaking the habit', '00:03:07', 5);

INSERT INTO tracks(track_name, long, from_album)
     VALUES ('In the end', '00:04:13', 6),
            ('Slip', '00:03:29', 6),
            ('Esaul', '00:03:07', 6),
            ('My', '00:03:38', 6),
            ('Runaway', '00:03:04', 6);

INSERT INTO tracks(track_name, long, from_album)
     VALUES ('Сложно', '00:04:50', 7),
            ('Осень', '00:03:35', 7),
            ('Гонки', '00:03:10', 7),
            ('Моя игра', '00:04:31', 7),
            ('Так плачет весна', '00:03:51', 7);

INSERT INTO tracks(track_name, long, from_album)
     VALUES ('Водка', '00:04:40', 8),
            ('Качели', '00:03:14', 8),
            ('Зять', '00:04:19', 8),
            ('Калифорния', '00:04:30', 8),
            ('Полина', '00:02:45', 8);

INSERT INTO tracks(track_name, long, from_album)
     VALUES ('Мой бокал', '00:04:18', 9),
            ('Таганка', '00:03:13', 9),
            ('Атлантида', '00:03:43', 9),
            ('Ты ты ты', '00:04:36', 9),
            ('Кто создал тебя такую', '00:04:16', 9),
            ('Финал', '00:04:50', 9);

INSERT INTO tracks(track_name, long, from_album)
     VALUES ('Цветочек', '00:04:38', 10),
            ('Шальная', '00:04:32', 10),
            ('Мой', '00:03:22', 10),
            ('Остывшее сердце', '00:04:50', 10),
            ('Тебя забыть', '00:04:22', 10);


-- 7_table - collections
INSERT INTO collections(collection_name, created_year)
     VALUES ('Союз 18', 2018),
            ('The best tracks', 2011),
            ('Rock and roll ', 2019),
            ('Best of Rap', 2015);


-- 8_table - collections_tracks
INSERT INTO collections_tracks(id_track_ct, id_collection_ct)
     VALUES (1, 1), (44, 1), (4, 1), (35, 1), (7, 1), (42, 1);

INSERT INTO collections_tracks(id_track_ct, id_collection_ct)
     VALUES (3, 2), (23, 2), (11, 2), (42, 2), (33, 2), (28, 2);

INSERT INTO collections_tracks(id_track_ct, id_collection_ct)
     VALUES (11, 3), (15, 3), (29, 3), (20, 3), (19, 3), (22, 3);

INSERT INTO collections_tracks(id_track_ct, id_collection_ct)
     VALUES (5, 4), (37, 4), (9, 4), (36, 4), (8, 4), (39, 4);