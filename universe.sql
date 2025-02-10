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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: celestial_bodies; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.celestial_bodies (
    celestial_bodies_id integer NOT NULL,
    name character varying(255) NOT NULL,
    celestial_body_description text,
    celestial_body_speed integer NOT NULL,
    celestial_body_distance integer,
    celestial_body_mass numeric,
    is_habitable boolean,
    is_explored boolean
);


ALTER TABLE public.celestial_bodies OWNER TO freecodecamp;

--
-- Name: celestial_bodies_celestial_bodies_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.celestial_bodies_celestial_bodies_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.celestial_bodies_celestial_bodies_id_seq OWNER TO freecodecamp;

--
-- Name: celestial_bodies_celestial_bodies_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.celestial_bodies_celestial_bodies_id_seq OWNED BY public.celestial_bodies.celestial_bodies_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(255) NOT NULL,
    galaxy_description text,
    galaxy_type integer NOT NULL,
    galaxy_size integer,
    galaxy_mass numeric,
    is_active boolean,
    is_visited boolean
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
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(255) NOT NULL,
    moon_description text,
    moon_diameter integer NOT NULL,
    moon_orbit_period integer,
    moon_mass numeric,
    is_spherical boolean,
    has_atmosphere boolean,
    planet_id integer
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
    planet_id integer NOT NULL,
    name character varying(255) NOT NULL,
    planet_description text,
    planet_radius integer NOT NULL,
    planet_orbit_period integer,
    planet_mass numeric,
    has_rings boolean,
    is_earth_like boolean,
    star_id integer
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
    star_id integer NOT NULL,
    name character varying(255) NOT NULL,
    star_description text,
    star_age integer NOT NULL,
    star_luminosity integer,
    star_temperature numeric,
    is_visible boolean,
    is_hospitable boolean,
    galaxy_id integer
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
-- Name: celestial_bodies celestial_bodies_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.celestial_bodies ALTER COLUMN celestial_bodies_id SET DEFAULT nextval('public.celestial_bodies_celestial_bodies_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


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
-- Data for Name: celestial_bodies; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.celestial_bodies VALUES (1, 'Earth', 'The third planet from the Sun and the only known planet to support life', 2978, 1496000, 5.972, true, true);
INSERT INTO public.celestial_bodies VALUES (2, 'Mars', 'The fourth planet from the Sun, known for its red surface and possibility of past life', 2400, 2279000, 0.641, false, true);
INSERT INTO public.celestial_bodies VALUES (3, 'Jupiter', 'The largest planet in the solar system, known for its Great Red Spot and strong magnetic field', 1307, 7785000, 1898.0, false, true);
INSERT INTO public.celestial_bodies VALUES (4, 'Venus', 'The second planet from the Sun, known for its dense atmosphere and extreme surface temperatures', 3502, 1082000, 4.867, false, true);
INSERT INTO public.celestial_bodies VALUES (5, 'Saturn', 'The sixth planet from the Sun, famous for its prominent ring system', 960, 14270000, 568.0, false, false);
INSERT INTO public.celestial_bodies VALUES (6, 'Pluto', 'Once considered the ninth planet, now classified as a dwarf planet', 470, 59060000, 0.013, false, false);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'A barred spiral galaxy containing the Solar System', 1, 100000, 1500000000000, true, true);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'A spiral galaxy approximately 2.537 million light-years from Earth', 1, 220000, 1000000000000, true, false);
INSERT INTO public.galaxy VALUES (3, 'Sombrero', 'A spiral galaxy with a prominent central bulge and a large dust lane', 1, 50000, 120000000000, true, true);
INSERT INTO public.galaxy VALUES (4, 'Whirlpool', 'A spiral galaxy in the constellation Canes Venatici', 1, 40000, 130000000000, false, false);
INSERT INTO public.galaxy VALUES (5, 'Triangulum', 'A spiral galaxy, the third-largest member of the Local Group of galaxies', 1, 80000, 750000000000, true, true);
INSERT INTO public.galaxy VALUES (6, 'Centaurus A', 'An elliptical galaxy in the Centaurus constellation, one of the closest to the Milky Way', 2, 120000, 560000000000, true, false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon 1', 'The first moon in the system', 6, 2, 0.5, true, false, 1);
INSERT INTO public.moon VALUES (2, 'Moon 2', 'A smaller moon with an elliptical orbit', 5, 4, 0.4, false, true, 1);
INSERT INTO public.moon VALUES (3, 'Moon 3', 'A large moon with a rocky surface', 8, 5, 0.8, true, false, 2);
INSERT INTO public.moon VALUES (4, 'Moon 4', 'The icy moon orbiting far from the planet', 7, 3, 0.6, true, true, 2);
INSERT INTO public.moon VALUES (5, 'Moon 5', 'A moon with a stable orbit', 6, 6, 1.0, true, false, 3);
INSERT INTO public.moon VALUES (6, 'Moon 6', 'A moon with a very thin atmosphere', 4, 7, 0.7, false, true, 3);
INSERT INTO public.moon VALUES (7, 'Moon 7', 'The largest moon in the system', 8, 8, 1.2, true, false, 4);
INSERT INTO public.moon VALUES (8, 'Moon 8', 'A moon with irregular craters', 3, 3, 0.9, false, true, 4);
INSERT INTO public.moon VALUES (9, 'Moon 9', 'A moon with volcanic activity', 5, 6, 0.8, true, true, 5);
INSERT INTO public.moon VALUES (10, 'Moon 10', 'A moon with an unknown surface composition', 6, 7, 1.1, true, false, 5);
INSERT INTO public.moon VALUES (11, 'Moon 11', 'A small but stable moon', 4, 4, 0.5, true, true, 6);
INSERT INTO public.moon VALUES (12, 'Moon 12', 'A moon with a magnetic field', 7, 5, 0.6, false, true, 6);
INSERT INTO public.moon VALUES (13, 'Moon 13', 'A newly discovered moon with irregular shape', 6, 3, 0.7, true, false, 1);
INSERT INTO public.moon VALUES (14, 'Moon 14', 'A volcanic moon with many craters', 7, 5, 0.8, true, true, 2);
INSERT INTO public.moon VALUES (15, 'Moon 15', 'A small moon with a thick atmosphere', 5, 4, 0.6, false, true, 3);
INSERT INTO public.moon VALUES (16, 'Moon 16', 'A large moon with ice-covered surface', 8, 7, 1.0, true, false, 4);
INSERT INTO public.moon VALUES (17, 'Moon 17', 'A moon with a mysterious magnetic field', 4, 6, 0.9, true, true, 5);
INSERT INTO public.moon VALUES (18, 'Moon 18', 'A moon with strange geological features', 3, 2, 0.5, false, false, 6);
INSERT INTO public.moon VALUES (19, 'Moon 19', 'A moon with a highly elliptical orbit', 6, 8, 1.1, true, false, 1);
INSERT INTO public.moon VALUES (20, 'Moon 20', 'A moon with a unique light reflection', 7, 5, 0.8, true, true, 2);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 'The smallest planet in the Solar System, closest to the Sun', 2439, 88, 330110000000000000000000, false, false, 1);
INSERT INTO public.planet VALUES (2, 'Venus', 'The second planet from the Sun, similar in size to Earth', 6051, 225, 4867500000000000000000000, false, false, 1);
INSERT INTO public.planet VALUES (3, 'Earth', 'The third planet from the Sun, our home planet', 6371, 365, 5972400000000000000000000, false, true, 1);
INSERT INTO public.planet VALUES (4, 'Mars', 'The fourth planet from the Sun, known as the Red Planet', 3389, 687, 641710000000000000000000, false, false, 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', 'The largest planet in the Solar System', 69911, 4333, 1898200000000000000000000000, true, false, 2);
INSERT INTO public.planet VALUES (6, 'Saturn', 'A gas giant with prominent rings, sixth planet from the Sun', 58232, 10759, 568340000000000000000000000, true, false, 2);
INSERT INTO public.planet VALUES (7, 'Uranus', 'The seventh planet from the Sun, an ice giant with a tilted axis', 25362, 30687, 86810000000000000000000000, true, false, 2);
INSERT INTO public.planet VALUES (8, 'Neptune', 'The eighth and farthest planet from the Sun', 24622, 60190, 102413000000000000000000000, true, false, 2);
INSERT INTO public.planet VALUES (9, 'Alpha Centauri Bb', 'A planet in the Alpha Centauri star system, potentially Earth-like', 6400, 365, 12300000000000000000000, false, true, 3);
INSERT INTO public.planet VALUES (10, 'Kepler-452b', 'A super-Earth-like planet orbiting a star similar to the Sun', 10400, 385, 1600000000000000000000000, false, true, 3);
INSERT INTO public.planet VALUES (11, 'Proxima Centauri b', 'A planet orbiting the closest star to the Sun, within the habitable zone', 12000, 11, 480000000000000000000000, false, true, 3);
INSERT INTO public.planet VALUES (12, 'HD 209458 b', 'A hot Jupiter located in the constellation Pegasus', 86000, 4, 1380000000000000000000000000, true, false, 3);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 'The star at the center of the Solar System', 4600, 382800000, 5778, true, true, 1);
INSERT INTO public.star VALUES (2, 'Sirius', 'The brightest star in the night sky, located in the constellation Canis Major', 200, 25190000, 9940, true, true, 1);
INSERT INTO public.star VALUES (3, 'Alpha Centauri A', 'The closest star system to the Solar System', 5000, 15190000, 5790, true, false, 2);
INSERT INTO public.star VALUES (4, 'Betelgeuse', 'A red supergiant star in the constellation Orion', 100, 12000000, 3500, true, false, 3);
INSERT INTO public.star VALUES (5, 'Proxima Centauri', 'The closest known star to the Sun, part of the Alpha Centauri star system', 4500, 25000000, 3042, true, true, 2);
INSERT INTO public.star VALUES (6, 'Rigel', 'A blue supergiant star in the constellation Orion', 800, 12000000, 12000, true, true, 3);


--
-- Name: celestial_bodies_celestial_bodies_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.celestial_bodies_celestial_bodies_id_seq', 6, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


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

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: celestial_bodies celestial_bodies_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.celestial_bodies
    ADD CONSTRAINT celestial_bodies_name_key UNIQUE (name);


--
-- Name: celestial_bodies celestial_bodies_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.celestial_bodies
    ADD CONSTRAINT celestial_bodies_pkey PRIMARY KEY (celestial_bodies_id);


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

