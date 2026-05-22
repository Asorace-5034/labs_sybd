-- Таблица покупателей
CREATE TABLE Buyers (
    id INT PRIMARY KEY IDENTITY(1,1),
    first_name NVARCHAR(50) NOT NULL,
    last_name NVARCHAR(50) NOT NULL,
    birthday DATE
);

-- Таблица товаров
CREATE TABLE Goods (
    id INT PRIMARY KEY IDENTITY(1,1),
    nameG NVARCHAR(100) NOT NULL,
    cost DECIMAL(10, 2) NOT NULL
);

-- Таблица покупок
CREATE TABLE Purchase (
    id INT PRIMARY KEY IDENTITY(1,1),
    buyer_id INT NOT NULL,
    good_id INT NOT NULL,
    datetimes DATETIME NOT NULL,
    FOREIGN KEY (buyer_id) REFERENCES Buyers(id),
    FOREIGN KEY (good_id) REFERENCES Goods(id)
);

-- Добавляем покупателей
INSERT INTO Buyers (first_name, last_name, birthday) VALUES
('Иван', 'Петров', '1990-05-15'),
('Мария', 'Сидорова', '1985-08-22'),
('Алексей', 'Иванов', '2000-03-10'),
('Елена', 'Козлова', '1995-12-01'),
('Дмитрий', 'Смирнов', '1988-07-19'),
('Ольга', 'Морозова', '1992-07-07');  

-- Добавляем товары
INSERT INTO Goods (nameG, cost) VALUES
('Аспирин', 50.00),
('Парацетамол', 45.50),
('Нурофен', 120.00),
('Витамин С', 80.00),
('Активированный уголь', 30.00);

-- Добавляем покупки
INSERT INTO Purchase (buyer_id, good_id, datetimes) VALUES
(1, 1, '20240115 00:00:00'),
(1, 2, '20240115 00:00:00'),
(2, 3, '20240120 00:00:00'),
(2, 4, '20240120 00:00:00'),
(3, 1, '20240125 00:00:00'),
(3, 5, '20240125 00:00:00'),
(4, 2, '20240201 00:00:00'),
(4, 3, '20240201 00:00:00'),
(1, 4, '20240205 00:00:00'),
(5, 5, '20240210 00:00:00');

SELECT * FROM Buyers;
SELECT * FROM Goods;
SELECT * FROM Purchase;