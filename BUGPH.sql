# Host: localhost  (Version 5.5.5-10.1.30-MariaDB)
# Date: 2019-04-10 20:09:50
# Generator: MySQL-Front 6.1  (Build 1.26)


#
# Structure for table "comentarios"
#

DROP TABLE IF EXISTS `comentarios`;
CREATE TABLE `comentarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `comentario` text,
  `dataHora` datetime DEFAULT NULL,
  `id_post` int(11) DEFAULT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_usuario` (`id_usuario`),
  KEY `id_post` (`id_post`),
  CONSTRAINT `comentarios_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id`),
  CONSTRAINT `comentarios_ibfk_2` FOREIGN KEY (`id_post`) REFERENCES `posts` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Data for table "comentarios"
#

