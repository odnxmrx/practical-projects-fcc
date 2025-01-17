--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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

--
-- Name: comet_comet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.comet_comet_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.comet_comet_id_seq OWNER TO freecodecamp;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: comet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.comet (
    comet_id integer DEFAULT nextval('public.comet_comet_id_seq'::regclass) NOT NULL,
    name character varying(50) NOT NULL,
    description text,
    mass integer NOT NULL,
    density integer,
    isexplored boolean
);


ALTER TABLE public.comet OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass) NOT NULL,
    name character varying(50) NOT NULL,
    description text,
    mass double precision NOT NULL,
    density integer,
    age numeric
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer DEFAULT nextval('public.moon_moon_id_seq'::regclass) NOT NULL,
    name character varying(50) NOT NULL,
    description text,
    mass integer NOT NULL,
    density integer,
    rotation numeric,
    isexplored boolean,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer DEFAULT nextval('public.planet_planet_id_seq'::regclass) NOT NULL,
    name character varying(50) NOT NULL,
    description text,
    mass integer NOT NULL,
    density integer,
    rotation numeric,
    isexplored boolean,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer DEFAULT nextval('public.star_star_id_seq'::regclass) NOT NULL,
    name character varying(50) NOT NULL,
    description text,
    mass integer NOT NULL,
    density integer,
    rotation numeric,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: comet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.comet VALUES (2, 'Halley', 'Short-period comet visible every 75 years', 22, 600, true);
INSERT INTO public.comet VALUES (3, 'Hale-Bopp', 'Long-period comet discovered in 1995', 33, 500, true);
INSERT INTO public.comet VALUES (4, 'Swift-Tuttle', 'Comet responsible for Perseid meteor shower', 20, 550, true);
INSERT INTO public.comet VALUES (5, 'Shoemaker-Levy 9', 'Comet that collided with Jupiter', 15, 700, false);
INSERT INTO public.comet VALUES (6, 'Tempel 1', 'Target of NASA’s Deep Impact mission', 75, 800, false);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Spiral galaxy containing our Solar System', 1500000000000, 6, 13.51);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'Spiral galaxy closest to the Milky Way', 1200000000000, 5, 10.00);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 'Small spiral galaxy in the Local Group', 580000000000, 4, 8.73);
INSERT INTO public.galaxy VALUES (4, 'Sombrero', 'Spiral galaxy with a bright central bulge', 850000000000, 6, 12.00);
INSERT INTO public.galaxy VALUES (5, 'Wirlpool', 'Famous interacting spiral galaxy', 1100000000000, 5, 11.23);
INSERT INTO public.galaxy VALUES (6, 'Messier 87', 'Giant elliptical galaxy in Virgo Cluster', 3000000000000, 9, 14.00);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (2, 'Moon', 'Earth''s natural satellite', 73, 3344, 27.3, true, 3);
INSERT INTO public.moon VALUES (3, 'Phobos', 'Moon of Mars', 10, 1860, 0.3, true, 4);
INSERT INTO public.moon VALUES (4, 'Deimos', 'Smaller moon of Mars', 14, 2250, 1.3, true, 4);
INSERT INTO public.moon VALUES (5, 'Io', 'Volcanically active moon of Jupiter', 89, 3520, 1.8, true, 7);
INSERT INTO public.moon VALUES (6, 'Europa', 'Icy moon of Jupiter', 47, 3010, 3.6, true, 7);
INSERT INTO public.moon VALUES (7, 'Ganymede', 'Largest moon in Solar System', 14, 1940, 7.1, true, 7);
INSERT INTO public.moon VALUES (8, 'Callisto', 'Outer moon of Jupiter', 10, 1834, 16.7, true, 7);
INSERT INTO public.moon VALUES (9, 'Titan', 'Largest moon of Saturn', 13, 1880, 15.9, true, 8);
INSERT INTO public.moon VALUES (10, 'Enceladus', 'Moon with water geysers', 10, 1600, 1.4, true, 8);
INSERT INTO public.moon VALUES (11, 'Mimas', 'Small moon of Saturn', 37, 1150, 0.9, true, 8);
INSERT INTO public.moon VALUES (12, 'Ariel', 'Moon of Uranus', 12, 1660, 2.5, true, 9);
INSERT INTO public.moon VALUES (13, 'Miranda', 'Small moon of Uranus', 65, 1200, 1.4, true, 9);
INSERT INTO public.moon VALUES (14, 'Triton', 'Largest moon of Neptune', 21, 2060, -5.8, true, 10);
INSERT INTO public.moon VALUES (15, 'Proteus', 'Moon of Neptune', 44, 1630, 1.1, true, 10);
INSERT INTO public.moon VALUES (16, 'Oberon', 'Moon of Uranus', 30, 1720, 13.5, true, 9);
INSERT INTO public.moon VALUES (17, 'Rhea', 'Moon of Saturn', 23, 1230, 4.5, true, 8);
INSERT INTO public.moon VALUES (18, 'Iapetus', 'Saturn’s yin-yang moon', 18, 1080, 79.3, true, 8);
INSERT INTO public.moon VALUES (20, 'Charon', 'Moon of Pluto', 15, 1700, 6.4, true, 6);
INSERT INTO public.moon VALUES (21, 'Hydra', 'Small moon of Pluto', 48, 900, 38.2, true, 6);
INSERT INTO public.moon VALUES (22, 'Nix', 'Moon of Pluto', 19, 1100, 24.9, true, 6);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (3, 'Earth', 'Our home planet', 6, 5514, 24.0, true, 2);
INSERT INTO public.planet VALUES (4, 'Mars', 'The red planet', 6, 3933, 24.6, true, 2);
INSERT INTO public.planet VALUES (6, 'Venus', 'Second planet from the Sun', 5, 5243, 243.0, true, 2);
INSERT INTO public.planet VALUES (7, 'Mercury', 'Closest to the Sun', 3, 5427, 58.6, true, 2);
INSERT INTO public.planet VALUES (8, 'Jupiter', 'Largest planet in the Solar System', 2, 1326, 9.9, true, 2);
INSERT INTO public.planet VALUES (9, 'Saturn', 'Known for its rings', 6, 687, 10.7, true, 2);
INSERT INTO public.planet VALUES (10, 'Uranus', 'Ice giant with methane clouds', 9, 1271, 17.2, true, 2);
INSERT INTO public.planet VALUES (11, 'Neptune', 'Farthest known planet in Solar System', 1, 1638, 16.1, true, 2);
INSERT INTO public.planet VALUES (12, 'Kepler-22b', 'Exoplanet in the habitable zone', 2, 2300, 26.0, true, 2);
INSERT INTO public.planet VALUES (14, 'TRAPPIST-1e', 'Earth-like exoplanet', 6, 4500, 36.0, false, 4);
INSERT INTO public.planet VALUES (15, 'HD 209458b', 'First discovered transiting exoplanet', 3, 1500, 20.0, false, 4);
INSERT INTO public.planet VALUES (13, 'Gliese 581g', 'Potentially habitable exoplanet', 4, 3000, 25.0, true, 3);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (2, 'Sun', 'Star of our Solar System', 2, 1, 25.4, 1);
INSERT INTO public.star VALUES (3, 'Proxima Centauri', 'Nearest star to the Sun', 2, 7, 30.2, 2);
INSERT INTO public.star VALUES (4, 'Betelgeuse', 'Red supergiant in Orion', 2, 6, 8.4, 1);
INSERT INTO public.star VALUES (5, 'Rigel', 'Blue supergiant in Orion', 4, 1, 9.7, 1);
INSERT INTO public.star VALUES (6, 'Sirius', 'Brightest star in the night sky', 2, 4, 20.4, 2);
INSERT INTO public.star VALUES (7, 'Vega', 'Star in the Lyra constellation', 2, 6, 21.1, 2);


--
-- Name: comet_comet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.comet_comet_id_seq', 6, true);


--
-- Name: galaxy_galaxy_id; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 22, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 15, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


--
-- Name: comet comet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet
    ADD CONSTRAINT comet_name_key UNIQUE (name);


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

