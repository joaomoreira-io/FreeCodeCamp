--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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
-- Name: asteroid; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.asteroid (
    asteroid_id integer NOT NULL,
    name character varying(30) NOT NULL,
    size integer
);


ALTER TABLE public.asteroid OWNER TO freecodecamp;

--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.asteroid_asteroid_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.asteroid_asteroid_id_seq OWNER TO freecodecamp;

--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.asteroid_asteroid_id_seq OWNED BY public.asteroid.asteroid_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    number_studies integer,
    distance_ly integer,
    average_temp_c numeric(4,2),
    notes text,
    was_visited boolean,
    visit_possible boolean
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
    name character varying(30) NOT NULL,
    number_studies integer,
    distance_ly integer,
    average_temp_c numeric(4,2),
    notes text,
    was_visited boolean,
    visit_possible boolean,
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
    name character varying(30) NOT NULL,
    number_studies integer,
    distance_ly integer,
    average_temp_c numeric(4,2),
    notes text,
    was_visited boolean,
    visit_possible boolean,
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
    name character varying(30) NOT NULL,
    number_studies integer,
    distance_ly integer,
    average_temp_c numeric(4,2),
    notes text,
    was_visited boolean,
    visit_possible boolean,
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
-- Name: asteroid asteroid_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid ALTER COLUMN asteroid_id SET DEFAULT nextval('public.asteroid_asteroid_id_seq'::regclass);


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
-- Data for Name: asteroid; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.asteroid VALUES (1, 'Icarus', 2399);
INSERT INTO public.asteroid VALUES (2, 'Hermes', 8499);
INSERT INTO public.asteroid VALUES (3, 'Pallas', 49499);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', 3, 9342, 9.00, 'Nothing to Declare', false, true);
INSERT INTO public.galaxy VALUES (2, 'Black Eye', 16, 834, 30.54, 'Very dark here', false, false);
INSERT INTO public.galaxy VALUES (3, 'Butterfly', 4594, 50, 83.42, 'Butterfly', false, false);
INSERT INTO public.galaxy VALUES (4, 'A', 634, 18, 23.42, 'Fill', false, true);
INSERT INTO public.galaxy VALUES (5, 'B', 634, 18, 23.42, 'Fill', false, true);
INSERT INTO public.galaxy VALUES (6, 'C', 634, 18, 23.42, 'Fill', false, true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Titan', 24, 85, 36.73, 'The great titan?', false, false, NULL);
INSERT INTO public.moon VALUES (2, 'Europa', 45, 76, 68.73, '', false, false, NULL);
INSERT INTO public.moon VALUES (3, 'Calisto', 94, 4855, 41.73, 'Nothing to Declare', false, false, NULL);
INSERT INTO public.moon VALUES (4, 'B1', 634, 18, 23.42, 'Fill', false, true, NULL);
INSERT INTO public.moon VALUES (5, 'B2', 634, 18, 23.42, 'Fill', false, true, NULL);
INSERT INTO public.moon VALUES (6, 'B3', 634, 18, 23.42, 'Fill', false, true, NULL);
INSERT INTO public.moon VALUES (7, 'B4', 634, 18, 23.42, 'Fill', false, true, NULL);
INSERT INTO public.moon VALUES (8, 'B5', 634, 18, 23.42, 'Fill', false, true, NULL);
INSERT INTO public.moon VALUES (9, 'B6', 634, 18, 23.42, 'Fill', false, true, NULL);
INSERT INTO public.moon VALUES (10, 'B7', 634, 18, 23.42, 'Fill', false, true, NULL);
INSERT INTO public.moon VALUES (11, 'B8', 634, 18, 23.42, 'Fill', false, true, NULL);
INSERT INTO public.moon VALUES (12, 'B9', 634, 18, 23.42, 'Fill', false, true, NULL);
INSERT INTO public.moon VALUES (13, 'B10', 634, 18, 23.42, 'Fill', false, true, NULL);
INSERT INTO public.moon VALUES (14, 'B11', 634, 18, 23.42, 'Fill', false, true, NULL);
INSERT INTO public.moon VALUES (15, 'B12', 634, 18, 23.42, 'Fill', false, true, NULL);
INSERT INTO public.moon VALUES (16, 'B13', 634, 18, 23.42, 'Fill', false, true, NULL);
INSERT INTO public.moon VALUES (17, 'B14', 634, 18, 23.42, 'Fill', false, true, NULL);
INSERT INTO public.moon VALUES (18, 'B15', 634, 18, 23.42, 'Fill', false, true, NULL);
INSERT INTO public.moon VALUES (19, 'B16', 634, 18, 23.42, 'Fill', false, true, NULL);
INSERT INTO public.moon VALUES (20, 'B17', 634, 18, 23.42, 'Fill', false, true, NULL);
INSERT INTO public.moon VALUES (21, 'B18', 634, 18, 23.42, 'Fill', false, true, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Marte', 8754, 3, 20.63, 'Next earth?', true, true, NULL);
INSERT INTO public.planet VALUES (2, 'Saturn', 12554, 24, 98.63, 'Rings?', false, true, NULL);
INSERT INTO public.planet VALUES (3, 'Jupiter', 634, 18, 23.42, 'Same old Jupiter', false, true, NULL);
INSERT INTO public.planet VALUES (4, 'A1', 634, 18, 23.42, 'Fill', false, true, NULL);
INSERT INTO public.planet VALUES (5, 'A2', 634, 18, 23.42, 'Fill', false, true, NULL);
INSERT INTO public.planet VALUES (6, 'A3', 634, 18, 23.42, 'Fill', false, true, NULL);
INSERT INTO public.planet VALUES (7, 'A4', 634, 18, 23.42, 'Fill', false, true, NULL);
INSERT INTO public.planet VALUES (8, 'A5', 634, 18, 23.42, 'Fill', false, true, NULL);
INSERT INTO public.planet VALUES (9, 'A6', 634, 18, 23.42, 'Fill', false, true, NULL);
INSERT INTO public.planet VALUES (10, 'A7', 634, 18, 23.42, 'Fill', false, true, NULL);
INSERT INTO public.planet VALUES (11, 'A8', 634, 18, 23.42, 'Fill', false, true, NULL);
INSERT INTO public.planet VALUES (12, 'A9', 634, 18, 23.42, 'Fill', false, true, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Draco', 25, 2542, 87.44, 'Very hot here', false, false, NULL);
INSERT INTO public.star VALUES (2, 'Taurus', 94, 99605, 43.45, 'Is it May?', false, false, NULL);
INSERT INTO public.star VALUES (3, 'Polar', 5434, 485, 78.42, 'Most famous?', false, false, NULL);
INSERT INTO public.star VALUES (4, 'A', 634, 18, 23.42, 'Fill', false, true, NULL);
INSERT INTO public.star VALUES (5, 'B', 634, 18, 23.42, 'Fill', false, true, NULL);
INSERT INTO public.star VALUES (6, 'C', 634, 18, 23.42, 'Fill', false, true, NULL);


--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.asteroid_asteroid_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: asteroid asteroid_asteroid_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_asteroid_id_key UNIQUE (asteroid_id);


--
-- Name: asteroid asteroid_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_pkey PRIMARY KEY (asteroid_id);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


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

