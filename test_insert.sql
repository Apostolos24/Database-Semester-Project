-- Insert episodes for the year 1999
INSERT INTO episodes (episode, episode_year, ep_image, ep_desc)
VALUES 
    (1, 1999, 'https://example.com/episode_1_year_1999.jpg', 'Episode 1 in 1999'),
    (2, 1999, 'https://example.com/episode_2_year_1999.jpg', 'Episode 2 in 1999'),
    (3, 1999, 'https://example.com/episode_3_year_1999.jpg', 'Episode 3 in 1999'),
    (4, 1999, 'https://example.com/episode_4_year_1999.jpg', 'Episode 4 in 1999'),
    (5, 1999, 'https://example.com/episode_5_year_1999.jpg', 'Episode 5 in 1999'),
    (6, 1999, 'https://example.com/episode_6_year_1999.jpg', 'Episode 6 in 1999'),
    (7, 1999, 'https://example.com/episode_7_year_1999.jpg', 'Episode 7 in 1999'),
    (8, 1999, 'https://example.com/episode_8_year_1999.jpg', 'Episode 8 in 1999'),
    (9, 1999, 'https://example.com/episode_9_year_1999.jpg', 'Episode 9 in 1999'),
    (10, 1999, 'https://example.com/episode_10_year_1999.jpg', 'Episode 10 in 1999');

-- Insert episodes for the year 2000
INSERT INTO episodes (episode, episode_year, ep_image, ep_desc)
VALUES 
    (1, 2000, 'https://example.com/episode_1_year_2000.jpg', 'Episode 1 in 2000'),
    (2, 2000, 'https://example.com/episode_2_year_2000.jpg', 'Episode 2 in 2000'),
    (3, 2000, 'https://example.com/episode_3_year_2000.jpg', 'Episode 3 in 2000'),
    (4, 2000, 'https://example.com/episode_4_year_2000.jpg', 'Episode 4 in 2000'),
    (5, 2000, 'https://example.com/episode_5_year_2000.jpg', 'Episode 5 in 2000'),
    (6, 2000, 'https://example.com/episode_6_year_2000.jpg', 'Episode 6 in 2000'),
    (7, 2000, 'https://example.com/episode_7_year_2000.jpg', 'Episode 7 in 2000'),
    (8, 2000, 'https://example.com/episode_8_year_2000.jpg', 'Episode 8 in 2000'),
    (9, 2000, 'https://example.com/episode_9_year_2000.jpg', 'Episode 9 in 2000'),
    (10, 2000, 'https://example.com/episode_10_year_2000.jpg', 'Episode 10 in 2000');

-- Insert critics for episodes in the year 1999 with constraint
INSERT INTO is_a_critic (episode_year, episode, first_name, last_name, id)
VALUES 
    -- Episode 1
    (1999, 1, 'Ahmed', 'El-Masry', 1),
    (1999, 1, 'Alex', 'Andersson', 2),
    (1999, 1, 'Ali', 'Al-Mansoori', 3),
    -- Episode 2
    (1999, 2, 'Alice', 'Rossi', 1),
    (1999, 2, 'Amir', 'Khan', 2),
    (1999, 2, 'Anastasia', 'Kuznetsova', 3),
    -- Episode 3
    (1999, 3, 'Andrew', 'Cooper', 1),
    (1999, 3, 'Anna', 'Novak', 2),
    (1999, 3, 'Anna', 'Smith', 3),
    -- Episode 4
    (1999, 4, 'Ahmed', 'El-Masry', 1),
    (1999, 4, 'Alex', 'Andersson', 2),
    (1999, 4, 'Ali', 'Al-Mansoori', 3),
    -- Episode 5
    (1999, 5, 'Alice', 'Rossi', 1),
    (1999, 5, 'Amir', 'Khan', 2),
    (1999, 5, 'Anastasia', 'Kuznetsova', 3),
    -- Episode 6
    (1999, 6, 'Andrew', 'Cooper', 1),
    (1999, 6, 'Anna', 'Novak', 2),
    (1999, 6, 'Anna', 'Smith', 3),
    -- Episode 7
    (1999, 7, 'Ahmed', 'El-Masry', 1),
    (1999, 7, 'Alex', 'Andersson', 2),
    (1999, 7, 'Ali', 'Al-Mansoori', 3),
    -- Episode 8
    (1999, 8, 'Alice', 'Rossi', 1),
    (1999, 8, 'Amir', 'Khan', 2),
    (1999, 8, 'Ahmed', 'El-Masry', 3),
    -- Episode 9
    (1999, 9, 'Andrew', 'Cooper', 1),
    (1999, 9, 'Anna', 'Novak', 2),
    (1999, 9, 'Anna', 'Smith', 3),
    -- Episode 10
    (1999, 10, 'Ahmed', 'El-Masry', 1),
    (1999, 10, 'Alex', 'Andersson', 2),
    (1999, 10, 'Ali', 'Al-Mansoori', 3);

-- Insert critics for episodes in the year 2000 with constraint
INSERT INTO is_a_critic (episode_year, episode, first_name, last_name, id)
VALUES 
    -- Episode 1
    (2000, 1, 'Ahmed', 'El-Masry', 1),
    (2000, 1, 'Alex', 'Andersson', 2),
    (2000, 1, 'Ali', 'Al-Mansoori', 3),
    -- Episode 2
    (2000, 2, 'Alice', 'Rossi', 1),
    (2000, 2, 'Amir', 'Khan', 2),
    (2000, 2, 'Anastasia', 'Kuznetsova', 3),
    -- Episode 3
    (2000, 3, 'Andrew', 'Cooper', 1),
    (2000, 3, 'Anna', 'Novak', 2),
    (2000, 3, 'Anna', 'Smith', 3),
    -- Episode 4
    (2000, 4, 'Ahmed', 'El-Masry', 1),
    (2000, 4, 'Alex', 'Andersson', 2),
    (2000, 4, 'Ali', 'Al-Mansoori', 3),
    -- Episode 5
    (2000, 5, 'Alice', 'Rossi', 1),
    (2000, 5, 'Amir', 'Khan', 2),
    (2000, 5, 'Anastasia', 'Kuznetsova', 3),
    -- Episode 6
    (2000, 6, 'Andrew', 'Cooper', 1),
    (2000, 6, 'Anna', 'Novak', 2),
    (2000, 6, 'Anna', 'Smith', 3),
    -- Episode 7
    (2000, 7, 'Ahmed', 'El-Masry', 1),
    (2000, 7, 'Alex', 'Andersson', 2),
    (2000, 7, 'Ali', 'Al-Mansoori', 3),
    -- Episode 8
    (2000, 8, 'Alice', 'Rossi', 1),
    (2000, 8, 'Amir', 'Khan', 2),
    (2000, 8, 'Anastasia', 'Kuznetsova', 3),
    -- Episode 9
    (2000, 9, 'Andrew', 'Cooper', 1),
    (2000, 9, 'Alex', 'Andersson', 2),
    (2000, 9, 'Anna', 'Smith', 3),
    -- Episode 10
    (2000, 10, 'Ahmed', 'El-Masry', 1),
    (2000, 10, 'Alex', 'Andersson', 2),
    (2000, 10, 'Ali', 'Al-Mansoori', 3);
