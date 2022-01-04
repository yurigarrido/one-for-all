CREATE DATABASE IF NOT EXISTS SpotifyClone;

USE SpotifyClone;

CREATE TABLE planos (
plano_id INT PRIMARY KEY AUTO_INCREMENT,
plano VARCHAR(50) NOT NULL,
disponivel INT NOT NULL,
valor_plano FLOAT NOT NULL
) engine = InnoDB;

CREATE TABLE users (
user_id INT PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(50) NOT NULL,
idade INT NOT NULL,
plano_id INT NOT NULL,
FOREIGN KEY(plano_id) REFERENCES planos (plano_id)
) engine = InnoDB;

CREATE TABLE artistas (
artista_id INT PRIMARY KEY AUTO_INCREMENT,
name_artista VARCHAR(50) NOT NULL
);

CREATE TABLE albuns (
album_id INT PRIMARY KEY AUTO_INCREMENT,
nome_album VARCHAR(50) NOT NULL,
artista_id INT NOT NULL,
FOREIGN KEY (artista_id) REFERENCES artistas (artista_id)
);

CREATE TABLE cancoes (
cancoes_id INT PRIMARY KEY AUTO_INCREMENT,
nome_cancao VARCHAR(50) NOT NULL,
album_id INT NOT NULL,
FOREIGN KEY (album_id) REFERENCES albuns (album_id)
) engine = InnoDB;

CREATE TABLE historico (
user_id INT NOT NULL,
cancoes_id INT NOT NULL,
FOREIGN KEY (cancoes_id) REFERENCES cancoes (cancoes_id),
FOREIGN KEY (user_id) REFERENCES users (user_id),
CONSTRAINT PRIMARY KEY (cancoes_id, user_id)
) engine = InnoDB;

CREATE TABLE seguidores (
user_id INT NOT NULL,
artista_id INT NOT NULL,
FOREIGN KEY (user_id) REFERENCES users (user_id),
FOREIGN KEY (artista_id) REFERENCES artistas (artista_id),
CONSTRAINT PRIMARY KEY (artista_id, user_id)
) engine = InnoDB;


INSERT INTO planos (plano, disponivel, valor_plano) VALUES
('gratuito', 1, 0),
('familiar', 1, 7.99),
('universitário', 1, 5.99);

INSERT INTO users (name, idade, plano_id)VALUES
('Thati', 23, 1),
('Cintia', 35, 2),
('Bill', 20, 3),
('Roger', 45, 1);

INSERT INTO artistas (name_artista)VALUES
('Walter Phoenix'),
('Peter Strong'),
('Lance Day'),
('Freedie Shannon');

INSERT INTO seguidores (user_id, artista_id)VALUES
(1, 1),
(1, 4),
(1, 3),
(2, 1),
(2, 3),
(3, 2),
(3, 1),
(4, 4);

INSERT INTO albuns (nome_album, artista_id)VALUES
('Envious', 1),
('Exuberant', 1),
('Hallowed Steam', 2),
('Incandescent', 3),
('Temporary Culture', 4);

INSERT INTO cancoes (nome_cancao, album_id)VALUES
('Soul For Us', 1),
('Reflections Of Magic', 1),
('Dance With Her Own', 1),
('Troubles Of My Inner Fire', 2),
('Time Fireworks', 2),
('Magic Circus', 3),
('Honey, So Do I', 3),
("Sweetie, Let's Go Wild", 3),
('She Knows', 3),
('Fantasy For Me', 4),
('Celebration Of More', 4),
('Rock His Everything', 4),
('Home Forever', 4),
('Diamond Power', 4),
("Honey, Let's Be Silly", 4),
('Thang Of Thunder', 5),
('Words Of Her Life', 5),
('Without My Streets', 5);

INSERT INTO historico (user_id, cancoes_id)VALUES
(1, 1),
(1, 6),
(1, 14),
(1, 16),
(2, 13),
(2, 17),
(2, 2),
(2, 15),
(3, 4),
(3, 16),
(3, 6),
(4, 3),
(4, 18),
(4, 11); 
