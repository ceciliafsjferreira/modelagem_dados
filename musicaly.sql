USE musicaly;
CREATE TABLE usuario (
    id_usuario INT NOT NULL,
    nome_usuario VARCHAR(45) NOT NULL,
    e_mail_usuario VARCHAR(45) NOT NULL,
    PRIMARY KEY (id_usuario)
);
CREATE TABLE artista (
    usuario_id_usuario INT NOT NULL,
    nome_artistico VARCHAR(45) NOT NULL,
    PRIMARY KEY (usuario_id_usuario),
    FOREIGN KEY (usuario_id_usuario) REFERENCES usuario(id_usuario)
);
CREATE TABLE ouvinte (
    usuario_id_usuario INT NOT NULL,
    plano_assinatura VARCHAR(45) NOT NULL,
    PRIMARY KEY (usuario_id_usuario),
    FOREIGN KEY (usuario_id_usuario) REFERENCES usuario(id_usuario)
);
CREATE TABLE musica (
    id_musica INT NOT NULL,
    titulo VARCHAR(45) NOT NULL,
    duracao TIME NOT NULL,
    PRIMARY KEY (id_musica)
);
CREATE TABLE playlist (
    id_playlist INT NOT NULL,
    nome_playlist VARCHAR(45) NOT NULL,
    ouvinte_usuario_id_usuario INT NOT NULL,
    PRIMARY KEY (id_playlist),
    FOREIGN KEY (ouvinte_usuario_id_usuario) REFERENCES ouvinte(usuario_id_usuario)
);
CREATE TABLE item_playlist (
    playlist_id_playlist INT NOT NULL,
    musica_id_musica INT NOT NULL,
    ordem_reproducao INT,
    PRIMARY KEY (playlist_id_playlist, musica_id_musica),
    FOREIGN KEY (playlist_id_playlist) REFERENCES playlist(id_playlist),
    FOREIGN KEY (musica_id_musica) REFERENCES musica(id_musica)
);
CREATE TABLE seguidores (
    usuario_id_usuario_seguidor INT NOT NULL,
    usuario_id_usuario_seguido INT NOT NULL,
    PRIMARY KEY (usuario_id_usuario_seguidor, usuario_id_usuario_seguido),
    FOREIGN KEY (usuario_id_usuario_seguidor) REFERENCES usuario(id_usuario),
    FOREIGN KEY (usuario_id_usuario_seguido) REFERENCES usuario(id_usuario)
);
INSERT INTO usuario (id_usuario, nome_usuario, e_mail_usuario) 
VALUES (1, 'Alexandre Magno', 'chorao@cbj.com');

INSERT INTO usuario (id_usuario, nome_usuario, e_mail_usuario) 
VALUES (2, 'Cecília', 'cecilia@fiap.com.br');

INSERT INTO usuario (id_usuario, nome_usuario, e_mail_usuario) 
VALUES (3, 'João Silva', 'joao@email.com');

INSERT INTO artista (usuario_id_usuario, nome_artistico) 
VALUES (1, 'Charlie Brown Jr.');

INSERT INTO ouvinte (usuario_id_usuario, plano_assinatura) 
VALUES (2, 'Premium');

INSERT INTO ouvinte (usuario_id_usuario, plano_assinatura) 
VALUES (3, 'Free');

INSERT INTO musica (id_musica, titulo, duracao) 
VALUES (101, 'Zóio de Lula', '00:04:12');

INSERT INTO musica (id_musica, titulo, duracao) 
VALUES (102, 'Dias de Luta, Dias de Glória', '00:02:25');

INSERT INTO musica (id_musica, titulo, duracao) 
VALUES (103, 'Céu Azul', '00:03:20');

INSERT INTO playlist (id_playlist, nome_playlist, ouvinte_usuario_id_usuario) 
VALUES (1001, 'Rock Nacional', 2);

INSERT INTO item_playlist (playlist_id_playlist, musica_id_musica, ordem_reproducao) 
VALUES (1001, 101, 1);

INSERT INTO item_playlist (playlist_id_playlist, musica_id_musica, ordem_reproducao) 
VALUES (1001, 103, 2);

INSERT INTO seguidores (usuario_id_usuario_seguidor, usuario_id_usuario_seguido) 
VALUES (2, 1);

SELECT 
    u.nome_usuario AS "Criador da Playlist",
    p.nome_playlist AS "Nome da Playlist",
    ip.ordem_reproducao AS "Ordem",
    m.titulo AS "Música",
    m.duracao AS "Duração"
FROM usuario u
JOIN ouvinte o 
    ON u.id_usuario = o.usuario_id_usuario
JOIN playlist p 
    ON o.usuario_id_usuario = p.ouvinte_usuario_id_usuario
JOIN item_playlist ip 
artista    ON p.id_playlist = ip.playlist_id_playlist
JOIN musica m 
    ON ip.musica_id_musica = m.id_musica
WHERE u.nome_usuario = 'Cecília'
ORDER BY ip.ordem_reproducao;