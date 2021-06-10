-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 08-06-2021 a las 10:34:26
-- Versión del servidor: 5.7.24
-- Versión de PHP: 7.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `proyecto`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `Codigo` int(11) NOT NULL,
  `Nombre` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Telefono` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `LimiteCredito` double(15,2) NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `desarrolladoras`
--

CREATE TABLE `desarrolladoras` (
  `desarrolladoraid` int(11) NOT NULL,
  `nombdesarrolladora` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `desarrolladoras`
--

INSERT INTO `desarrolladoras` (`desarrolladoraid`, `nombdesarrolladora`, `created_at`, `updated_at`) VALUES
(1, 'mojan', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `juegos`
--

CREATE TABLE `juegos` (
  `juegoid` int(10) UNSIGNED NOT NULL,
  `nombre_juego` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` longtext COLLATE utf8mb4_unicode_ci,
  `plataformaid` int(11) NOT NULL,
  `desarrolladoraid` int(11) NOT NULL,
  `precio` double(5,2) NOT NULL,
  `entrega` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `imagen` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `juegos`
--

INSERT INTO `juegos` (`juegoid`, `nombre_juego`, `descripcion`, `plataformaid`, `desarrolladoraid`, `precio`, `entrega`, `imagen`, `created_at`, `updated_at`) VALUES
(1, 'diablo3', 'mmo rpg y mas', 2, 1, 30.00, 'código online', 'diablo3.gif', NULL, '2021-06-03 10:37:59'),
(2, 'minecraft', 'juego de mundo abierto de cubos', 2, 1, 25.00, 'codigo', 'minecraft.gif', NULL, '2021-06-03 10:34:28'),
(3, 'overwach2', 'shoter online', 3, 1, 55.00, 'codigo online', 'overwatch.gif', NULL, '2021-05-31 06:51:32'),
(4, 'the binding of isaac', 'juego de el trauma de un niño', 2, 1, 50.00, 'codigo', 'the binding of isaac.gif', NULL, NULL),
(5, 'bioshock', 'juego lineal de una utopía en una ciudad bajo el mar', 2, 1, 25.00, 'codigo', 'bioshock.gif', NULL, NULL),
(6, 'bioshock 2', 'secuela de la historia en bioshock sobre un colosal que busca a su hija ', 2, 1, 15.00, 'codigo', 'bioshock 2.gif', NULL, NULL),
(7, 'borderlands', 'Borderlands llega en una época del año en que se enfrenta a títulos muy fuertes, algunos que ya salieron y\r\notros que están por salir. ¿Serán suficientes los millones de armas\r\ndisponibles para salir adelante y convertirse en un buen título? ¿O\r\nes otro juego que debió retrasarse hasta el próximo año?\r\n\r\nEste juego es descrito por sus\r\ncreadores como un First Person Role Playing Shooter (FPRPS), además\r\nlo han promocionado como un título que tiene cientos de miles (a veces\r\nhan dicho millones) de armas, así que déjame explicarte sin\r\nexageraciones de marketing, el tipo de experiencia que tendrás al jugar\r\nBorderlands.', 2, 1, 60.00, 'codigo', 'borderlands.gif', NULL, NULL),
(8, 'borderlands 2', 'El juego se sitúa 5 años después de su anterior título Borderlands. Jack el guapo, antagonista principal, ha tomado la corporación Hyperion, y se ha autoproclamado dictador de Pandora tras haber encontrado \"La Cámara\". El nuevo grupo viaja en tren en busca de La Cámara.', 2, 1, 30.00, 'codigo', 'borderlands 2.gif', NULL, NULL),
(9, 'borderlands 3', 'Parece que en la actualidad es complicado tomar la decisión de mantener una propuesta y mejorarla hasta niveles insospechados sin salir de los límites, después de todo, estamos en una época en la que hay sectores de jugadores que piden cambios radicales acusando que tal o cual franquicia es más de lo mismo, y otros que esperan que el mejor juego de todos los tiempos salga cada mes. Sin embargo, hay algunas IP cuya historia, temática y esencia se prestan para que los estudios hagan lo que quieren sin seguir las tendencias y Borderlands es una de ellas. Así que aquí estamos, 7 años después de Borderlands 2, a punto de entrar en un festejo postapocalíptico donde el caos es obligatorio, el humor negro es una necesidad y la acción y adicción son la norma. Bienvenidos Vault Hunters, a Borderlands 3.\r\n\r\n', 2, 1, 30.00, 'codigo', 'borderlands 3.gif', NULL, NULL),
(10, 'doom', 'jugo de matar demonios', 2, 1, 50.00, '', 'doom.gif', NULL, NULL),
(11, 'doom eternal', 'En 2016 aprendimos la valiosa lección de que las joyas del pasado pueden regresar y volver a estar vigentes cuando se toman ciertos riesgos y se mantiene la esencia que los convirtió en clásicos. Tal es el caso de DOOM, entrega desarrollada por id Software que se atrevió a regresar después de permanecer dormida por más de 10 años a un mercado que parecía haber olvidado lo importante de las enseñanzas de antaño. El resultado fue una sorpresa y solo nos dejó con ganas de aniquilar a más demonios y detonar nuestros cohetes y escopetas al compás de una banda sonora explosiva. Por tal motivo, la secuela de DOOM es sumamente esperada y solo se espera que cumpla una cosa: mantener en alto los valores que convirtieron al juego en una joya moderna del género FPS. El veredicto ya lo tenemos y estamos mayormente convencidos con el nuevo trabajo de id Software, sin embargo, hay algunos aspectos que no nos convencieron. Veamos cuáles son.', 2, 1, 60.00, '', 'doom eternal.gif', NULL, NULL),
(12, 'gary\'s mod', 'juego de modelaje de mods', 2, 1, 20.00, '', 'gary\'s mod.gif', NULL, NULL),
(13, 'lost planet', 'en este mundo las temperaturas son extremas y los monstruos son enormes ', 2, 1, 15.00, '', 'lost planet.gif', NULL, NULL),
(14, 'lost planet 2', 'secuela de lost planet ', 2, 1, 10.00, '', 'lost planet 2.gif', NULL, NULL),
(15, 'gears 5', 'Desde su debut a finales de 2006, Gears of War se convirtió en una de las franquicias protagonistas de la industria y es fácil ver por qué: tiene un universo bien construido, lleno de historias inmersivas y emotivas que están acompañadas de un sistema de juego explosivo que te invita a jugarlo una y otra vez. Sumado a esto está un multijugador extremadamente divertido, intenso y divertido, el cual con el paso del tiempo fue cultivando una comunidad llena de pasión.\r\n\r\nEn el mundo de los videojuegos llega el punto en el que tener un lugar tan importante dejar de ser un mero privilegio para convertirse en una enorme responsabilidad. Después de todo, hay millones de personas allá afuera esperando probar tu siguiente juego y cada una de ellas tiene distintas razones por las cuales aman la saga a la que pertenece. Ante esto, los desarrolladores no pueden ―ni quieren― fallar por lo que dan todo para entregar un producto que deje un buen sabor de boca a su comunidad.', 2, 1, 69.00, '', 'gears 5.gif', NULL, NULL),
(16, 'monster hunter world', 'El clima en el nuevo mundo es bueno, lo que indica que será un buen día de cacería. En el suelo puedo ver huellas de Rathalos que siguen frescas, pero hoy el wyvern escarlata no será mi presa. Continúo mi investigación, aunque en esta expedición no busco algo en especial, tal vez hoy capture ese Bazelgeuse con el que tanto he batallado. Estoy cerca de completar mi nueva armadura. Los lafarillos me muestran el camino, parece que mi investigación ha dado frutos y mi fiel palico lo confirma. Escucho un ruido y, de inmediato, empuño mi hacha-espada, respiro hondo y veo a mi alrededor. Me tranquilizo y noto que es solo un Kelbi en busca de alimento. Sigo mi camino y el ambiente comienza a sentirse pesado, a lo lejos escucho un ruido, es un chillido de un monstruo. Lo conozco a la perfección, es un Legiana o, mejor dicho, un grupo enorme de ellos. Están migrando, pero no sé a dónde van. Parece que se dirigen a un nuevo mundo. Tengo que regresar a Astera y decírselo al gremio de cazadores; algo está pasando, lo sé muy bien. Éste es el inicio de una nueva y épica aventura.', 2, 1, 50.00, '', 'monster hunter world.gif', NULL, NULL),
(17, 'portal 2', 'Hace unos años un grupo de estudiantes del Instituto de Tecnología de DigiPen creó un juego gratuito llamado Narbacular Drop, al poco tiempo de que el equipo lo mostró sus integrantes fueron contratados y lo expandieron hasta desarrollar Portal, uno de los puzzles más impresionantes de los últimos años.\r\n\r\nAhora, el spoiler obligatorio de Portal: al final Chell queda inconsciente en la calle y el Party Escort Bot la arrastra de regreso a los laboratorios.\r\n\r\nEn las primeras imágenes de Portal 2 nos enteramos de que han pasado siglos y Chell es despertada por Wheatley, un centro de personalidad que decide buscar sobrevivientes cuando el área donde descansan comienza a decaer después de haber permanecido sin ser tocados. Y el dato cultural, para los que no lo sepan: el abandono de los laboratorios Aperture es por culpa del Combine, las razas que invaden la Tierra en Half-Life 2. Portal 1 comienza cuando la guerra de las siete horas está por empezar, Aperture Science cierra sus puertas para evitar que los soldados del Combine entren en el edificio.', 2, 1, 60.00, '', 'portal 2.gif', NULL, NULL),
(18, 'terraria', 'Es algo muy positivo que cada vez más títulos se integren al catálogo de Nintendo Switch. No se trata nada más de llenar la tablita de merengues, sino de que la gente realmente sienta interés por consumirlos aunque sean merengues que ya hayan visto en otras tablitas. Eso hace que algunos juegos expandan sus posibilidades y los disfruten más personas. Terraria es uno de esos casos, ya que a pesar de ser una propuesta lanzada en 2011 por primera vez en Windows, ha sabido abrirse paso tanto a consolas como a móviles. Este año se le dio la bienvenida a la familia de la Gran N.', 2, 1, 20.00, '', 'terraria.gif', NULL, NULL),
(19, 'biomutant', 'Los RPG de mundo abierto son un género que se ha popularizado en los últimos años y por una buena razón: cumplen con la promesa de volvernos héroes (o antihéroes) que viven en un mundo que sólo ellos pueden salvar. Desafortunadamente, es realmente complejo por todos los sistemas que deben estar bien aplicados para funcionar.\r\n\r\nAl ser un género tan ambicioso, suele llamar la atención cuando un desarrollador decide incursionar en él. En especial, cuando deciden que un juego de mundo abierto sea su primer proyecto. Justo eso pasó con Experiment 101, un nuevo estudio que hace años llamó la atención del mundo al revelar Biomutant, un RPG lleno de peludas criaturas y grandes ambiciones.\r\n\r\n¿Este nuevo equipo logró crear una aventura memorable o es un tropiezo monumental que debió apuntar hacia otra dirección? La respuesta es compleja, pero de una vez te digo que mejor vayas bajando tus niveles de hype.', 2, 1, 60.00, '', 'biomutant.gif', NULL, NULL),
(20, 'portal', 'Hace unos años un grupo de estudiantes del Instituto de Tecnología de DigiPen creó un juego gratuito llamado Narbacular Drop, al poco tiempo de que el equipo lo mostró sus integrantes fueron contratados y lo expandieron hasta desarrollar Portal, uno de los puzzles más impresionantes de los últimos años.\r\n\r\nAhora, el spoiler obligatorio de Portal: al final Chell queda inconsciente en la calle y el Party Escort Bot la arrastra de regreso a los laboratorios.\r\n\r\nEn las primeras imágenes de Portal 2 nos enteramos de que han pasado siglos y Chell es despertada por Wheatley, un centro de personalidad que decide buscar sobrevivientes cuando el área donde descansan comienza a decaer después de haber permanecido sin ser tocados. Y el dato cultural, para los que no lo sepan: el abandono de los laboratorios Aperture es por culpa del Combine, las razas que invaden la Tierra en Half-Life 2. Portal 1 comienza cuando la guerra de las siete horas está por empezar, Aperture Science cierra sus puertas para evitar que los soldados del Combine entren en el edificio.', 2, 1, 90.00, '', 'portal.gif', NULL, NULL),
(21, 'among us', 'juego de escondidas', 2, 1, 10.00, '', 'among us.gif', NULL, NULL),
(22, 'smite', 'SMITE es un MOBA, es decir, una entrega totalmente ajena al ambiente en línea de consolas tradicionales. Hasta este momento, no existe una experiencia clásica del género con suficiente solidez en ninguna consola, pero eso podría cambiar con SMITE, un exponente que lleva varios años en desarrollo en PC. Lo especial del juego es que cuenta con una perspectiva en tercera persona muy familiar a lo que conocemos y experimentamos día a día en nuestro Xbox One.\r\n\r\nComo otras entregas de los MOBA, SMITE cuenta con una gran cantidad de personajes basados en dioses de culturas de todo el mundo, pero aquí no sólo incluyen los panteones clásicos, también hay personajes mayas, nórdicos y egipcios. El diseño de los protagonistas es variado y en muchos casos resulta en una combinación poco común; es el caso de Vamana de la mitología hindú, quien de acuerdo con los mitos, es el quinto avatar del dios Supremo Vishnu, y según su descripción, es enano. Su representación en el juego es singular y desentona con el resto de las deidades, en especial con las más humanas de los romanos. Aunque el resultado de este tipo de diseño en algunos casos es confuso, deberíamos celebrar esta diversidad y libertad creativa.', 2, 1, 5.00, '', 'smite.gif', NULL, NULL),
(23, 'it takes two', 'Todo lo que necesitas es amor. ¡Qué pedazo de mentira tan grande! De ser así de simple, el mundo sería completamente diferente. Los conflictos internacionales se solucionarían con un apretón de manos; la violencia se erradicaría a base de abrazos y no habría relación amorosa que se fuera al caño.\r\n\r\nPoco importa si John Lennon nos mintió deliberadamente con el hit que escribió para The Beatles o si en verdad tenía una visión tan simple de las cosas. Lo que es un hecho es que es algo que a muchos nos beneficiaría olvidar. El amor es un recurso valioso, de eso no hay duda, pero de poco sirve si no está acompañado de esfuerzo y la disposición de entender la situación en la que estamos.\r\n\r\nPara encaminarte hacia la madurez emocional, Josef Faress y Hazelight traen It Takes Two. Una experiencia cooperativa que te va a enseñar la importancia que el trabajo duro y la comunicación tienen en el éxito de cualquier relación. Esto con una historia y mecánicas que exploran el concepto.', 2, 1, 60.00, '', 'it takes two.gif', NULL, NULL),
(24, 'stardew valley', 'Si bien la historia de ConcernedApe es interesante, el enfoque del texto no es ese, sino su obra ―igual si la quieres conocer puedes hacerlo en Blood, Sweat & Pixels―, pero entonces, ¿por qué la mencionó? Porque resulta que Stardew Valley es el ejemplo de lo bien que se pueden hacer las cosas cuando estás dispuesto a escuchar retroalimentación de la comunidad.\r\n\r\nVerás, ConcernedApe inició Stardew Valley inspirado en franquicias como Harvest Moon, Animal Crossing y Terraria. Originalmente él sólo quería hacer un juego que le ayudará a pulir sus habilidades de programación para así conseguir un trabajo. Eso no sucedió y Stardew Valley se transformó en la obsesión del joven desarrollador, quien estaba dispuesto a hacer un juego que fuera más que un sucesor espiritual; uno que fuera tan grande como los títulos que lo inspiraron. Para lograrlo, buscó comunidades en Internet que le dieran retroalimentación y con base en eso pulió la experiencia.', 2, 1, 60.00, '', 'stardew valley.gif', NULL, NULL),
(25, 'Hood', 'Hood: Outlaws and Legends es un videojuego de acción y aventuras PvPvE desarrollado por Sumo Newcastle que está principalmente focalizado al cooperativo en un mundo de fantasía, medieval, valiente y oscuro que recuerda a clásicos como Gauntlet. La misión de Hood: Outlaws and Legends lleva al jugador a reunir a un equipo de forajidos para intentar robar tesoros de un gobierno opresor en entornos patrullados por letales guardias de la IA y en intensos asaltos multijugador.\r\n\r\nMás en concreto, Hood: Outlaws and Legends enfrenta a dos equipos de cuatro jugadores entre sí, ambos con el mismo objetivo de robar un tesoro en entornos ampliamente custodiados en fortalezas del Estado ganando así influencia entre los oprimidos. La forma de cumplir con el desafío puede variar y mucho en función de qué clase se escoja, pero sus responsables ya aseguran que el trabajo en equipo será un bien obligado. \"No deja de ser un robo, y ningún robo estaría completo sin una banda con la que repasar el plan antes de irrumpir en la cámara y escapar con el tesoro\".', 1, 1, 66.00, '', 'hood.gif', NULL, '2021-06-07 18:02:43'),
(26, 'subnautica', 'juego de mundo abierto de tención ', 1, 1, 25.00, '', 'subnautica.gif', NULL, NULL),
(27, 'subnautica below zero', 'segunda parte de subnautica', 1, 1, 90.00, '', 'subnautica below zero.gif', NULL, NULL),
(28, 'hades', 'Hades, el más reciente título de Supergiant Games, ha sido un rotundo éxito. El juego ha recibido diversos premios a Juego del Año y recientemente tuvo un lanzamiento físico en Switch. A pesar de su buena recepción, el juego solo está disponible en la consola híbrida y en PC.\r\n\r\nDesde hace tiempo hay pistas que sugieren su llegada a otras plataformas, pero nada se ha concretado. Inicialmente se habló sobre su lanzamiento en consolas de Microsoft y su posible llegada a Xbox Game Pass.\r\n\r\nUna nueva pista indica que efectivamente llegará a otra consola, pero a una de Sony. Un registro apunta a que el roguelike llegará tarde o temprano a PlayStation 4.', 1, 1, 30.00, '', 'hades.gif', NULL, NULL),
(29, 'chivalry', 'Uno de los juegos que destacó durante el PC Gaming Show de E3 2019 fue Chivalry 2, que llegaría a PC. Luego se reveló que también llegaría a consolas PlayStation y Xbox, pero desafortunadamente hubo malas noticias más tarde, pues se informó que la pandemia había ocasionado que el juego sería retrasado hasta 2021. Si estabas esperándolo todo este tiempo, hay una excelente noticia, ya que hoy se reveló su fecha de lanzamiento y hasta un periodo de prueba.', 1, 1, 50.00, '', 'chivalry.gif', NULL, NULL),
(30, 'biomutant', 'Los RPG de mundo abierto son un género que se ha popularizado en los últimos años y por una buena razón: cumplen con la promesa de volvernos héroes (o antihéroes) que viven en un mundo que sólo ellos pueden salvar. Desafortunadamente, es realmente complejo por todos los sistemas que deben estar bien aplicados para funcionar.\r\n\r\nAl ser un género tan ambicioso, suele llamar la atención cuando un desarrollador decide incursionar en él. En especial, cuando deciden que un juego de mundo abierto sea su primer proyecto. Justo eso pasó con Experiment 101, un nuevo estudio que hace años llamó la atención del mundo al revelar Biomutant, un RPG lleno de peludas criaturas y grandes ambiciones.\r\n\r\n¿Este nuevo equipo logró crear una aventura memorable o es un tropiezo monumental que debió apuntar hacia otra dirección? La respuesta es compleja, pero de una vez te digo que mejor vayas bajando tus niveles de hype.', 1, 1, 30.00, '', 'biomutant.gif', NULL, NULL),
(31, 'rocket league', 'El pequeño desarrollador norteamericano fundado en 2000, Psyonix, logró lo que muchos anhelan: crear un sistema de juego divertido y sencillo de aprender, a partir de uno de los deportes más populares en la Tierra, el futbol. En este momento el título está entre los más vendidos, ya que lo juegan sin parar todo tipo de jugadores. Sin duda, una gran hazaña en tiempos actuales.\r\n\r\nRocket League está basado en el ancestral deporte, pero los equipos están conformados por autos que deben maniobrar y golpear un balón a fin de que ingrese en el arco del oponente. El concepto es sumamente sencillo y cualquier jugador instintivamente sabe qué debe hacer. Los autos cuentan con movimientos básicos, como acelerar y saltar; los enfrentamientos duran 5 minutos y ocurren en arenas selladas, por lo que no es posible golpear el balón fuera del área. Los bordes de la cancha continúan de manera vertical y es posible escalar las paredes para patear un balón que llegue muy alto.', 1, 1, 30.00, '', 'rocket league.gif', NULL, NULL),
(32, 'civilization', 'Civilization VI es la última entrega de la influyente y fundamental serie de juegos de estrategia por turnos creada por Sid Meier en 1991. Con el tiempo, la serie ha pasado de ser una celebración de los logros de la humanidad a convertirse en una gran obra, digna de alabanza y permanencia. Y no sin razón: la filosofía de Sid Meier, que consiste en \"tomar un juego y quitarle todo lo que no sea divertido\", ha rendido frutos una vez más y nos ha dado un juego profundo, complejo, adictivo, intelectualmente estimulante, una muestra soberbia de los valores de diseño que la industria necesita no sólo para sobrevivir, sino para dejar un legado a nuestros sucesores.\r\n\r\nEn esta entrega se ha construido directamente sobre el marco dejado por Civilization V, un título que, desde una versión inicial un tanto incompleta, fue encumbrándose mediante excelentes expansiones para convertirse en el rey de su género y en uno de los títulos más jugados en la PC, sin importar el momento: un juego que resiste el paso del tiempo. No es fácil sobrepasar dicho éxito y estar a la altura de un legado impresionante pero, afortunadamente, esta nueva entrega fue creada directamente para solucionar los problemas de su predecesor, enriquecer la experiencia de juego y ofrecer un mayor grado de personalización, libertad y reto tanto contra la máquina como en partidas en línea.', 1, 1, 50.00, '', 'civilization.gif', NULL, NULL),
(33, 'little inferno', 'juego de movimiento lateral', 1, 1, 15.00, '', 'little inferno.gif', NULL, NULL),
(34, 'watchdogs', 'Watch_Dogs es la más reciente propuesta de mundo abierto, infiltración y hackeo de Ubisoft. Aunque definitivamente no es la revolución del género ni el prodigio gráfico que prometió, el juego se defiende del hecho de estar inevitablemente a la sombra de otros títulos semejantes mediante propuestas de interactividad que le dan posibilidades lúdicas muy atractivas. En general, es una mezcla constante de sinsabores y de aciertos, pues casi todos sus buenos apartados tienen el contrapeso de alguna dinámica que pudo mejorar; sin embargo, tiene el mérito de intentar articular una propuesta que podría dar lugar a algo muy interesante si se retomara con más profundidad y atención al detalle.\r\n\r\nEl protagonista es Aiden Pearce, vigilante y hacker que está en busca de los responsables de la muerte de su sobrina Lena. Reservado, silencioso y obsesivo, Pearce tiene acceso al sistema operativo que controla una versión ligeramente futurista de Chicago, el llamado ctOS, lo que le da el poder de manipular toda clase de elementos urbanos a su antojo gracias a su smartphone de hacker. La historia nos llevará por un gran número de misiones de campaña y secundarias para descubrir la verdad sobre la muerte de Lena y dar algo de paz al alma atormentada de Aiden.', 1, 1, 15.00, '', 'watchdogs.gif', NULL, NULL),
(35, 'watchdogs 2', 'A pesar de la decepción que Watch_Dogs fue para muchos fans, Ubisoft decidió dar una nueva oportunidad a su mundo abierto de hackers con una secuela que mejora en varios frentes, pero aún queda muy lejos de la excelencia. Lo que es peor aún es que comete algunos de los mismos errores que han distinguido a la compañía en años recientes.\r\n\r\nUna de las diferencias más evidentes entre Watch_Dogs y Watch_Dogs 2 es que este último se toma las cosas con menos seriedad, en un afán por imprimir actitud y diversión a la desangelada fórmula original. Así, la segunda parte tiene por contexto la soleada ciudad de San Francisco —en reemplazo de la monocromática Chicago— y adopta por protagonista a un pirata informático afroamericano, de nombre Marcus, reclutado por el grupo de caudillos tecnológicos DedSec (referido en el primer juego) que, con sus habilidades informáticas, pretende cambiar al mundo y derrocar a los promotores del corporativismo malévolo. Dicho enfoque se presta para aciertos y desaciertos en los cuales ahondaremos más adelante, pero antes, hablemos de la presentación.\r\n\r\nHay que dar algo de crédito a Ubisoft Montreal por un concepto visual más elaborado. Abundan la fluorescencia, el grafiti, las animaciones en 8 bits y los memes ficticios, tanto en los menús, como en los cuarteles generales de DedSec —incluso la pantalla de arranque es un guiño a la forma más pura de la computación—. En pocas palabras, Watch_Dogs 2 tiene un aspecto más atractivo que su antecesor, pero lo que funciona para las interfaces y los espacios no es igual de positivo para los personajes. Ubisoft no supo cuándo parar y sus protagonistas lucen más como hackers de caricatura que como personas reales. Como si, para proyectar rebeldía, los artistas hubieran explotado cada estereotipo en el libro, saturando de piercings, estoperoles y hasta leds a los personajes, con lo cual las cosas adquieren un matiz plástico y forzado. Wrench, por ejemplo, es un tipo cuya máscara despliega emotes en su visor de leds y lleva más metal en su chamarra que una pesadilla de Mad Max. El propio Marcus suele dar piruetas al saltar de las cornisas sin razón aparente, lo cual puede activar tu incredulidad y hacerte cuestionar si estás frente a un grupo de hackers o los fans más acrobáticos de Daft Punk. La idea, claramente, era alejarse lo más posible del aire de melancolía de Aiden pero se excedieron, y si vienes a Watch_Dogs 2 buscando a Mr. Robot, te advertimos que más bien te toparás con la perspectiva Nickelodeon de los hackers.', 1, 1, 25.00, '', 'watchdogs 2.gif', NULL, NULL),
(36, 'watchdogs legion', 'Watch Dogs: Legion eleva la fórmula con la posibilidad de controlar a cualquier personaje, una propuesta única, compleja y cargada de posibilidades que, por desgracia, no casa bien con la narrativa. Pese a esto, se trata de un fantástico juego de acción, sigilo y hackeo en mundo abierto.', 1, 1, 60.00, '', 'watchdogs legion.gif', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(3, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(4, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(5, '2016_06_01_000004_create_oauth_clients_table', 1),
(6, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(7, '2021_03_09_124743_create_juegos_table', 1),
(8, '2021_03_09_124755_create_plataformas_table', 1),
(9, '2021_03_09_124926_add_fk_plataformas_to_juegos', 1),
(10, '2021_03_09_125009_create_desarrolladoras_table', 1),
(11, '2021_03_09_125039_add_fk_desarrolladoras_to_juegos', 1),
(12, '2021_03_11_082932_create_clientes_table', 1),
(13, '2021_03_11_083733_add_fk_users_to_clientes', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('017e66f4c24b331ea42ffdddfe56aa751d22e3e35a27e9295fe748eb7dbd08ccfb3a0b3d76b37875', 1, 1, 'Personal Access Token', '[]', 0, '2021-05-18 08:35:23', '2021-05-18 08:35:23', '2021-05-25 10:35:23'),
('03357c0d67ebe1313d6fd15ebe623921731f2bd28e0c3b7de76535ca1cef06620a3ebef0a9d5971c', 1, 1, 'Personal Access Token', '[]', 0, '2021-06-02 19:48:30', '2021-06-02 19:48:30', '2021-06-09 21:48:30'),
('0373000edd70d566aa59d656a48d211956730c79a4eb4dcade49dbbd5266772b96a2ab6b626a2272', 1, 1, 'Personal Access Token', '[]', 0, '2021-05-12 11:25:38', '2021-05-12 11:25:38', '2021-05-19 13:25:38'),
('0395cd0fc93c6e4c223bd75967ff8cfe814b0416657cddea365ae3f6de217aca3541d73191a4e53d', 1, 1, 'Personal Access Token', '[]', 0, '2021-05-11 09:38:28', '2021-05-11 09:38:28', '2021-05-18 11:38:28'),
('040023b101de79c45f4a7a5eb79af8af7f4a18bfbdf405b9d1f98cc12aae0d7e85ea382539391c42', 1, 1, 'Personal Access Token', '[]', 0, '2021-05-03 06:30:20', '2021-05-03 06:30:20', '2021-05-10 08:30:20'),
('063a3d26ca54a5ecf51282d3337bfcda586d0602ee8d07ef63157166a6c4bf8e7460fbef909b1498', 1, 1, 'Personal Access Token', '[]', 0, '2021-05-31 06:17:27', '2021-05-31 06:17:27', '2021-06-07 08:17:27'),
('06705b60ec46a2e2276b3b793626b0708bb734354fa77979ec18f5db65a0c2f69ce9337cb0602639', 1, 1, 'Personal Access Token', '[]', 0, '2021-04-27 08:58:00', '2021-04-27 08:58:00', '2021-05-04 10:58:00'),
('0723997eb17569fafd463bb2b46ec46731e28b519418b493db70a621e70a907f5b2550f3fadf2f96', 1, 1, 'Personal Access Token', '[]', 0, '2021-05-12 07:04:04', '2021-05-12 07:04:04', '2021-05-19 09:04:04'),
('0917a4906ef4226571a835e2e67bff186a7f2769b8a1829ce4717eee56ef00284726f642206f30f1', 1, 1, 'Personal Access Token', '[]', 0, '2021-05-17 05:30:28', '2021-05-17 05:30:28', '2021-05-24 07:30:28'),
('0bee52ccf4419c8a175084dea7c7e2222a35830e629581a3eb9630210b24813e1e17b3d129fda437', 1, 1, 'Personal Access Token', '[]', 0, '2021-06-03 20:38:16', '2021-06-03 20:38:16', '2021-06-10 22:38:16'),
('0c866ed1dce9490971b722c1a646bb5d314614336ffb8b90e2aed4987c1c3f1a76d5c6abe78b3738', 1, 1, 'Personal Access Token', '[]', 0, '2021-05-29 05:19:26', '2021-05-29 05:19:26', '2021-06-05 07:19:26'),
('0effd2281fed063b4035f42ffa5bf1005815c9ec1b311b28051cd81db35c0cfa70937c936171cbe8', 1, 1, 'Personal Access Token', '[]', 0, '2021-05-25 07:46:45', '2021-05-25 07:46:45', '2021-06-01 09:46:45'),
('0f0d88a1968e286a0f56ff5d5e0cd2fced2a4aeea47a0a023d1d0799ccd1513670ee1b1d8ece1cf0', 1, 1, 'Personal Access Token', '[]', 0, '2021-06-03 16:56:49', '2021-06-03 16:56:49', '2021-06-10 18:56:49'),
('10246c1ba11d574a404466e4e3ac86104e1d43edd7f59db5be324c7579f9c35d853b3cfe53016712', 1, 1, 'Personal Access Token', '[]', 0, '2021-05-24 17:27:29', '2021-05-24 17:27:29', '2021-05-31 19:27:29'),
('10308cf88042bcf554e54fc5808e9f0ae27da180e6410815702ad9cf0ae10f7f2c390cf6c0d8d889', 1, 1, 'Personal Access Token', '[]', 0, '2021-05-11 09:45:23', '2021-05-11 09:45:23', '2021-05-18 11:45:23'),
('10360959f4de23554859ac5d40ce1a73cea11f4d18f93d5a5ec54e11aed5e9f578f1d5b02d9a084b', 1, 1, 'Personal Access Token', '[]', 0, '2021-05-31 06:21:24', '2021-05-31 06:21:24', '2021-06-07 08:21:24'),
('10c9591167f1cb447a24195b6b1eaeb854870366f55f9700051cb51c75b9b9c85cb5d6644eb1ce56', 1, 1, 'Personal Access Token', '[]', 0, '2021-05-16 13:04:10', '2021-05-16 13:04:10', '2021-05-23 15:04:10'),
('10e3273d05374ccccfac4dcb2569ece8dc615740b04ee5cc6128a8af01400c235977645d8af87c26', 1, 1, 'Personal Access Token', '[]', 0, '2021-04-26 06:31:47', '2021-04-26 06:31:47', '2021-05-03 08:31:47'),
('11c55a6d657abf7d4ed7aa5142ed5f7869b6e7e030a081ded9c0aa1911920195a20af71df50f021c', 1, 1, 'Personal Access Token', '[]', 0, '2021-05-03 06:30:51', '2021-05-03 06:30:51', '2021-05-10 08:30:51'),
('11fc9c91d8ef1deb9a47fc23f7fb10d55406794f2b726c1d2e0ce47a8270e172f416d32f367bb7ed', 1, 1, 'Personal Access Token', '[]', 0, '2021-05-17 06:11:50', '2021-05-17 06:11:50', '2021-05-24 08:11:50'),
('126a0c6275b8cfd6770605b016ad1e4b215ed79f1621bcfdf47fabe596142c655c569c4735d089d5', 1, 1, 'Personal Access Token', '[]', 0, '2021-06-03 16:29:33', '2021-06-03 16:29:33', '2021-06-10 18:29:34'),
('1400c17b263b71d7e346956cab11b92867c0f72aa976b8b88b04e1b47df906a2c97ae3e2837a2892', 1, 1, 'Personal Access Token', '[]', 0, '2021-05-11 09:13:51', '2021-05-11 09:13:51', '2021-05-18 11:13:51'),
('14378d5dd73677a287093621ece580b7a65b70872b756f937f70f023f68dbb8568633382b569051f', 1, 1, 'Personal Access Token', '[]', 0, '2021-05-11 17:43:38', '2021-05-11 17:43:38', '2021-05-18 19:43:38'),
('14a71c230326fe67dc4b5e65782150b72102235d11a00322b805e47ff5c0418ab91a190a39593091', 1, 1, 'Personal Access Token', '[]', 0, '2021-05-18 08:35:23', '2021-05-18 08:35:23', '2021-05-25 10:35:23'),
('152c68c511e0f8178d0cb4491f1e1a98a5239e64b4000053a5d1893c502922df9f414e5298f7ca6e', 1, 1, 'Personal Access Token', '[]', 0, '2021-05-31 05:11:52', '2021-05-31 05:11:52', '2021-06-07 07:11:52'),
('15cd47c0c567c6882a648ff4a96a064341d66b59f2f2a07d7e2df202e4a11902c574b99b52769949', 1, 1, 'Personal Access Token', '[]', 0, '2021-05-25 07:49:10', '2021-05-25 07:49:10', '2021-06-01 09:49:10'),
('15e5138d21afe7c816459087b55714afac6f196a48f866a7817354f9c3e8683bd56842d3d853aa93', 1, 1, 'Personal Access Token', '[]', 0, '2021-05-17 05:19:44', '2021-05-17 05:19:44', '2021-05-24 07:19:44'),
('1607b07445ccd404d1323983f2663fc04f3d5e0adb43be88fc8a211cce0dd82806a232e96ba9cbda', 1, 1, 'Personal Access Token', '[]', 0, '2021-05-31 06:42:58', '2021-05-31 06:42:58', '2021-06-07 08:42:58'),
('16873d289c0bbd8e7374cc7395d640e88ef00bdbff1282203a59bf7266948ddaa890684204872d54', 1, 1, 'Personal Access Token', '[]', 0, '2021-05-10 21:10:08', '2021-05-10 21:10:08', '2021-05-17 23:10:08'),
('16fffdca6434db194dc8f78cef1fafd98884f3439d1173e7dad20460a7b5fe9f5bad862c327d6261', 1, 1, 'Personal Access Token', '[]', 0, '2021-04-27 08:33:09', '2021-04-27 08:33:09', '2021-05-04 10:33:09'),
('17015259d81c1700f5603f9279d3a1f67fc51a345ccef9ec9aeee488b2f2801d16e960126888330b', 1, 1, 'Personal Access Token', '[]', 0, '2021-05-29 08:34:43', '2021-05-29 08:34:43', '2021-06-05 10:34:43'),
('186999705361a9e763f0c8e4f60cc1d2b15c5f15d45ff01c54908c2346d7ca397eba021eccf18a1a', 1, 1, 'Personal Access Token', '[]', 0, '2021-05-11 09:45:52', '2021-05-11 09:45:52', '2021-05-18 11:45:52'),
('18a76b6421f06e8605a0b74a26943f29ac0a833e28e4df12b9902005a43c647fd70382f66c38edd2', 1, 1, 'Personal Access Token', '[]', 0, '2021-05-31 05:24:22', '2021-05-31 05:24:22', '2021-06-07 07:24:22'),
('19942e026c52e1c54c2663823fa927a35c6c84f19d8d1257994f92a50a1bfa109bc5c4ade1b9ec9e', 1, 1, 'Personal Access Token', '[]', 0, '2021-05-13 11:51:18', '2021-05-13 11:51:18', '2021-05-20 13:51:18'),
('1a20760e2408a8db1d3517ed832632f551987d77748246f25457e5ac696389ba6c785149bf27731a', 1, 1, 'Personal Access Token', '[]', 0, '2021-05-17 05:21:17', '2021-05-17 05:21:17', '2021-05-24 07:21:17'),
('1a48ad72bc1cb5de49f484a9b7a84fced9e853d6e47373e540e3bbc537e6401e96847b8f4bd5b581', 1, 1, 'Personal Access Token', '[]', 0, '2021-06-07 05:37:44', '2021-06-07 05:37:44', '2021-06-14 07:37:44'),
('1aa9883b0f8ccb5d83e18216d5d2ff4d0e3a1c3b1e4d361e6e944a95591215c3f14e6d0b2df1b1fa', 1, 1, 'Personal Access Token', '[]', 0, '2021-04-27 10:10:43', '2021-04-27 10:10:43', '2021-05-04 12:10:43'),
('1be6cf2bd9c20600fcaa7d0e14da373c6dd348c988b3cf2f056285eb11be4da7743d7c8546efdb3a', 1, 1, 'Personal Access Token', '[]', 0, '2021-04-23 20:15:50', '2021-04-23 20:15:50', '2021-04-30 22:15:50'),
('1d1012374d8e62f152ef85ea029028400715aae557dc1ed7ee3d7a1fed291a9a56db512f13094d00', 1, 1, 'Personal Access Token', '[]', 0, '2021-05-11 09:25:04', '2021-05-11 09:25:04', '2021-05-18 11:25:04'),
('1e1832027895138c333239d6b5bb69347689d1b3ee21ede5a980f245e1608ffe2ae520ddc25b0dd8', 1, 1, 'Personal Access Token', '[]', 0, '2021-04-27 10:10:43', '2021-04-27 10:10:43', '2021-05-04 12:10:43'),
('1fb35146cd28d29376710a1ef01ee12c10310b44e7191c861074deabb6759ac0949f4ba7fb710080', 1, 1, 'Personal Access Token', '[]', 0, '2021-06-03 16:10:01', '2021-06-03 16:10:01', '2021-06-10 18:10:01'),
('24e7d21a539af0ad54f918d90a472cffc02d7e2ad2fc0bd3a62fb9881df354aa9740651dd1a2a2b4', 1, 1, 'Personal Access Token', '[]', 0, '2021-05-29 08:46:34', '2021-05-29 08:46:34', '2021-06-05 10:46:34'),
('277324d750897fbbc1378bb1dc4ece0f5531919f37a110676f2f0843604e307b4e6992e197f6ec3a', 1, 1, 'Personal Access Token', '[]', 0, '2021-05-13 12:00:53', '2021-05-13 12:00:53', '2021-05-20 14:00:53'),
('299665314005444c847f2bfc932b7d0a8e5b249e4ea7974a908fc893b0887a09d8a611976c754da3', 1, 1, 'Personal Access Token', '[]', 0, '2021-04-27 08:59:01', '2021-04-27 08:59:01', '2021-05-04 10:59:01'),
('2afa73787e439a891a4abc8c8b20eaac6c83365e83270f673e7e25a8f558ccf01dc1731f752365c6', 1, 1, 'Personal Access Token', '[]', 0, '2021-05-29 08:15:19', '2021-05-29 08:15:19', '2021-06-05 10:15:19'),
('2bb0dfbcb7e3751f7dd3902ec897ab7a289487b63f073c482f720603c8787e8c27a45d246fd9f933', 1, 1, 'Personal Access Token', '[]', 0, '2021-05-15 07:18:12', '2021-05-15 07:18:12', '2021-05-22 09:18:12'),
('2c165af42b7938febcdc0d7c8f748327a069f272e234c1fb870de68dd326294cfef3edaf95d66fa4', 1, 1, 'Personal Access Token', '[]', 0, '2021-06-07 06:04:07', '2021-06-07 06:04:07', '2021-06-14 08:04:07'),
('2c493bda6f2cddd8874daf07e918762a6fafa4530d3b8d8351cbe029bb559702b9186f7608fa1c3a', 1, 1, 'Personal Access Token', '[]', 0, '2021-04-26 05:55:31', '2021-04-26 05:55:31', '2021-05-03 07:55:31'),
('2d1c091fdf65e1d52dec15389adf583b12fb7db0a13a596e1b4381430875adbe80f09efc786c7e0e', 1, 1, 'Personal Access Token', '[]', 0, '2021-06-07 05:16:07', '2021-06-07 05:16:07', '2021-06-14 07:16:07'),
('2d59eb19a0b87d235c6be1d0969a27eeda74ac9edb9562d7b7dca0c50ff27b2bb82d5328c1c7ba77', 1, 1, 'Personal Access Token', '[]', 0, '2021-04-15 20:48:02', '2021-04-15 20:48:02', '2021-04-22 22:48:02'),
('2f88e4f3daaa7f69398f4a35a1eabacb65eb17d4be51a556a3fabf9a5d9bc3f2f6eb8e640cf05965', 1, 1, 'Personal Access Token', '[]', 0, '2021-05-17 05:24:17', '2021-05-17 05:24:17', '2021-05-24 07:24:17'),
('2fdae60432f6b406acebc05e881d29249fae85da9aec69a853485a0ba6a578362c0c187628cdb2c4', 1, 1, 'Personal Access Token', '[]', 0, '2021-04-27 09:14:35', '2021-04-27 09:14:35', '2021-05-04 11:14:35'),
('306a04d9cf81febac9223981539bf3634d9a3ff68114a3ec17d818a427a27b2ebc8f7bd4b15b3147', 1, 1, 'Personal Access Token', '[]', 0, '2021-06-03 16:30:31', '2021-06-03 16:30:31', '2021-06-10 18:30:31'),
('312e8b292480d63e218dd53372772cd3fb69da202ab2ba2b9588b5541df68fa9ed6ac4a89c1be24a', 1, 1, 'Personal Access Token', '[]', 0, '2021-05-24 15:18:30', '2021-05-24 15:18:30', '2021-05-31 17:18:30'),
('32b1de1e9fb771946c8e9693c38c274aab452ba8df1d810ae1dfcebe6e661e9051fc6555ed4576d2', 1, 1, 'Personal Access Token', '[]', 0, '2021-05-29 08:33:51', '2021-05-29 08:33:51', '2021-06-05 10:33:51'),
('36ff420bb2a9e4fe5e0660cb0287e5c21305dbb3d8a831430a53092cb9a38e4414be5336946d6c21', 1, 1, 'Personal Access Token', '[]', 0, '2021-05-17 05:45:01', '2021-05-17 05:45:01', '2021-05-24 07:45:01'),
('377951e5014d16d140bdf4f13fad4a6bb75bc4d9b7ac07f55ea38c68d607871100496e173958919d', 1, 1, 'Personal Access Token', '[]', 0, '2021-05-15 07:09:11', '2021-05-15 07:09:11', '2021-05-22 09:09:11'),
('3787b728346ef6bd550f9f52354d6f009f703eda769cd8e5e809430088545cb4bddfd665574800a9', 1, 1, 'Personal Access Token', '[]', 0, '2021-05-16 17:43:50', '2021-05-16 17:43:50', '2021-05-23 19:43:50'),
('38a4da87c4e581939abb8f5bd9ff2b94188a9f0d5e347fe9d97edefb5af53f0a5b0532f7017a68ad', 1, 1, 'Personal Access Token', '[]', 0, '2021-06-03 10:37:52', '2021-06-03 10:37:52', '2021-06-10 12:37:52'),
('38c8809f10f86e9f25285326f12f6ff34e888b3e8c5cb4182b61c9627ea7cc463f104c0000ad233f', 1, 1, 'Personal Access Token', '[]', 0, '2021-05-31 06:15:55', '2021-05-31 06:15:55', '2021-06-07 08:15:55'),
('38edfaf82e31440cf1a6145b85c3759024b16a145115f78640b13a19310fdc4084d488e697eb2fc3', 1, 1, 'Personal Access Token', '[]', 0, '2021-05-03 06:31:51', '2021-05-03 06:31:51', '2021-05-10 08:31:51'),
('3b21d4adfa7fa79bd02ebc7ba4c4f3a7b4497c903186858a00575bf6cfc0909e112c2e8ce42d7252', 1, 1, 'Personal Access Token', '[]', 0, '2021-05-17 06:21:10', '2021-05-17 06:21:10', '2021-05-24 08:21:10'),
('3bb41c11a4fa5f0f2bd2c642010c7b1d8c85e96815707b9d75c88d443bf4371e6d715e32a27cf6e5', 1, 1, 'Personal Access Token', '[]', 0, '2021-05-25 09:02:58', '2021-05-25 09:02:58', '2021-06-01 11:02:58'),
('3ebe1a4dad8feee485bbd12011458ab0a77573fc2daf3d34437957c21f2a5072aa3e6089f13a820e', 1, 1, 'Personal Access Token', '[]', 0, '2021-05-17 05:47:45', '2021-05-17 05:47:45', '2021-05-24 07:47:45'),
('40f90054391cc18cbb011fd429872ea7f792966cef9eb26ac5b900b5de844e9eb8c951203b4b2488', 1, 1, 'Personal Access Token', '[]', 0, '2021-05-11 09:28:12', '2021-05-11 09:28:12', '2021-05-18 11:28:12'),
('41109ddc5fe78d6ffc44be752ed73506e5294af23ed9cf61d6b3a76b012b547d1ec2f9b1495a6fa0', 1, 1, 'Personal Access Token', '[]', 0, '2021-05-16 13:05:28', '2021-05-16 13:05:28', '2021-05-23 15:05:28'),
('41679d604ca682e4dad3aef414b24209659fe040a0931c9cd842fd5f1dd6f53fad5cc75989f64203', 1, 1, 'Personal Access Token', '[]', 0, '2021-05-13 14:52:57', '2021-05-13 14:52:57', '2021-05-20 16:52:57'),
('41cf56f7404b9edfad21a8b2778a73e0d790947fcd6091a522e93ee5c3fbcf66c6342c22b0a0fd63', 1, 1, 'Personal Access Token', '[]', 0, '2021-05-31 06:51:37', '2021-05-31 06:51:37', '2021-06-07 08:51:37'),
('4268741d9494a662aa97e7dc019ab1788d7d9ba685674006401f6f436bcc78b11942320774ba8b4a', 1, 1, 'Personal Access Token', '[]', 0, '2021-05-31 05:17:05', '2021-05-31 05:17:05', '2021-06-07 07:17:05'),
('435faa9ce772d9e9c6cd3178d1279111471cf1ee31b6673cabcac8907c55b858d5abdfffbe594485', 1, 1, 'Personal Access Token', '[]', 1, '2021-04-06 16:31:39', '2021-04-06 16:31:39', '2021-04-13 18:31:39'),
('4385dd6f071b0468d312809dcb03c7dca08f6d5b8ddd968e8dfbe20736f015450c34e82b07b2d784', 1, 1, 'Personal Access Token', '[]', 0, '2021-05-11 08:59:13', '2021-05-11 08:59:13', '2021-05-18 10:59:13'),
('44469fa18c8603b1bcf7a28a167332b37bb7ea0610e5d0349ff2d8eff70885881ddd531d1c6ab038', 1, 1, 'Personal Access Token', '[]', 0, '2021-05-10 21:10:52', '2021-05-10 21:10:52', '2021-05-17 23:10:52'),
('445d7e8de4d4936ae316de0fe7ed6ccc57af73c04950209a260be2f023f478784fc98e8488f72861', 1, 1, 'Personal Access Token', '[]', 0, '2021-05-31 06:11:25', '2021-05-31 06:11:25', '2021-06-07 08:11:25'),
('45526a399ba8f149cf6e1fefabede777830268b8f5c244502ea9469189713fce9bbbbd5ae559888e', 1, 1, 'Personal Access Token', '[]', 0, '2021-05-29 08:16:04', '2021-05-29 08:16:04', '2021-06-05 10:16:04'),
('464489282865e8c8b7985f33c4332c375efd8dcade4a327af8745160ac991eb0c2d5b5b6029509a6', 1, 1, 'Personal Access Token', '[]', 0, '2021-05-31 05:35:50', '2021-05-31 05:35:50', '2021-06-07 07:35:50'),
('468be269ed508fe9b11c185d679eb50dd0d3409ece43da9445473647c9d1b1e6c424509295e29609', 1, 1, 'Personal Access Token', '[]', 0, '2021-05-29 08:13:25', '2021-05-29 08:13:25', '2021-06-05 10:13:25'),
('471f494821a73f3fe5ca6afa0b5a2328613da408d1159e3a0fba3647374bdd7166f9f354c0d3c183', 1, 1, 'Personal Access Token', '[]', 0, '2021-06-03 16:48:54', '2021-06-03 16:48:54', '2021-06-10 18:48:54'),
('48de7ba8d12cfe237c1e3fd2b3cd852b3a5ae386ef181ad6340f9e6699c45bfd2183f31dc97e0dac', 1, 1, 'Personal Access Token', '[]', 0, '2021-05-12 07:07:31', '2021-05-12 07:07:31', '2021-05-19 09:07:31'),
('4abe1a74489931e4cc38ef32463ac69fc1132e57ddc664b8ba67715346ebda50ac30aead9897b300', 5, 1, 'Personal Access Token', '[]', 0, '2021-06-07 18:13:45', '2021-06-07 18:13:45', '2021-06-14 20:13:45'),
('4bb4a651c76ce44be4cea6d93deda8806e02871e113224e021b385c47d0383bd738d4ee2cf51bb21', 1, 1, 'Personal Access Token', '[]', 0, '2021-05-31 06:09:58', '2021-05-31 06:09:58', '2021-06-07 08:09:58'),
('4d0433af9a250cf46fb0df78703fcba1177de3434e2414e22cc69eb1645362173f285bfe477187cc', 1, 1, 'Personal Access Token', '[]', 0, '2021-05-11 09:45:23', '2021-05-11 09:45:23', '2021-05-18 11:45:23'),
('4ee7b771f92d21541d4a68e4185d1474e0a7cde1d5da2b56571fb86aa69868a2cc454d57bdba635b', 1, 1, 'Personal Access Token', '[]', 0, '2021-05-31 05:49:10', '2021-05-31 05:49:10', '2021-06-07 07:49:10'),
('5067881466b60a8a1526ab074de553eb7cd59675b3504a1c2bcb33aa47bef18f54caf5abe6c9ddf1', 1, 1, 'Personal Access Token', '[]', 0, '2021-06-03 20:35:44', '2021-06-03 20:35:44', '2021-06-10 22:35:44'),
('5157ff7f4f0e99a1a759b7945dab41569012aa83379f1d4f8f79bd024cf3feca111c7f5930254e29', 1, 1, 'task api', '[]', 0, '2021-04-06 16:30:38', '2021-04-06 16:30:38', '2022-04-06 18:30:38'),
('5180188aaef3f858fd82276af622c31dec5c62306b1f0d294ae08b62baeb95eab7da6813c332aa18', 1, 1, 'Personal Access Token', '[]', 0, '2021-04-26 06:32:50', '2021-04-26 06:32:50', '2021-05-03 08:32:50'),
('51a5a961edc85bbae709c37afe735bb7376666c33ee839e175d9580393e4fc445872042318733d59', 1, 1, 'Personal Access Token', '[]', 0, '2021-04-27 08:56:10', '2021-04-27 08:56:10', '2021-05-04 10:56:10'),
('535303ee7b71b2225d5ac52af42e494213251d31bb47c0a91b65a9148aef5ff341aaae7ec5b63ef5', 1, 1, 'Personal Access Token', '[]', 0, '2021-06-03 20:28:18', '2021-06-03 20:28:18', '2021-06-10 22:28:18'),
('54aef6f9a2a76e97a72fa9747205653a740ab8125346f3479c55eaec020b35165a48baec50f86275', 5, 1, 'Personal Access Token', '[]', 0, '2021-04-15 20:03:22', '2021-04-15 20:03:22', '2021-04-22 22:03:22'),
('54de67513d6c347195b5c2930b5b74ff047e0ce383a9e8b45e6fa9f5a2ad1c9138749b0ed0084399', 5, 1, 'Personal Access Token', '[]', 1, '2021-04-26 06:53:38', '2021-04-26 06:53:38', '2021-05-03 08:53:38'),
('554cbaa269ca3f8eb759d8f140141808f236909aeda99969f945a8d6551b9d6695d6c64bb08421f0', 1, 1, 'Personal Access Token', '[]', 0, '2021-04-26 06:04:52', '2021-04-26 06:04:52', '2021-05-03 08:04:52'),
('560549f8e273bab70b0220061ecd15a9d9078b32c25b640fb81ba7571451eb0697408f7f6b2c33b1', 1, 1, 'Personal Access Token', '[]', 0, '2021-05-24 17:21:15', '2021-05-24 17:21:15', '2021-05-31 19:21:15'),
('569de14f53454cc3acf2e85ba5426d6e5849f465ed23a169dc63a75be49501af16357da1a0595a77', 1, 1, 'Personal Access Token', '[]', 0, '2021-04-26 06:34:29', '2021-04-26 06:34:29', '2021-05-03 08:34:29'),
('56d157927db783687734a871de56b276cf6fc0399453d4b52903b18bb4cdb58a997c66ea50ac2e4e', 1, 1, 'Personal Access Token', '[]', 0, '2021-04-27 08:49:23', '2021-04-27 08:49:23', '2021-05-04 10:49:23'),
('578736f828b597da92a1bd9cc1050e80ec7bb2a83ce4605128d19f647e238b83bf4d5016a8be44b9', 1, 1, 'Personal Access Token', '[]', 0, '2021-05-25 09:03:36', '2021-05-25 09:03:36', '2021-06-01 11:03:36'),
('57d026e0acb2c2393aa7d5b7d8645d295c7119a0852581a6a22ea6c37f13894331eb9fc7f98b300e', 1, 1, 'Personal Access Token', '[]', 0, '2021-05-25 07:47:27', '2021-05-25 07:47:27', '2021-06-01 09:47:27'),
('57e024f27cd0a6d0147e36e3e05017ab79de6bc950b95eb74ed210cb71b64e17caaf6eb005ded867', 1, 1, 'Personal Access Token', '[]', 0, '2021-04-28 14:33:09', '2021-04-28 14:33:09', '2021-05-05 16:33:09'),
('58aa5008b751ce7869af204b258becc494ad4fa8f5030c0344d09b929c895aad1c2defba6e9a0d1f', 1, 1, 'Personal Access Token', '[]', 0, '2021-05-04 09:18:29', '2021-05-04 09:18:29', '2021-05-11 11:18:29'),
('59b332b26659100ed148465fb2045dd3d33dc718f1a74361e7a1e77276cbfe2e48f2599028530153', 1, 1, 'Personal Access Token', '[]', 0, '2021-06-07 18:04:05', '2021-06-07 18:04:05', '2021-06-14 20:04:05'),
('5a1cefdc7db3d523766e0e02549163e74b7286b099aa8fabdfdccf847b301c38a75b59b1b127de13', 1, 1, 'Personal Access Token', '[]', 0, '2021-05-25 09:00:05', '2021-05-25 09:00:05', '2021-06-01 11:00:05'),
('5b7465fbb5fe246747c985b51c95b488b23d8518e816873a55057567bf481406d116c17bf9e12b9e', 1, 1, 'Personal Access Token', '[]', 0, '2021-05-17 05:43:58', '2021-05-17 05:43:58', '2021-05-24 07:43:58'),
('5c339433e21369f1a73d8e0b5bd39eda3b162def74ba82215bb61da2ebb8685790803b8de1f41ecc', 1, 1, 'Personal Access Token', '[]', 0, '2021-05-17 05:26:44', '2021-05-17 05:26:44', '2021-05-24 07:26:44'),
('5cd86817dd1608ed64888cb8811fa9692cba5377f2d16b40ce840fa305d214038248f40138917585', 1, 1, 'Personal Access Token', '[]', 0, '2021-05-31 05:33:42', '2021-05-31 05:33:42', '2021-06-07 07:33:42'),
('5f8fdb672f5b4c3384b4a708dd4fa33c6ac0407fd0467cb1f095b4449fc5458e1d370a0d4ce2379b', 1, 1, 'Personal Access Token', '[]', 0, '2021-04-27 09:06:28', '2021-04-27 09:06:28', '2021-05-04 11:06:28'),
('5fee30700126d5a0cf165894e7d1066956ff7e24b07e85c2ba0144724350c2aac35ea6cee40ad100', 1, 1, 'Personal Access Token', '[]', 0, '2021-05-11 12:04:00', '2021-05-11 12:04:00', '2021-05-18 14:04:00'),
('603a241bb7ba20c884da0eb1701033a2e5005e940f4ca0740d6f5249d190781068c1d5343107319a', 1, 1, 'Personal Access Token', '[]', 0, '2021-06-07 17:53:59', '2021-06-07 17:53:59', '2021-06-14 19:53:59'),
('6080d6b42808c1024b7b87724f6338539368bc5d6057699b1204d64e22a5fead8047fe873ce00574', 1, 1, 'Personal Access Token', '[]', 0, '2021-06-03 20:40:19', '2021-06-03 20:40:19', '2021-06-10 22:40:19'),
('609f523dc0742aacd47118192b665a7d75c02c22a4c40c58c8889077c4cdf3fcf0b86fbaf1116f2e', 1, 1, 'Personal Access Token', '[]', 0, '2021-04-27 09:02:45', '2021-04-27 09:02:45', '2021-05-04 11:02:45'),
('60ed50f8267991b4e7fb9e42791b559507bacb719baf01803c888ba8ec9aed4f670b1bcaf099d95e', 1, 1, 'Personal Access Token', '[]', 0, '2021-06-03 10:32:16', '2021-06-03 10:32:16', '2021-06-10 12:32:16'),
('61e13fa1c2d9a6f6c36e9c569d9ea7c62b7c4078ddee7c39fb80034d0f1202c37bb535a1dca6b843', 1, 1, 'Personal Access Token', '[]', 0, '2021-05-15 10:51:05', '2021-05-15 10:51:05', '2021-05-22 12:51:05'),
('63042101370f8b06d80c86c361b044cb436dad6bf9f3ef5a87528bfde5dbc21336ef3cfd8d4878f0', 1, 1, 'Personal Access Token', '[]', 0, '2021-04-13 09:53:41', '2021-04-13 09:53:41', '2021-04-20 11:53:41'),
('63c9509b666eb63ac4ddb590b539105c11b8cf8c3c9d665522d4b1d7a3918549689a3eae6e5262fa', 1, 1, 'Personal Access Token', '[]', 0, '2021-05-29 08:15:47', '2021-05-29 08:15:47', '2021-06-05 10:15:47'),
('63ca81d898f907ca1040e7323f74599798885d128ca341fd8017974786c3172102e122e42839bb34', 1, 1, 'Personal Access Token', '[]', 0, '2021-04-26 06:26:37', '2021-04-26 06:26:37', '2021-05-03 08:26:37'),
('64431819b53f1357f49bc60554cb50a49a989b7ae9bf4482f3bbfc20da172d31d06885bc7d604fed', 1, 1, 'Personal Access Token', '[]', 0, '2021-05-25 08:40:14', '2021-05-25 08:40:14', '2021-06-01 10:40:14'),
('6553575f28fc6084d04689be1a3db3f95733579339abba0e292459b334de0b24427d457320e082a3', 1, 1, 'Personal Access Token', '[]', 0, '2021-05-25 08:58:13', '2021-05-25 08:58:13', '2021-06-01 10:58:13'),
('65b4da8e50a7642e70f30b07b5224971160ae7890fe506b53e17312ff7ac6a68427b1d3ada954373', 1, 1, 'Personal Access Token', '[]', 0, '2021-05-17 05:38:55', '2021-05-17 05:38:55', '2021-05-24 07:38:55'),
('677c99e6562388ab97839cb42f8bf22a92520db00e9ff2aff0883ba2c48e351fdda8279a597c50ce', 1, 1, 'Personal Access Token', '[]', 0, '2021-05-11 17:43:48', '2021-05-11 17:43:48', '2021-05-18 19:43:48'),
('6811e66b07ad4fc044fba2919ef10c45e4ed54f57ff07f9464d28aedd09a021d1e32fee2252fa404', 1, 1, 'Personal Access Token', '[]', 0, '2021-05-17 03:59:26', '2021-05-17 03:59:26', '2021-05-24 05:59:26'),
('6849461e0e7b888ca19111e78e1d9a59318a426a6c2e2a77271d131d05cc24c3861ea6db0e5a863c', 1, 1, 'Personal Access Token', '[]', 0, '2021-05-25 09:02:49', '2021-05-25 09:02:49', '2021-06-01 11:02:49'),
('69255b0cbe5afdf5b9192a9d0871218014e3d23925df3642f9580284746fe2828f40d7b148721d19', 1, 1, 'Personal Access Token', '[]', 0, '2021-06-03 10:32:51', '2021-06-03 10:32:51', '2021-06-10 12:32:51'),
('69a00f9b3c1fe314620d56615aecaa39e8af9ba559ac961686e4e6156599f35c520950e5c984f6be', 1, 1, 'Personal Access Token', '[]', 0, '2021-05-17 05:12:38', '2021-05-17 05:12:38', '2021-05-24 07:12:38'),
('6b64985241e24f476006155d9db52851e1c9ee54b142b865abc811b9d849577f7400b802bdb567a2', 1, 1, 'Personal Access Token', '[]', 0, '2021-04-27 10:12:17', '2021-04-27 10:12:17', '2021-05-04 12:12:17'),
('6b78b7ca9cb949d477f6583e3db7b03139a8be7b53cac3e74aad05880775c41d02ccd9bd5964aa9f', 1, 1, 'Personal Access Token', '[]', 0, '2021-06-07 18:32:42', '2021-06-07 18:32:42', '2021-06-14 20:32:42'),
('6cb01a22eed4210245af301069e87fa961bbe28b15582a873b481df314f834c299688b2a449b9783', 1, 1, 'Personal Access Token', '[]', 0, '2021-05-04 09:11:46', '2021-05-04 09:11:46', '2021-05-11 11:11:46'),
('6d6b44d76dac67e68caabc1242de44d0592d62a3953bf05106ee4abca3fdff5a06f7d11fb13b0ee9', 1, 1, 'Personal Access Token', '[]', 0, '2021-04-26 06:08:15', '2021-04-26 06:08:15', '2021-05-03 08:08:15'),
('6dbeaf2a9b77c8d707b4cfdba68a6c91d6ea6691e532da6b4716445f5c913fd163bde62920f3dc69', 1, 1, 'Personal Access Token', '[]', 0, '2021-05-17 05:28:45', '2021-05-17 05:28:45', '2021-05-24 07:28:45'),
('6dc81b209057f0a445632b51c895036242cec9f54ffaed80a227c0b19c362fde3a14150b435a86f5', 1, 1, 'Personal Access Token', '[]', 0, '2021-04-27 08:59:01', '2021-04-27 08:59:01', '2021-05-04 10:59:01'),
('6de81f696309115a9ecae44c4f7a7e8c5d7e68f12231a40dade09dcf513cac085322bc5feb1ef07a', 1, 1, 'Personal Access Token', '[]', 0, '2021-05-16 12:58:54', '2021-05-16 12:58:54', '2021-05-23 14:58:54'),
('6e228c37f6c7c7e6ffd5faf52ed3ca28d10ddc4e34fffd7c301a10ecda765944aeef7f916c5e2e61', 1, 1, 'Personal Access Token', '[]', 0, '2021-05-29 05:19:10', '2021-05-29 05:19:10', '2021-06-05 07:19:10'),
('6ec35e9da7e52b06be1d062b06e80cb39a0d9c797bbe08bbe42ae90333573a937654e70f7ed0002b', 1, 1, 'Personal Access Token', '[]', 0, '2021-06-03 16:28:16', '2021-06-03 16:28:16', '2021-06-10 18:28:16'),
('70ef3c4f46e38919a2f13f22b9bbb9439844656d4e04030af1f2ac89a1a2e186f4b52e1d240bb0bf', 1, 1, 'Personal Access Token', '[]', 0, '2021-05-12 07:01:22', '2021-05-12 07:01:22', '2021-05-19 09:01:22'),
('7221189935e7eacbf52f35dc5213c7313d2fc3694bd87c06f44b87a2baac0a807a96d1884ece7eb9', 1, 1, 'Personal Access Token', '[]', 0, '2021-05-12 21:50:50', '2021-05-12 21:50:50', '2021-05-19 23:50:50'),
('72de0681afb0b98950a89f28641ba03668e6984eea04fa2cc8ab53a101b66ad4dceb460ccd596a7d', 1, 1, 'Personal Access Token', '[]', 0, '2021-05-15 10:10:57', '2021-05-15 10:10:57', '2021-05-22 12:10:57'),
('74ca6a715809ec21ef0931b4f8aacd2f09a6e82468f2753296e44e2c62e364e21c5128d58494cde0', 1, 1, 'Personal Access Token', '[]', 0, '2021-05-11 11:57:46', '2021-05-11 11:57:46', '2021-05-18 13:57:46'),
('754dfec4b1e01a9f19b2a667af2eb8501a566dfcd2065ddddc256764e1013e0a0b17a0255251b9c6', 1, 1, 'Personal Access Token', '[]', 0, '2021-05-29 08:41:49', '2021-05-29 08:41:49', '2021-06-05 10:41:49'),
('75967064929a73ad7c51ab6c90665676194c890ae87c212f5b3043c7ae5cfd9fe557649683811ae3', 2, 1, 'Personal Access Token', '[]', 0, '2021-04-26 05:56:39', '2021-04-26 05:56:39', '2021-05-03 07:56:39'),
('75f26fa9c58a6c3f716f6cf5582f77df899ad54008e9f4575fbde9787bb9822c5745d5da2d3ccdda', 1, 1, 'Personal Access Token', '[]', 0, '2021-06-03 16:58:56', '2021-06-03 16:58:56', '2021-06-10 18:58:56'),
('776b7777e3532c795b940ddcfdf62c545d2686ada7473b50bdcb1bd88042a12bc10f35208f113be5', 1, 1, 'Personal Access Token', '[]', 0, '2021-06-02 19:51:14', '2021-06-02 19:51:14', '2021-06-09 21:51:14'),
('77bbfa6bcd72ca91d94b116c781e7c73bc9a4d85151df843fe7c02820ccaad9f77b1806d7f94d93d', 1, 1, 'Personal Access Token', '[]', 0, '2021-06-07 06:02:16', '2021-06-07 06:02:16', '2021-06-14 08:02:16'),
('78030a2f4e5026a39ae52306020cf33c99f2973e5eee95fd91a255b70adc4d13323116d9b2ae1a28', 1, 1, 'Personal Access Token', '[]', 0, '2021-05-25 10:29:06', '2021-05-25 10:29:06', '2021-06-01 12:29:06'),
('783412120b16c9b06d9a3bac610b7ec4d5360720fc3ac1293931352aeb3e8dcc0a8b6752e89c19d0', 5, 1, 'Personal Access Token', '[]', 0, '2021-04-26 06:13:03', '2021-04-26 06:13:03', '2021-05-03 08:13:03'),
('790bbee1b5d82add314c998efeccf291a2de5cec25e472031e005023d45e4bcf824c2dfbb1e9bf19', 1, 1, 'Personal Access Token', '[]', 0, '2021-05-13 12:17:05', '2021-05-13 12:17:05', '2021-05-20 14:17:05'),
('79862536b75f1224cb30f5cc11235365acb695d10ab3339f09d4bcaf212637f6c1dd6bd01b3638c4', 1, 1, 'Personal Access Token', '[]', 0, '2021-05-31 05:40:44', '2021-05-31 05:40:44', '2021-06-07 07:40:44'),
('7b677e9c307ec9536f53a82513f4e0bed74458ccf5517e90a7f9dec0f8f55bc0e5d529d53974e036', 1, 1, 'Personal Access Token', '[]', 0, '2021-05-25 09:27:13', '2021-05-25 09:27:13', '2021-06-01 11:27:13'),
('7dfd04064708265fee038ed09c6dc910478c66b996149d2d8465bb1132c107dba870dc7fba5b1f4d', 1, 1, 'Personal Access Token', '[]', 0, '2021-05-13 11:43:59', '2021-05-13 11:43:59', '2021-05-20 13:44:00'),
('808d5d108e4ba21b56f1e90d16ebb1555779b7ce42bb57fa19a0c1185248fea65884c21f201d813d', 1, 1, 'Personal Access Token', '[]', 0, '2021-05-13 11:43:07', '2021-05-13 11:43:07', '2021-05-20 13:43:07'),
('82cf4b98eebdca2000c8ddf93a742560b954326873772b1ef397fc9db2411cbd79ab5810b08b9559', 1, 1, 'Personal Access Token', '[]', 0, '2021-05-13 20:31:03', '2021-05-13 20:31:03', '2021-05-20 22:31:03'),
('835f6d7ae12f1099ef3c9443756f4ada2c63852be986be593ebde05b79178b815b3518a7806aab21', 1, 1, 'Personal Access Token', '[]', 0, '2021-05-31 06:43:52', '2021-05-31 06:43:52', '2021-06-07 08:43:52'),
('848b11ba19584b4b57a63eb6c92d872a53fe6fecffd3018c36e6d53736cac218dbd1d8a66cf2406f', 1, 1, 'Personal Access Token', '[]', 0, '2021-05-18 08:36:23', '2021-05-18 08:36:23', '2021-05-25 10:36:23'),
('8532f6d71e308a2c6aac3b5e0d8e996a22ff5b60b86ed2c89afbe1556341e69a51b8be706c4c740e', 1, 1, 'Personal Access Token', '[]', 0, '2021-05-25 08:40:56', '2021-05-25 08:40:56', '2021-06-01 10:40:56'),
('8578ca189cf2ec20e60e6d8c857ad8b0a098b5c248caafe193025d497c3988d24401a3fbb3ad3307', 1, 1, 'Personal Access Token', '[]', 0, '2021-05-11 08:47:32', '2021-05-11 08:47:32', '2021-05-18 10:47:32'),
('867352eb83bfac402bf96500d895e791b69fa001b6ce5be07d278031c85e45866b280e2499354a04', 1, 1, 'Personal Access Token', '[]', 0, '2021-05-15 07:42:48', '2021-05-15 07:42:48', '2021-05-22 09:42:48'),
('870cfde908f06760c8b83617ce7515476387d11040ffd4a3ed9e68f8544607c67b5f1849577b880a', 1, 1, 'Personal Access Token', '[]', 0, '2021-05-25 10:29:06', '2021-05-25 10:29:06', '2021-06-01 12:29:06'),
('8788afc97346875bd7fcf28a9d323cf334501ce853dae186a996ebe211951dcf31f1b0dfce6c49d5', 1, 1, 'Personal Access Token', '[]', 0, '2021-04-26 06:33:26', '2021-04-26 06:33:26', '2021-05-03 08:33:26'),
('87fb2b76191fbd79be7cf7a685c4c888b8cde12a6941d7eb808c5f4d7f0c940339c4b30be7244bb3', 1, 1, 'Personal Access Token', '[]', 0, '2021-04-28 14:59:25', '2021-04-28 14:59:25', '2021-05-05 16:59:25'),
('8830188f252a32647ddb6dc0a66b278e07871882628e32607926fb67409820a70c47e893a9bf588b', 1, 1, 'Personal Access Token', '[]', 0, '2021-05-13 11:44:48', '2021-05-13 11:44:48', '2021-05-20 13:44:48'),
('88b56a4919e18378fd786e9a67bcdeeab7d03267b3fba397dec917f2f8389daa4c4e6db32cb12d06', 1, 1, 'Personal Access Token', '[]', 0, '2021-05-04 09:20:24', '2021-05-04 09:20:24', '2021-05-11 11:20:24'),
('89ff20b5f494b84fd2406f2684602b72bfcedfa8fdfbf47671303c2661814e4f64f1ce181c004604', 5, 1, 'Personal Access Token', '[]', 0, '2021-06-07 18:05:08', '2021-06-07 18:05:08', '2021-06-14 20:05:08'),
('8ad4702584343699c37ca40a4f03cbb65888b9955792a30f5f9051248103542dac9e58e3997263a4', 1, 1, 'Personal Access Token', '[]', 0, '2021-05-13 12:01:16', '2021-05-13 12:01:16', '2021-05-20 14:01:16'),
('8b4980e9fa1f877553da37be3ccaf1d74c1ef213cd37294575e483fa1b38ef211c487a128b84584c', 1, 1, 'Personal Access Token', '[]', 0, '2021-05-13 11:56:37', '2021-05-13 11:56:37', '2021-05-20 13:56:37'),
('8b4be807e9821928b917132cfb0033d31ee89f59503bd12080503ea01c2433947fd5db95de5bdbc3', 1, 1, 'Personal Access Token', '[]', 0, '2021-06-03 10:36:00', '2021-06-03 10:36:00', '2021-06-10 12:36:00'),
('8c6a76237f3ca018c9cc668564123e064d2ea56d8a94c7d4447c3b9e6ce3e0d6a9bd9bd393752ccf', 1, 1, 'Personal Access Token', '[]', 0, '2021-04-27 08:52:58', '2021-04-27 08:52:58', '2021-05-04 10:52:58'),
('8c8dbb91d07a0a8f107b3c9a43b86dc3ee9b6caccaeba498e049ad3c764c4ffa685e9e91adc974f8', 1, 1, 'Personal Access Token', '[]', 0, '2021-05-31 06:44:13', '2021-05-31 06:44:13', '2021-06-07 08:44:13'),
('8d448f6e81ec6a3d524f641a1b71738fb675b53a8a1aa7bb74a1179da51dc4a8e6a09aaddf162b11', 1, 1, 'Personal Access Token', '[]', 0, '2021-04-23 20:14:13', '2021-04-23 20:14:13', '2021-04-30 22:14:14'),
('8dac54b2cd03c35d0ff8c326e25a7e6c6cdb8eb01bbb0935ebaaf00e41b889c5cde53b321b7ec6ec', 1, 1, 'Personal Access Token', '[]', 0, '2021-05-31 06:33:53', '2021-05-31 06:33:53', '2021-06-07 08:33:53'),
('8f0ba56d622fe8d39cb2eb241810881b7889d00fe33a07c1a605845765bccb3e350b2bd928b7d907', 1, 1, 'Personal Access Token', '[]', 0, '2021-05-31 06:07:53', '2021-05-31 06:07:53', '2021-06-07 08:07:53'),
('8f52d045aaaacc2c206dbc61999f7072b72ffa38275eafb7c3d4aac8d27cd289cea2a52ae0c66705', 1, 1, 'Personal Access Token', '[]', 0, '2021-05-25 08:36:03', '2021-05-25 08:36:03', '2021-06-01 10:36:03'),
('90ea11c49493a9f7eeb989864078f7ca4138f0674a08091a2b3a22de9abb99d7e340d4ac15b04a96', 1, 1, 'Personal Access Token', '[]', 0, '2021-05-15 07:42:06', '2021-05-15 07:42:06', '2021-05-22 09:42:06'),
('90fcc62d377bdb3fc925f2df47d1cec85a673d2890b5e47cc1a31e3070bc4c3ff5e738ba2944f746', 10, 1, 'task api', '[]', 0, '2021-04-12 11:06:01', '2021-04-12 11:06:01', '2022-04-12 13:06:01'),
('93239439e5769cc6368eb23cfdce272abca86e0d2ada9554658fd57a3cfc4e64e011635e9b5335f4', 1, 1, 'Personal Access Token', '[]', 0, '2021-04-26 06:20:16', '2021-04-26 06:20:16', '2021-05-03 08:20:16'),
('93820c7e8997031388341ff0825b3c87439f224f7237d13b0963d77df55435466a04edbd9b757063', 1, 1, 'Personal Access Token', '[]', 0, '2021-06-08 05:57:44', '2021-06-08 05:57:44', '2021-06-15 07:57:44'),
('93bcd102a3de250d89292fb53b21d388d8900ba7c7edd4bf5dfe5075700ba674d86d1b9bbf759974', 1, 1, 'Personal Access Token', '[]', 0, '2021-04-26 06:33:51', '2021-04-26 06:33:51', '2021-05-03 08:33:51'),
('94531a73a9249d7eab28184c462cb762748e443f18edd7c7b723590f4e6c4e51a408bcf3619a7175', 1, 1, 'Personal Access Token', '[]', 0, '2021-06-07 18:04:18', '2021-06-07 18:04:18', '2021-06-14 20:04:18'),
('96f7d846428c307d8f7dd991343b28d13bc70f1e78cf6157845bdb6cf01d75b6603a61b1c010967c', 1, 1, 'Personal Access Token', '[]', 0, '2021-05-25 09:11:13', '2021-05-25 09:11:13', '2021-06-01 11:11:13'),
('97383c31ffddfe449818ceeee4638404ed91ee91f85fd8085ec7a9b60a90452120cb59dd93687369', 1, 1, 'Personal Access Token', '[]', 0, '2021-05-11 10:08:53', '2021-05-11 10:08:53', '2021-05-18 12:08:53'),
('974329ae74c28d165cfaede4ab824fc20d2f2deae05ceea6b88b043c5759876f10ef5b845693974c', 1, 1, 'Personal Access Token', '[]', 0, '2021-04-27 09:35:20', '2021-04-27 09:35:20', '2021-05-04 11:35:20'),
('97b08fbd593864b136998e2e77d9280428be171d9e1dd0cbd342b24a3a5e02ef4246c1fe659b9e79', 1, 1, 'Personal Access Token', '[]', 0, '2021-06-03 17:00:27', '2021-06-03 17:00:27', '2021-06-10 19:00:27'),
('986ccb0e48eb471b8a998f3d325d5b360256bf4e16a182a29ea325b6e9862ec8a4bd4151ac0ed9f2', 5, 1, 'Personal Access Token', '[]', 0, '2021-04-28 15:01:40', '2021-04-28 15:01:40', '2021-05-05 17:01:40'),
('98c9a79f0008e69814ac12ac0e2eb6c790217423abac128385682fe7bb152654a8297e4e71ba1bd3', 1, 1, 'Personal Access Token', '[]', 0, '2021-05-31 06:41:15', '2021-05-31 06:41:15', '2021-06-07 08:41:15'),
('991cdd09dd54934ca66695bf685d6f57a1ff8ccc0caaf738b14f31005f46d0bbe32e25728ce2c097', 1, 1, 'Personal Access Token', '[]', 0, '2021-06-03 20:47:09', '2021-06-03 20:47:09', '2021-06-10 22:47:09'),
('9956716b6c66c0e9a0f597f5de7fca1b1004a59e2ae99401ec21a4722b36b267190e7e976d92bdaa', 1, 1, 'Personal Access Token', '[]', 0, '2021-05-31 05:23:49', '2021-05-31 05:23:49', '2021-06-07 07:23:49'),
('9a49e1566aeb384e343d4d232fd18da7b79e6f43b294b8c07680cffb5d24a3fcba02ddc04c2c042b', 1, 1, 'Personal Access Token', '[]', 0, '2021-05-11 08:47:32', '2021-05-11 08:47:32', '2021-05-18 10:47:32'),
('9ada659f09f3d404e357a90d077a853b57cc604545f2f9a0b58b7f98b8a438f16492efe2f6ad619d', 1, 1, 'Personal Access Token', '[]', 0, '2021-05-31 05:44:09', '2021-05-31 05:44:09', '2021-06-07 07:44:09'),
('9af40c132fbbab676c409ecd19b89c10daf9558d01ca56ea3ac588f277c7b2a479dd8d567afd96be', 1, 1, 'Personal Access Token', '[]', 0, '2021-05-12 07:50:21', '2021-05-12 07:50:21', '2021-05-19 09:50:21'),
('9b4195d9ad6cda26931546d231f086b8589a06034a2a11763539b0a4757185b1e9d801bd734ff1a1', 5, 1, 'Personal Access Token', '[]', 0, '2021-04-26 05:12:19', '2021-04-26 05:12:19', '2021-05-03 07:12:19'),
('9b5c549884bb7785b9fca9c38a32b086ab0100719412225ee55392a450e6fe6b94cdb5c4b1836d8e', 1, 1, 'Personal Access Token', '[]', 0, '2021-05-17 05:46:22', '2021-05-17 05:46:22', '2021-05-24 07:46:22'),
('9b9359d58ca83046c39cca0db85df230d5792f35cb3ad08e95c3218245876f0250625f49cf756613', 1, 1, 'Personal Access Token', '[]', 0, '2021-05-15 15:49:48', '2021-05-15 15:49:48', '2021-05-22 17:49:48'),
('9bface98bc6283fd623888a4a283f791bcd3cf16070a2ec5a40b9a244bba413f9c6585aa0fc6cef2', 1, 1, 'Personal Access Token', '[]', 0, '2021-05-04 09:20:12', '2021-05-04 09:20:12', '2021-05-11 11:20:12'),
('9d34c85b2ca85162c3467f103e3c893049597a70bc0bf585778aa8952d4f5e7bff8e662cc039ddab', 1, 1, 'Personal Access Token', '[]', 0, '2021-05-11 09:54:02', '2021-05-11 09:54:02', '2021-05-18 11:54:02'),
('9df125cf4196734ab262e73b7527b8414f18762414078b028138cc0546bf206ff6ff778b6d2ce9c8', 1, 1, 'Personal Access Token', '[]', 0, '2021-04-26 06:40:32', '2021-04-26 06:40:32', '2021-05-03 08:40:32'),
('9e28e79466903cf8f4dd24e9671fd700dddb935de098d4bce20d84fb2e9d912ea6205ff7149289d1', 1, 1, 'Personal Access Token', '[]', 0, '2021-05-03 06:33:28', '2021-05-03 06:33:28', '2021-05-10 08:33:28'),
('9e4534a8cb6a7ce3962fc5a1dd843bdcd0a92c214df2187f096400b1970b078216c3e2db6198b3e4', 1, 1, 'Personal Access Token', '[]', 0, '2021-05-25 08:59:38', '2021-05-25 08:59:38', '2021-06-01 10:59:38'),
('a01e42670c4e53a00396bf565845024ddbc4d03f7613dbc552a974b70c41adacc558452a9cef4500', 1, 1, 'Personal Access Token', '[]', 0, '2021-06-03 10:38:56', '2021-06-03 10:38:56', '2021-06-10 12:38:56'),
('a2ac669e442e073c41bca535df1ece8ca097f62d66a1762e5c57b8756f62b269cf2d7761127ff598', 1, 1, 'Personal Access Token', '[]', 0, '2021-05-13 19:49:05', '2021-05-13 19:49:05', '2021-05-20 21:49:05'),
('a3f0bf09de3648a453d89bdb2c0cc92b1cfe9fd7d97bf94418dd41e7dadb47cf80400e1d252e7ae5', 1, 1, 'Personal Access Token', '[]', 0, '2021-04-27 10:12:18', '2021-04-27 10:12:18', '2021-05-04 12:12:18'),
('a4226158a8a2d81d78a3d1cad597925d9ad044aa2f7bbb814e9be057f9a69ef168c4742816e75e4f', 1, 1, 'Personal Access Token', '[]', 0, '2021-05-29 08:18:32', '2021-05-29 08:18:32', '2021-06-05 10:18:32'),
('a7246fb1099bcca2ccb77c38aee939919c0c93b6e65c22f062a2b6af3fdcb10dae1f5c62063e4ab5', 1, 1, 'Personal Access Token', '[]', 0, '2021-05-15 16:13:42', '2021-05-15 16:13:42', '2021-05-22 18:13:42'),
('a7a6d27933a79d1840d2ed883f893b841ddd57e811de18decb5315e56b0fb4061db9e15f2a4a598e', 1, 1, 'Personal Access Token', '[]', 0, '2021-05-04 09:19:09', '2021-05-04 09:19:09', '2021-05-11 11:19:09'),
('a943e159a746fda0a09513d4de0bced1eed5402e101824207c63764b79730500fe85b0a70330ae69', 1, 1, 'Personal Access Token', '[]', 0, '2021-05-17 05:28:00', '2021-05-17 05:28:00', '2021-05-24 07:28:00'),
('a94aefcbea9e623a78c529c5cd28ada252da8c901f46fbdba2e02a390a8b4dd1f2860fe140521d00', 1, 1, 'Personal Access Token', '[]', 0, '2021-05-31 05:44:50', '2021-05-31 05:44:50', '2021-06-07 07:44:50'),
('a97c12744bbe2c143fd4dc18941abfa596a9692b993869e6c7cd1e24312ed02b8c3f0f28f03a1fba', 1, 1, 'Personal Access Token', '[]', 0, '2021-05-31 05:10:36', '2021-05-31 05:10:36', '2021-06-07 07:10:36'),
('a99aa2464e6e10e7a05027248cb76c286320643f045860a1a06394dcab2f5ba0639520a51d4ba5bb', 1, 1, 'Personal Access Token', '[]', 0, '2021-04-13 10:09:46', '2021-04-13 10:09:46', '2021-04-20 12:09:46'),
('aaadf4972b21f8d55d8475a2986aa1f08730907ee304869c3ee42f9797e1af241ea42012e540e6e3', 1, 1, 'Personal Access Token', '[]', 0, '2021-05-31 06:20:25', '2021-05-31 06:20:25', '2021-06-07 08:20:25'),
('aab1863028572b97d37a38032ff7b76913e109aa511d1ad54b748a28aad7addbbf40fd9e4c129b1e', 1, 1, 'Personal Access Token', '[]', 0, '2021-06-03 20:48:39', '2021-06-03 20:48:39', '2021-06-10 22:48:39'),
('ac51953ff0c2998103b46ea98c39f4197bb77169103fdd1e69b9011a45e93c384fcc0878243b426a', 1, 1, 'Personal Access Token', '[]', 0, '2021-06-03 10:34:34', '2021-06-03 10:34:34', '2021-06-10 12:34:34'),
('ac6039f25bf6fc13e7e73831376cc552621f380ae606590b55acd08bcf32fff41c60a18d3db2b29c', 1, 1, 'Personal Access Token', '[]', 0, '2021-06-03 16:41:29', '2021-06-03 16:41:29', '2021-06-10 18:41:29'),
('acf685040445f9c2a75db866e7bd4fc8b68088450f3d5b65a7c43735c1e2afce4447a9430acef104', 1, 1, 'Personal Access Token', '[]', 0, '2021-05-11 09:29:30', '2021-05-11 09:29:30', '2021-05-18 11:29:30'),
('aedde3f3fef122113424c88c7c1b2dcce86789e64472930db4b1b9cfb23a1ec195a78e9ac36cd084', 1, 1, 'Personal Access Token', '[]', 0, '2021-05-25 08:59:30', '2021-05-25 08:59:30', '2021-06-01 10:59:30'),
('b1af3bf9cc77c09218b12a039925831a71dde31f277f11fc6c322e58d889b84e4174829c0a96a31e', 1, 1, 'Personal Access Token', '[]', 0, '2021-04-27 09:00:08', '2021-04-27 09:00:08', '2021-05-04 11:00:08'),
('b1b658db15666b5ca1ddd4571fbfd7e7a229d405713c741fef269e7fe6419ee8fc1f9e0289a80622', 1, 1, 'Personal Access Token', '[]', 0, '2021-04-26 06:08:42', '2021-04-26 06:08:42', '2021-05-03 08:08:42'),
('b1c661a223de7bff2f7f8f47598f70515aa2150be03a908e30e2ed15029bb9b14a0085471cbd33e8', 1, 1, 'Personal Access Token', '[]', 0, '2021-04-26 06:03:12', '2021-04-26 06:03:12', '2021-05-03 08:03:12'),
('b1d2d56411e2f45ed5b2cc82bc65877dfab5d6ef712d647b91873cc11b281cc5232c469e370c1bd8', 1, 1, 'Personal Access Token', '[]', 0, '2021-05-15 06:11:59', '2021-05-15 06:11:59', '2021-05-22 08:11:59'),
('b1e2df061b6d892beb773d70546fc66dadbdc2b68f2abcb791aa9bfd0200f845fcf234bc5df155de', 1, 1, 'Personal Access Token', '[]', 0, '2021-05-11 08:42:09', '2021-05-11 08:42:09', '2021-05-18 10:42:09'),
('b20ccfa90ded8cbe82b8209413daf948b121b4dc11c9fdafad6b9d34ce82cb06acf1e5a83c36074c', 1, 1, 'Personal Access Token', '[]', 0, '2021-05-31 05:24:41', '2021-05-31 05:24:41', '2021-06-07 07:24:41'),
('b2d0aef989cd6c2ee3cd91bf016f34bc48e707ed03da35e24fd26cc4788de69184b55bd531e30cea', 1, 1, 'Personal Access Token', '[]', 0, '2021-06-07 18:02:48', '2021-06-07 18:02:48', '2021-06-14 20:02:48'),
('b391743ce67f0c290aa33d8284d4df5fbd1739b013cd288a9002b73271143c442c7ed4e3a01ba687', 1, 1, 'Personal Access Token', '[]', 0, '2021-06-03 15:29:08', '2021-06-03 15:29:08', '2021-06-10 17:29:08'),
('b3d60be1b89973f1b7647843880b982c6a7cfd49c6dbb3003f88474b06daaeb3120e42e045f7cca5', 1, 1, 'Personal Access Token', '[]', 0, '2021-06-07 05:16:07', '2021-06-07 05:16:07', '2021-06-14 07:16:07'),
('b4145c7c9fe237fb8c471cb84dfdb6565d096c2ce5af36e92d3167f7fd5683055c7aea9e7d2816ed', 1, 1, 'Personal Access Token', '[]', 0, '2021-05-25 09:38:35', '2021-05-25 09:38:35', '2021-06-01 11:38:35'),
('b485922176fddefa1d8a757d4528b216797a3d541ea408c31031156e67d2bdaba65e2720d5037152', 1, 1, 'Personal Access Token', '[]', 0, '2021-06-03 10:35:11', '2021-06-03 10:35:11', '2021-06-10 12:35:11'),
('b487069af7683e31012234745ade35c552bda57f686657a4cc7f5dd871a8f33f077549efd8fe39ca', 1, 1, 'Personal Access Token', '[]', 0, '2021-04-25 18:21:43', '2021-04-25 18:21:43', '2021-05-02 20:21:43'),
('b4ed62fa0cd47a9e5a6b222a5a1a1bc56b300f2f9aaf9bd4d7fd7a0f80e632f1fa2e462bc80e2bbf', 1, 1, 'Personal Access Token', '[]', 0, '2021-06-03 10:35:29', '2021-06-03 10:35:29', '2021-06-10 12:35:29'),
('b56a92a465c773c6c2bacd0c414e726babdbed760958e63e77bf812134204b0b9de476835526d048', 1, 1, 'Personal Access Token', '[]', 0, '2021-05-25 07:18:23', '2021-05-25 07:18:23', '2021-06-01 09:18:23'),
('b6480ba9447f2e838643e6572236649ef7d5485aa55d1e7a40e2e2d9f74aba8f34ba2046e7dae8b4', 1, 1, 'Personal Access Token', '[]', 0, '2021-05-31 05:16:41', '2021-05-31 05:16:41', '2021-06-07 07:16:41'),
('b8581ef649052976eba03d5cca6003f2599b4bf9d29c42e50d2a9b80359f560752f2207d0dbad3e8', 1, 1, 'Personal Access Token', '[]', 0, '2021-05-16 17:43:04', '2021-05-16 17:43:04', '2021-05-23 19:43:05'),
('b8d81a2d56979d54dec7baa5cf7084987e30ccd779cfa961a35d688911cc0d546b69ef64d8b7d880', 1, 1, 'Personal Access Token', '[]', 0, '2021-05-25 09:21:36', '2021-05-25 09:21:36', '2021-06-01 11:21:36'),
('b8e10a244f48cd107e2feb3b05aaf05827bd8ebb59ebe0999f130fb73e4e333ace5624da83f8f585', 1, 1, 'Personal Access Token', '[]', 0, '2021-05-31 06:36:09', '2021-05-31 06:36:09', '2021-06-07 08:36:09'),
('b94f67a3f973c2eb560d7f5c969e5e3463e1de4ad7ca9f4e37209095d8fcd5b99b527889481aded0', 1, 1, 'Personal Access Token', '[]', 0, '2021-04-26 06:17:33', '2021-04-26 06:17:33', '2021-05-03 08:17:33'),
('ba89a525658368cfe84c0518a4a51a719c90c0318b948ad8e4b7d5fefbac1ae1d9a9c34d59f7d957', 1, 1, 'Personal Access Token', '[]', 0, '2021-05-17 05:43:35', '2021-05-17 05:43:35', '2021-05-24 07:43:35'),
('bad5a13402f8352f9628d750afcb27c4c6a49d31217f2ab7bc79ba3bc88c4aa9589e579fced6e715', 1, 1, 'Personal Access Token', '[]', 0, '2021-05-11 11:59:24', '2021-05-11 11:59:24', '2021-05-18 13:59:24'),
('bb46b880a1f8e8a42b196485291814a29272aa9301d528fbc0289d16c57a962724667cf3303448ab', 1, 1, 'Personal Access Token', '[]', 0, '2021-06-03 10:37:29', '2021-06-03 10:37:29', '2021-06-10 12:37:29'),
('bcb4b17fb6dcc75b6b648e6e4062733679d6f817073a5c397403446dfcd280d471ab2c3eff267440', 1, 1, 'Personal Access Token', '[]', 0, '2021-04-25 18:21:33', '2021-04-25 18:21:33', '2021-05-02 20:21:33'),
('bcce2a18d5392a29e0c83e35d9e997a6e731b9f3795694d2614fcd0eb234036cea635c91d9ecd8a0', 1, 1, 'Personal Access Token', '[]', 0, '2021-04-26 06:17:33', '2021-04-26 06:17:33', '2021-05-03 08:17:33'),
('bd8693b4543d95b1c7d055836d06532a5683f6922d3a32f368622ffc538f1a64e8327a9041d26584', 1, 1, 'Personal Access Token', '[]', 0, '2021-06-07 05:40:15', '2021-06-07 05:40:15', '2021-06-14 07:40:15'),
('bed9fe503a08833f8acdf04184565a23cf0b6a533c141abd59c8ecb63b22fd4bab588e3544d05d85', 1, 1, 'Personal Access Token', '[]', 0, '2021-05-31 06:43:16', '2021-05-31 06:43:16', '2021-06-07 08:43:16'),
('bf18baa14f3c71d7b5b2582bc508521aa55c431ff2d4ce86dfe289c4f77d2e12c718223d7ec064d1', 1, 1, 'Personal Access Token', '[]', 0, '2021-05-16 10:55:00', '2021-05-16 10:55:00', '2021-05-23 12:55:01'),
('bf2a8724a343db9dbe645c51c28b7853c58a0bdf40a0949c048a4f3a22b0ab4eba318936b5076d19', 6, 1, 'Personal Access Token', '[]', 0, '2021-04-18 17:47:27', '2021-04-18 17:47:27', '2021-04-25 19:47:27'),
('c07c5b97e047d09d0fc2dc3282ff3d354f6afef1033e2af6df85d1b2d4729b8f94ab62689e1aea3f', 1, 1, 'Personal Access Token', '[]', 0, '2021-04-27 10:22:50', '2021-04-27 10:22:50', '2021-05-04 12:22:50'),
('c23530f436711c1c72f6e983eceb84b065037deba53a3d53f4d59b88ccb89473b5c882fdb9030ab4', 1, 1, 'Personal Access Token', '[]', 0, '2021-05-04 09:16:41', '2021-05-04 09:16:41', '2021-05-11 11:16:41'),
('c268e9b50d04ee435babeb444939c2e4caa7953776a1938d527c39d30b237dd30c6e10a73d1643f6', 6, 1, 'task api', '[]', 0, '2021-04-18 17:47:03', '2021-04-18 17:47:03', '2022-04-18 19:47:03'),
('c3635b6abebf7f99870281215bd3795d75bd440f23dd006886f71335757ecfa04356bc152c7dab5a', 1, 1, 'Personal Access Token', '[]', 0, '2021-05-13 11:38:38', '2021-05-13 11:38:38', '2021-05-20 13:38:38'),
('c48dd3a471602f586609eede3fdbc39cfd1b83788081f2a2eb877bbf0c0f8d534bcf8ad987473364', 1, 1, 'Personal Access Token', '[]', 0, '2021-05-15 10:19:35', '2021-05-15 10:19:35', '2021-05-22 12:19:35'),
('c50d5254b866a37828b9175eca3e0db84f2fca948540c5108e24f7b6292dce3dec94158ecb1267c9', 1, 1, 'Personal Access Token', '[]', 0, '2021-05-29 08:47:21', '2021-05-29 08:47:21', '2021-06-05 10:47:21'),
('c5fe413b19c70dcdb6f9eee4e79067c39bce8fabfad553a90b1cdefa5b7d84f24a741a19318d9d92', 1, 1, 'Personal Access Token', '[]', 0, '2021-05-13 12:04:43', '2021-05-13 12:04:43', '2021-05-20 14:04:43'),
('ca2d5d7776b4f25147486557ee7f3093c2c7c5fe8376356401e4f1f3da395174499dfcd633f698a0', 1, 1, 'Personal Access Token', '[]', 0, '2021-05-12 07:27:34', '2021-05-12 07:27:34', '2021-05-19 09:27:34'),
('ca2dc811792aeda93544d8355d00ee7a36099f48c70e31dd2d04d0f790fe3a91fd50f5b94a811d99', 1, 1, 'Personal Access Token', '[]', 0, '2021-04-27 09:05:52', '2021-04-27 09:05:52', '2021-05-04 11:05:52'),
('cbe40f7f438263c283b487b7e824b70809911ebcf10528f36b4cf1f6ebaa8b636bcf90be322044de', 1, 1, 'Personal Access Token', '[]', 0, '2021-06-03 20:47:38', '2021-06-03 20:47:38', '2021-06-10 22:47:38'),
('cbe419bcd62f81da6932f91890fd4502429002f497ed9271b336e443d699e3a020fe9f08f956b2bc', 1, 1, 'Personal Access Token', '[]', 0, '2021-05-17 06:23:18', '2021-05-17 06:23:18', '2021-05-24 08:23:18'),
('cc6ad4f6c55c7656d1a67f21e3f2599caa086bb175560589e78eb391562a3f581183b6cbfa037735', 1, 1, 'Personal Access Token', '[]', 0, '2021-05-24 15:46:09', '2021-05-24 15:46:09', '2021-05-31 17:46:09'),
('cd340641c2d7f9d1c02b984ad6a7889b9f6f7ea989d96497764a6159094aea0bdc7869a84f78f7e8', 1, 1, 'Personal Access Token', '[]', 0, '2021-05-11 11:10:29', '2021-05-11 11:10:29', '2021-05-18 13:10:29'),
('cd82c6de15257d93d9bdafbbb4806d9f1f4ffce4e712591f3022f71f80351d5cf87d2b6def605ad3', 5, 1, 'task api', '[]', 0, '2021-04-15 20:03:05', '2021-04-15 20:03:05', '2022-04-15 22:03:05'),
('ce31e080f7ea0ea70bbd33e4e348b4b9c600b58528391b6051fb2526e346960ac346724105b69c36', 1, 1, 'Personal Access Token', '[]', 1, '2021-04-12 11:06:20', '2021-04-12 11:06:20', '2021-04-19 13:06:20'),
('cf37dbc330478e2aa708faa62ccf98aaf745005c4ab5875a8769b42925324f9d47fc9cfc97228052', 1, 1, 'Personal Access Token', '[]', 0, '2021-04-27 08:56:10', '2021-04-27 08:56:10', '2021-05-04 10:56:10'),
('cf44f880865e762633ea2ce33502570d854ddee6367d54cf9b5633c723374ed103474f20b24eddfb', 1, 1, 'Personal Access Token', '[]', 0, '2021-05-15 06:09:23', '2021-05-15 06:09:23', '2021-05-22 08:09:23'),
('cf47346f1c7247ed7eff6b8c865c79b9aa40387b18057ee5c1124767a514cd34189b5eb10ea3860e', 1, 1, 'Personal Access Token', '[]', 0, '2021-05-04 09:20:40', '2021-05-04 09:20:40', '2021-05-11 11:20:40'),
('d043976892a6b98f62f8a62b5d03d6cff0a9612be0815e6e79ab88f8313439a1d6b0cd200daab509', 1, 1, 'Personal Access Token', '[]', 0, '2021-06-02 19:46:04', '2021-06-02 19:46:04', '2021-06-09 21:46:04'),
('d081624b632d76a254be6f7c5f1e206afb191decfbcfc64730b40722ba51347e2261b8a18ac4f760', 1, 1, 'Personal Access Token', '[]', 0, '2021-04-18 17:53:38', '2021-04-18 17:53:38', '2021-04-25 19:53:38'),
('d0c1675210bd4e40fcbfdca23ccf80f295c5576c5f0a5838cf7f56c517b5f987282fd68ef2d41e9e', 1, 1, 'Personal Access Token', '[]', 0, '2021-05-17 05:29:23', '2021-05-17 05:29:23', '2021-05-24 07:29:23'),
('d15e391f56c7ac5e9375e20259b95e8960b4402080126a24e7594f7d9ce4148fc237d10ba4432d25', 1, 1, 'Personal Access Token', '[]', 0, '2021-05-17 05:37:49', '2021-05-17 05:37:49', '2021-05-24 07:37:49'),
('d1db7375d3691e376094de54bf6502d37809bf18cb259d1910fe3a2f35160dbfcadbc3ca72b11a8a', 1, 1, 'Personal Access Token', '[]', 0, '2021-05-11 09:11:45', '2021-05-11 09:11:45', '2021-05-18 11:11:45');
INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('d1f195349ebad70c666c8f841f62c7632b027c2f6925eb5db580f77c2317eb499ada5f6811c14e8b', 1, 1, 'Personal Access Token', '[]', 1, '2021-04-26 06:52:30', '2021-04-26 06:52:30', '2021-05-03 08:52:30'),
('d200597ff32e8179772b4dabeea31aec7fb3c079db38f200c03d29c5980b83d84623ae6ac1c4f05c', 1, 1, 'Personal Access Token', '[]', 0, '2021-05-11 08:47:48', '2021-05-11 08:47:48', '2021-05-18 10:47:48'),
('d37ca507b1756a6eae8521094004d2609e4bbbe825600fa65ed8308a4a3eb8d9a2a46e99f37aa6f2', 1, 1, 'Personal Access Token', '[]', 0, '2021-05-04 09:18:42', '2021-05-04 09:18:42', '2021-05-11 11:18:42'),
('d429c7a751425c0157ae87fc1a847c47435153e1e03fab08a4097276aa44460adfadd4df2f2beed8', 1, 1, 'Personal Access Token', '[]', 0, '2021-04-27 09:04:44', '2021-04-27 09:04:44', '2021-05-04 11:04:44'),
('d463ccc370ea5a8b0bea9749a4fc369b1b29f9d27230dda18e7d3af367fc8d5de180a99d0f2a5f8e', 1, 1, 'Personal Access Token', '[]', 0, '2021-06-03 10:33:47', '2021-06-03 10:33:47', '2021-06-10 12:33:47'),
('d4a4e35534397f4176b9377cdaf0fa1c20051a9de0b045d801a30a528f709c819953e585f595ab64', 1, 1, 'Personal Access Token', '[]', 0, '2021-04-15 20:40:58', '2021-04-15 20:40:58', '2021-04-22 22:40:58'),
('d50333ea8ef96119f147a4ebce7b21035d328c9a6c50879e87ef7a48eec6c4773f9a12f55e8351c0', 1, 1, 'Personal Access Token', '[]', 0, '2021-05-31 06:14:03', '2021-05-31 06:14:03', '2021-06-07 08:14:03'),
('d542656ebe26da2a08b38843f375420eaa3a08ffa1a2ad930628b47ed3975f356fce746db31db5e0', 2, 1, 'Personal Access Token', '[]', 0, '2021-04-13 09:59:13', '2021-04-13 09:59:13', '2021-04-20 11:59:13'),
('d760d686bb450402aeb1c616c8675b7c9ddd116e388044c480893c280cce87955d09f8a113a1fb42', 1, 1, 'Personal Access Token', '[]', 0, '2021-05-25 09:03:30', '2021-05-25 09:03:30', '2021-06-01 11:03:30'),
('d8dd7d218772345e80403c00d64d8d44a3446108e6142a58c3bd3340e78ba6057eea9c8dbb6cff30', 2, 1, 'task api', '[]', 0, '2021-04-06 16:31:17', '2021-04-06 16:31:17', '2022-04-06 18:31:17'),
('d8fb6141852e86574ad1d503a433a6e2136d95c7fa0a72725a6fdee359f27e040899099b273d8934', 1, 1, 'Personal Access Token', '[]', 0, '2021-06-07 18:02:25', '2021-06-07 18:02:25', '2021-06-14 20:02:25'),
('d914a728ed286f71734b5a099f5101b342fb49812baeccc8b7da3adeb2b1fd4fd8094e53bc55c839', 1, 1, 'Personal Access Token', '[]', 0, '2021-06-07 17:29:55', '2021-06-07 17:29:55', '2021-06-14 19:29:55'),
('d95043ed1654c40484e097634f60d5fc2b782a9f1d987e714094be961689db092010db159b5602cc', 1, 1, 'Personal Access Token', '[]', 0, '2021-05-25 08:59:07', '2021-05-25 08:59:07', '2021-06-01 10:59:07'),
('dc8b10583fc3c2cefda34b3f12aa9ea881baa7457eab74622867d9417a2ae645919fb6a0b60cfae4', 1, 1, 'Personal Access Token', '[]', 0, '2021-05-25 09:24:30', '2021-05-25 09:24:30', '2021-06-01 11:24:30'),
('dd7e3e9fbaa4910669939c813d38fd007badd716c75d819d3db6fa6ca28db8d4a9b95691f66a184d', 1, 1, 'Personal Access Token', '[]', 0, '2021-05-25 07:50:22', '2021-05-25 07:50:22', '2021-06-01 09:50:22'),
('dda9db380002bd2f6551c9d3ad22428840203d0990994f4c198aa3eb06af160ba3da7e449ef5ffab', 1, 1, 'Personal Access Token', '[]', 0, '2021-06-03 10:34:16', '2021-06-03 10:34:16', '2021-06-10 12:34:16'),
('df366d03998929ebe9c4f3ddf37b2761c653e0eaf69e689ea8c17f06397f0e7c31ee7c1a0c5c580a', 1, 1, 'Personal Access Token', '[]', 0, '2021-05-31 06:37:25', '2021-05-31 06:37:25', '2021-06-07 08:37:25'),
('e0700a1ffcf33000c9844a6b1f6c821a7173da721cd31e05aec65e9bda9c33c1872c41234726e79c', 1, 1, 'Personal Access Token', '[]', 0, '2021-05-31 05:35:44', '2021-05-31 05:35:44', '2021-06-07 07:35:44'),
('e0ff628f9cf3ea98489988ce497f7f97093ee490c8fbbd1327a14b769f9b42e651b7d675e94ea5ee', 1, 1, 'Personal Access Token', '[]', 0, '2021-04-13 09:56:59', '2021-04-13 09:56:59', '2021-04-20 11:56:59'),
('e14f15f253879002f52f0424fb8db65f3cda87364cb1073d49b5e4e6d57970ca565cd40a88f0d64f', 5, 1, 'Personal Access Token', '[]', 0, '2021-06-07 18:04:52', '2021-06-07 18:04:52', '2021-06-14 20:04:52'),
('e27f42b7874c562711035fd113edb3ff57f1ed02f8f111fd688b363be620dbe1af35170422015f8f', 1, 1, 'Personal Access Token', '[]', 0, '2021-05-13 11:41:41', '2021-05-13 11:41:41', '2021-05-20 13:41:41'),
('e464b564b1818ae050d1802eec05f0c75b7af56978f99d32e22ed4e24dbd9ad1f2dd5be109246a60', 1, 1, 'Personal Access Token', '[]', 0, '2021-05-15 10:51:06', '2021-05-15 10:51:06', '2021-05-22 12:51:06'),
('e4f6fb9dfe4266f65821ce09ded9ec32db174252f373551664140ba74963997d0dcbc62b286c3d58', 1, 1, 'Personal Access Token', '[]', 0, '2021-06-07 05:39:49', '2021-06-07 05:39:49', '2021-06-14 07:39:49'),
('e56d56897420b7ff93f90b5e341765630be2b4ef1d89ba68d2f3f8ba5679e39acf310fed72ff982f', 1, 1, 'Personal Access Token', '[]', 0, '2021-05-25 09:04:27', '2021-05-25 09:04:27', '2021-06-01 11:04:27'),
('e67bf8f88320fab4181f99359f98d081449d81fac5393c0883bc9dbf49baed2b8bd1b7c47c37918d', 1, 1, 'Personal Access Token', '[]', 0, '2021-05-11 10:04:48', '2021-05-11 10:04:48', '2021-05-18 12:04:48'),
('e7e7909823da16eced84f39f80d59c75d0092ac9ce202b3685688fbd1aa694b67270acb51683b9c5', 1, 1, 'Personal Access Token', '[]', 0, '2021-06-03 10:31:52', '2021-06-03 10:31:52', '2021-06-10 12:31:52'),
('e8b5dd053a69de6d5032034b07b79773261169c024118897f569af6cd338db07b2cfd3ae388e7951', 1, 1, 'Personal Access Token', '[]', 0, '2021-04-27 09:04:13', '2021-04-27 09:04:13', '2021-05-04 11:04:13'),
('eafced112c512e0941066d4d965ee9971c7fb04e47d6e265e5853d096f62f811fb0755fe660aea0d', 1, 1, 'Personal Access Token', '[]', 0, '2021-04-15 20:32:57', '2021-04-15 20:32:57', '2021-04-22 22:32:57'),
('eafe9a2c92d51f05f52ff6845b56636997e693acafca2c9cec955b8c29943d949f7c5000dbca4378', 1, 1, 'Personal Access Token', '[]', 0, '2021-05-29 08:19:05', '2021-05-29 08:19:05', '2021-06-05 10:19:05'),
('eb52d833e8733cad306f268b5a62cdbb54242f95949cde1c684b6afdf2e20ce8af794fd4ed0324c6', 1, 1, 'Personal Access Token', '[]', 0, '2021-06-03 10:36:39', '2021-06-03 10:36:39', '2021-06-10 12:36:39'),
('ec7404da678dbab2ee684579fbd23a1d0696aaf65b9ec07ea9b0d7a8d99bd6049df3089494b5b989', 1, 1, 'Personal Access Token', '[]', 0, '2021-05-04 09:19:47', '2021-05-04 09:19:47', '2021-05-11 11:19:47'),
('edad63ffd242001791677c789f4c0b5dfd7b64ad75b7e4d42bba3dd1107463d400ee89a2069cb572', 1, 1, 'Personal Access Token', '[]', 0, '2021-05-11 11:02:23', '2021-05-11 11:02:23', '2021-05-18 13:02:23'),
('edb060d55dd68556aec9b9b80f38c3dd5d194c05f6ae8e0b9f0ebd5238f5098249a157d9a0b1afb1', 1, 1, 'Personal Access Token', '[]', 0, '2021-05-18 10:01:17', '2021-05-18 10:01:17', '2021-05-25 12:01:17'),
('eddc323ea0d41625a5bfd925bcc8616972fb2dfdac76e87562986c9b868310d8b7d18a18e682922b', 1, 1, 'Personal Access Token', '[]', 0, '2021-05-13 19:18:22', '2021-05-13 19:18:22', '2021-05-20 21:18:22'),
('eeadecf49cd518294d6e65cdcd3291994b89cdb358456282da7a39488840004f1a52cd6a750e1035', 1, 1, 'Personal Access Token', '[]', 0, '2021-05-18 10:29:01', '2021-05-18 10:29:01', '2021-05-25 12:29:01'),
('f37f3514b7765796a276047e36c05cced2011420f8af056a239378e31156dd0163b2e809303ec574', 1, 1, 'Personal Access Token', '[]', 0, '2021-05-17 06:07:40', '2021-05-17 06:07:40', '2021-05-24 08:07:40'),
('f3808b75438f65ad838a9bde283e813d386fa6957ce86dc53c177f1b013d1c3197d7746e58baeb44', 1, 1, 'Personal Access Token', '[]', 0, '2021-05-17 05:16:27', '2021-05-17 05:16:27', '2021-05-24 07:16:27'),
('f3e1108994e581707f9a11cfd643386b0c492bc988ebb0b1c449cde75bb77a52bda9fe94f5c3cab1', 1, 1, 'Personal Access Token', '[]', 0, '2021-04-27 08:58:00', '2021-04-27 08:58:00', '2021-05-04 10:58:00'),
('f50bd7bf6c7f2064f80f451e8a6d8df2454c9d73230ba0ab97df974362fbec61594e8b885cc62782', 1, 1, 'Personal Access Token', '[]', 0, '2021-05-31 06:40:58', '2021-05-31 06:40:58', '2021-06-07 08:40:58'),
('f6b83d475b72309ee1bb566bfc3ed84d4c3b07369f162a724b18f1d1f5216f9e1f119ccb387c8959', 1, 1, 'Personal Access Token', '[]', 0, '2021-05-25 10:27:55', '2021-05-25 10:27:55', '2021-06-01 12:27:55'),
('f777aa2ceabdf2cb0c74fb6db8b004bd84b500e6914fc08d8233a4349c930489c0a9ddeb8b1bd7f0', 1, 1, 'Personal Access Token', '[]', 0, '2021-06-03 10:31:41', '2021-06-03 10:31:41', '2021-06-10 12:31:41'),
('f7f79a9b7c4e2a762d4bd48741aef916f053f0ce1db5c76268741c81d57b811456a6988facb469e6', 1, 1, 'Personal Access Token', '[]', 0, '2021-04-13 09:56:59', '2021-04-13 09:56:59', '2021-04-20 11:56:59'),
('f7f87082f5e54b8040f16bab4a84f3b0a00ffc2990079b5d41011f9e6f602d588357479ce91aabc1', 1, 1, 'Personal Access Token', '[]', 0, '2021-05-29 08:17:30', '2021-05-29 08:17:30', '2021-06-05 10:17:30'),
('f8203fde629111ec0a83958566d74a4daaec562ac391a08fa1a2f6c7603a87420de458ad758a0de4', 1, 1, 'Personal Access Token', '[]', 0, '2021-06-03 20:40:01', '2021-06-03 20:40:01', '2021-06-10 22:40:01'),
('f953b1a68ae433b548e8d70212071a2d740a2e23040b572e9d4649bc2bb4aea855b707b1c9d3ff96', 1, 1, 'Personal Access Token', '[]', 0, '2021-06-07 17:59:01', '2021-06-07 17:59:01', '2021-06-14 19:59:01'),
('fa2d51f3a137473e9cae18dae1e841d47ed4575c78f2a511e8a99a768d5dbeb436e487fc9d245556', 1, 1, 'Personal Access Token', '[]', 0, '2021-05-29 08:16:43', '2021-05-29 08:16:43', '2021-06-05 10:16:43'),
('faaf5394f69a3b0dad0856be78764948e98b16fa24d2cf4b2593e3be0864bfca62a4100d1986606f', 1, 1, 'Personal Access Token', '[]', 0, '2021-05-16 13:01:09', '2021-05-16 13:01:09', '2021-05-23 15:01:09'),
('fb9d0035995bce4325d35e603bc3ae0c085c251c86161a9c87138d9d354b60671173b485a984530f', 1, 1, 'Personal Access Token', '[]', 0, '2021-04-27 09:01:52', '2021-04-27 09:01:52', '2021-05-04 11:01:52'),
('fc09fd50082f0dfe8de7d173055bb794a935097674e3a3d5fff3b6c3995b8eb396956bb91fe89a57', 1, 1, 'Personal Access Token', '[]', 0, '2021-05-17 05:19:43', '2021-05-17 05:19:43', '2021-05-24 07:19:43'),
('fc4579d68a6c37d0a7a731b4264b0a9cdf419517137b1938de4cc2a7aafc6062a2f6c249b9403297', 1, 1, 'Personal Access Token', '[]', 0, '2021-06-07 05:16:07', '2021-06-07 05:16:07', '2021-06-14 07:16:07'),
('fc6f97c13e9b48f0663ff52d5e1a3616334ef9975fde64fb5ce633f5abf9bb4db9c59dcab3deb6d1', 2, 1, 'Personal Access Token', '[]', 0, '2021-04-26 05:56:55', '2021-04-26 05:56:55', '2021-05-03 07:56:55'),
('fd0a631a32da4ff0fcd82a6262d4ff120c866a2bc261569ab5d06fabe0ce2e3058c3b86090dafa83', 1, 1, 'Personal Access Token', '[]', 0, '2021-05-15 07:20:32', '2021-05-15 07:20:32', '2021-05-22 09:20:32'),
('fe321aacca51632a56dbd984c571511423501658d7a19a169efe5287a21132a8bd74e516b34d51ee', 1, 1, 'Personal Access Token', '[]', 0, '2021-05-31 06:36:33', '2021-05-31 06:36:33', '2021-06-07 08:36:33'),
('fe93cc071842fb70f7813e14a4099e9efdf78a333194c4d13064d9384e9b1feb6727618e87c2bb97', 1, 1, 'Personal Access Token', '[]', 0, '2021-05-25 09:01:42', '2021-05-25 09:01:42', '2021-06-01 11:01:42'),
('ff0ceaa7f595568e4079f900885983899524fbd8c8630dbd5c76aaa051db502f20c3c6b8ecd9587b', 1, 1, 'Personal Access Token', '[]', 0, '2021-05-17 06:22:21', '2021-05-17 06:22:21', '2021-05-24 08:22:21'),
('ff67021ae36399987f158b54cc074cc1be47cbcf931671ec572ba50ced11b06b9dc48182df8c6301', 1, 1, 'Personal Access Token', '[]', 0, '2021-06-03 16:28:59', '2021-06-03 16:28:59', '2021-06-10 18:28:59');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'TSJKQPiSvIkQxdoYvj4Uz7w8uNpdIuaSyE1WMKck', NULL, 'http://localhost', 1, 0, 0, '2021-04-06 16:20:55', '2021-04-06 16:20:55'),
(2, NULL, 'Laravel Password Grant Client', 'tWbFjZhYwNtXC7j9baGyZiNCSqEqD5IchCWVmZRO', 'users', 'http://localhost', 0, 1, 0, '2021-04-06 16:20:55', '2021-04-06 16:20:55');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2021-04-06 16:20:55', '2021-04-06 16:20:55');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `plataformas`
--

CREATE TABLE `plataformas` (
  `id` int(11) NOT NULL,
  `nombre_plataforma` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `imagen` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `plataformas`
--

INSERT INTO `plataformas` (`id`, `nombre_plataforma`, `imagen`, `descripcion`, `created_at`, `updated_at`) VALUES
(1, 'epic', 'epic.gif', 'plataforma 1 en ventas', NULL, NULL),
(2, 'steam', 'steam.gif', 'plataforma numero 2', NULL, NULL),
(3, 'batelnet', 'batelnet.gif', 'plataforma de juegos de pago mensual', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `apellidos` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rol` enum('invitado','usuario','gestor','administrador') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'invitado',
  `image` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `apellidos`, `name`, `email`, `password`, `rol`, `image`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'rivas', 'niko', 'niko@hotmail.com', '$2y$10$8EaaKTfLLNIUS2VLZeU9Oe/xZm3/wqPnyBuDLv24giOOkNxiQH4NG', 'administrador', 'aklsjdflkfjaklsd', NULL, '2021-04-06 16:30:38', '2021-04-06 16:30:38'),
(2, 'rivas', 'niko2', 'niko2@hotmail.com', '$2y$10$E3RfhuTzsQoCoA1Cq9MLie058sUCPNbnuc5pKfQJ9EO8.EM4nE1jS', 'invitado', 'aklsjdflkfjaklsd', NULL, '2021-04-06 16:31:17', '2021-04-06 16:31:17'),
(5, 'pepe', 'pepe', 'pepe@hotmail.com', '$2y$10$xXZcO1VroNyJrN7iQkzSCeKE76zvZNDW/bOReBY/U6nTkRW5/aK3K', 'invitado', 'jpg', NULL, '2021-04-15 20:03:04', '2021-04-15 20:03:04'),
(6, 'pepe1', 'pepe1', 'pepe1@hotmail.com', '$2y$10$AjUOyDMvnasZB8TSgjQvc.GSZcynf6ri3ODjYvkkUCMnGhNSFfsCm', 'invitado', 'jpg', NULL, '2021-04-18 17:47:02', '2021-04-18 17:47:02'),
(10, 'riascos', 'niko', 'niko@hotmail.com', '$2y$10$C1a1qux1F09bxmJFb9F1nuGhyeti28aJjAMthQJGMo4bcO1JSJJnK', 'administrador', 'jpg', NULL, '2021-04-12 11:06:01', '2021-04-12 11:06:01');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`Codigo`),
  ADD KEY `clientes_userid_foreign` (`userid`);

--
-- Indices de la tabla `desarrolladoras`
--
ALTER TABLE `desarrolladoras`
  ADD PRIMARY KEY (`desarrolladoraid`);

--
-- Indices de la tabla `juegos`
--
ALTER TABLE `juegos`
  ADD PRIMARY KEY (`juegoid`),
  ADD KEY `juegos_plataformaid_foreign` (`plataformaid`),
  ADD KEY `juegos_desarrolladoraid_foreign` (`desarrolladoraid`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indices de la tabla `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indices de la tabla `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indices de la tabla `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indices de la tabla `plataformas`
--
ALTER TABLE `plataformas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD CONSTRAINT `clientes_userid_foreign` FOREIGN KEY (`userid`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `juegos`
--
ALTER TABLE `juegos`
  ADD CONSTRAINT `juegos_desarrolladoraid_foreign` FOREIGN KEY (`desarrolladoraid`) REFERENCES `desarrolladoras` (`desarrolladoraid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `juegos_plataformaid_foreign` FOREIGN KEY (`plataformaid`) REFERENCES `plataformas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
