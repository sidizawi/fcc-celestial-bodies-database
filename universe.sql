--
-- PostgreSQL database dump
--

-- Dumped from database version 14.8 (Ubuntu 14.8-0ubuntu0.22.04.1)
-- Dumped by pg_dump version 14.8 (Ubuntu 14.8-0ubuntu0.22.04.1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    name character varying(40) NOT NULL,
    galaxy_id integer NOT NULL,
    galaxy_shape_id integer,
    description text,
    age numeric(4,2),
    has_supermassive_black_hole boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: galaxy_shape; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy_shape (
    galaxy_shape_id integer NOT NULL,
    name character varying(40) NOT NULL,
    percentage integer
);


ALTER TABLE public.galaxy_shape OWNER TO freecodecamp;

--
-- Name: galaxy_shape_galaxy_shape_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_shape_galaxy_shape_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_shape_galaxy_shape_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_shape_galaxy_shape_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_shape_galaxy_shape_id_seq OWNED BY public.galaxy_shape.galaxy_shape_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    name character varying(40) NOT NULL,
    moon_id integer NOT NULL,
    planet_id integer,
    diameter integer,
    description text
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    name character varying(40) NOT NULL,
    planet_id integer NOT NULL,
    star_id integer,
    diameter integer,
    rotation_speed integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    name character varying(40) NOT NULL,
    star_id integer NOT NULL,
    galaxy_id integer,
    description text,
    binary_system boolean
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: galaxy_shape galaxy_shape_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_shape ALTER COLUMN galaxy_shape_id SET DEFAULT nextval('public.galaxy_shape_galaxy_shape_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('Milky Way', 1, 3, 'The Milky Way is the galaxy that includes the Solar System, with the name describing the galaxy''s appearance from Earth', 13.61, true);
INSERT INTO public.galaxy VALUES ('Andromeda Galaxy', 2, 3, 'The Andromeda Galaxy is a barred spiral galaxy and is the nearest major galaxy to the Milky Way, where the Solar System resides.', 10.01, true);
INSERT INTO public.galaxy VALUES ('Messier 81', 3, 3, 'Messier 81 is a grand design spiral galaxy about 12 million light-years away in the constellation Ursa Major.', 13.31, true);
INSERT INTO public.galaxy VALUES ('Messier 82', 4, 1, 'M82 Galaxy Messier 82 is a starburst galaxy approximately 12 million light-years away in the constellation Ursa Major.', 13.30, true);
INSERT INTO public.galaxy VALUES ('Large Magellanic Cloud', 5, 3, 'The Large Magellanic Cloud is a satellite galaxy of the Milky Way.', 1.10, true);
INSERT INTO public.galaxy VALUES ('Centaurus A', 6, 1, 'Centaurus A is a galaxy in the constellation of Centaurus. It was discovered in 1826 by Scottish astronomer James Dunlop from his home in Parramatta, in New South Wales, Australia.', 13.27, true);


--
-- Data for Name: galaxy_shape; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy_shape VALUES (1, 'elliptical', 10);
INSERT INTO public.galaxy_shape VALUES (2, 'lenticular', 20);
INSERT INTO public.galaxy_shape VALUES (3, 'spiral', 60);
INSERT INTO public.galaxy_shape VALUES (4, 'irregular', 10);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('Moon', 1, 1, 3475, 'The Moon is Earth''s only natural satellite.');
INSERT INTO public.moon VALUES ('Europa', 2, 6, 3122, 'Europa, or Jupiter II, is the smallest of the four Galilean moons orbiting Jupiter, and the sixth-closest to the planet of all the 95 known moons of Jupiter. ');
INSERT INTO public.moon VALUES ('Ganymede', 3, 6, 5268, 'Ganymede, or Jupiter III, is the largest and most massive natural satellite of Jupiter as well as in the Solar System, being a planetary-mass moon.');
INSERT INTO public.moon VALUES ('Io', 4, 6, 3643, 'Io, or Jupiter I, is the innermost and third-largest of the four Galilean moons of the planet Jupiter.');
INSERT INTO public.moon VALUES ('Callisto', 5, 6, 4821, 'Callisto, or Jupiter IV, is the second-largest moon of Jupiter, after Ganymede. In the Solar System it is the third-largest moon after Ganymede and Saturn''s largest moon Titan, and as large as the smallest planet Mercury, though only about a third as massive.');
INSERT INTO public.moon VALUES ('Thebe', 6, 6, 99, 'Thebe, also known as Jupiter XIV, is the fourth of Jupiter''s moons by distance from the planet.');
INSERT INTO public.moon VALUES ('Himalia', 7, 6, 140, 'Himalia, or Jupiter VI, is the largest irregular satellite of Jupiter.');
INSERT INTO public.moon VALUES ('Andrastea', 8, 6, 16, 'Adrastea, also known as Jupiter XV, is the second by distance, and the smallest of the four inner moons of Jupiter.');
INSERT INTO public.moon VALUES ('Amalthea', 9, 6, 167, 'Amalthea is a moon of Jupiter. It has the third closest orbit around Jupiter among known moons and was the fifth moon of Jupiter to be discovered, so it is also known as Jupiter V.');
INSERT INTO public.moon VALUES ('Titan', 10, 7, 5150, 'Titan is the largest moon of Saturn, the second-largest in the Solar System and larger than any of the dwarf planets of the Solar System.');
INSERT INTO public.moon VALUES ('Enceladus', 11, 7, 500, 'Enceladus, second nearest of the major regular moons of Saturn and the brightest of all its moons.');
INSERT INTO public.moon VALUES ('Mimas', 12, 7, 396, 'Mimas, also designated Saturn I, is a natural satellite of Saturn that has the second largest crater on any moon in the Solar System, named Herschel.');
INSERT INTO public.moon VALUES ('Dione', 13, 7, 1123, 'Dione, also designated Saturn IV, is the fourth-largest moon of Saturn.');
INSERT INTO public.moon VALUES ('Lapetus', 14, 7, 1469, 'Iapetus is a moon of Saturn. It is the third-largest moon of Saturn and the eleventh-largest in the Solar System.');
INSERT INTO public.moon VALUES ('Tethys', 15, 7, 1062, 'Tethys, or Saturn III, is a mid-sized moon of Saturn.');
INSERT INTO public.moon VALUES ('Hyperion', 16, 7, 270, 'Hyperion, also known as Saturn VII, is a moon of Saturn. It is distinguished by its irregular shape, its chaotic rotation, and its unexplained sponge-like appearance.');
INSERT INTO public.moon VALUES ('Epimetheus', 17, 7, 116, 'Epimetheus is an inner satellite of Saturn. It is also known as Saturn XI.');
INSERT INTO public.moon VALUES ('Titania', 18, 8, 1578, 'Titania, also designated Uranus III, is the largest of the moons of Uranus and the eighth largest moon in the Solar System.');
INSERT INTO public.moon VALUES ('Oberon', 19, 8, 1523, 'Oberon, also designated Uranus IV, is the outermost major moon of the planet Uranus.');
INSERT INTO public.moon VALUES ('Miranda', 20, 8, 472, 'Miranda, also designated Uranus V, is the smallest and innermost of Uranus''s five round satellites.');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('Earth', 1, 1, 12742, 460);
INSERT INTO public.planet VALUES ('BD-17 63 b', 2, 6, 4879, 22300);
INSERT INTO public.planet VALUES ('Mercury', 3, 1, 4879, 3026);
INSERT INTO public.planet VALUES ('Venus', 4, 1, 12104, 2);
INSERT INTO public.planet VALUES ('Mars', 5, 1, 6779, 241);
INSERT INTO public.planet VALUES ('Jupiter', 6, 1, 139820, 12600);
INSERT INTO public.planet VALUES ('Saturn', 7, 1, 116460, 36840000);
INSERT INTO public.planet VALUES ('Uranus', 8, 1, 50724, 2590);
INSERT INTO public.planet VALUES ('Neptune', 9, 1, 49244, 9719000);
INSERT INTO public.planet VALUES ('HD 159868 b', 11, 8, NULL, 2100);
INSERT INTO public.planet VALUES ('HD 145377 b', 10, 7, NULL, 3850);
INSERT INTO public.planet VALUES ('14 Andromedae b', 12, 5, NULL, 1630);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('Sun', 1, 1, 'The Sun is the star at the center of the Solar System. It is a nearly perfect ball of hot plasma, heated to incandescence by nuclear fusion reactions in its core.', false);
INSERT INTO public.star VALUES ('Sirius', 3, 1, 'Sirius is the brightest star in the night sky.', true);
INSERT INTO public.star VALUES ('Vega', 4, 1, 'Vega is the brightest star in the northern constellation of Lyra.', false);
INSERT INTO public.star VALUES ('BD-17 63', 6, 1, 'BD−17 63 is a low-mass K type star in the southern constellation Cetus.', false);
INSERT INTO public.star VALUES ('HD 145377', 7, 1, 'HD 145377 is a star in the southern constellation Scorpius.', false);
INSERT INTO public.star VALUES ('HD 159868', 8, 1, 'HD 159868 is a star in the southern constellation of Scorpius, positioned about 0.3° to the ESE of the bright star Theta Scorpii.', false);
INSERT INTO public.star VALUES ('14 Andromedae', 5, 2, '14 Andromedae, abbreviated 14 And, also named Veritate, is a single, orange-hued giant star situated approximately 247 light-years away in the northern constellation of Andromeda.', true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: galaxy_shape_galaxy_shape_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_shape_galaxy_shape_id_seq', 4, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 8, true);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy_shape galaxy_shape_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_shape
    ADD CONSTRAINT galaxy_shape_name_key UNIQUE (name);


--
-- Name: galaxy_shape galaxy_shape_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_shape
    ADD CONSTRAINT galaxy_shape_pkey PRIMARY KEY (galaxy_shape_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: galaxy galaxy_galaxy_shape_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_shape_id_fkey FOREIGN KEY (galaxy_shape_id) REFERENCES public.galaxy_shape(galaxy_shape_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

