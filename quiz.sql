CREATE DATABASE quiz;

CREATE TABLE questions
(
    id  INTEGER PRIMARY KEY,
    txt VARCHAR(255)
);

INSERT INTO questions(id, txt)
VALUES (1, 'Какой английский мыслитель написал книгу "Левиафан"?'),
       (2, 'Кто ввел прямоугольную систему координат?'),
       (3, 'Кто является автором романа "Норма"?'),
       (4, 'Какой кот проживает на озере Балхаш?');

CREATE TABLE answers
(
    id         INTEGER PRIMARY KEY,
    var_answer VARCHAR(100)
);

INSERT INTO answers (id, var_answer)
VALUES (1, 'Стив Джобс'),
       (2, 'Фрэнсис Бэкон'),
       (3, 'Томас Гоббс'),
       (4, 'Оливер Кромвель'),
       (5, 'Рене Магритт'),
       (6, 'Аристотель'),
       (7, 'Готфрид Лейбниц'),
       (8, 'Рене Декарт'),
       (9, 'Джейн Остин'),
       (10, 'Владимир Набоков'),
       (11, 'Виктор Пелевин'),
       (12, 'Владимир Сорокин'),
       (13, 'Сиамский'),
       (14, 'Камышовый'),
       (15, 'Бенгальский'),
       (16, 'Персидский');

CREATE TABLE questions_to_answers
(
    question_id    INTEGER,
    answer_id      INTEGER,
    correct_answer BOOLEAN
);

INSERT INTO questions_to_answers(question_id, answer_id, correct_answer)
VALUES (1, 1, FALSE),
       (1, 2, FALSE),
       (1, 3, TRUE),
       (1, 4, FALSE),
       (2, 5, FALSE),
       (2, 6, TRUE),
       (2, 7, FALSE),
       (2, 8, TRUE),
       (3, 9, FALSE),
       (3, 10, FALSE),
       (3, 11, FALSE),
       (3, 12, TRUE),
       (4, 13, FALSE),
       (4, 14, TRUE),
       (4, 15, FALSE),
       (4, 16, FALSE);

SELECT q.txt, answer_id, a.var_answer, correct_answer
FROM questions_to_answers qa
         JOIN questions q ON qa.question_id = q.id
         JOIN answers a ON qa.answer_id = a.id


