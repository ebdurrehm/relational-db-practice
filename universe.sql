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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(40) NOT NULL,
    age_in_million_of_years numeric(8,2),
    galaxy_type character varying(40),
    have_a_black_hole boolean
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
-- Name: meteroids; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.meteroids (
    meteroids_id integer NOT NULL,
    name character varying(40) NOT NULL,
    have_damaged_earth boolean
);


ALTER TABLE public.meteroids OWNER TO freecodecamp;

--
-- Name: meteroids_meteroid_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.meteroids_meteroid_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.meteroids_meteroid_id_seq OWNER TO freecodecamp;

--
-- Name: meteroids_meteroid_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.meteroids_meteroid_id_seq OWNED BY public.meteroids.meteroids_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(40) NOT NULL,
    size_in_km integer,
    planet_id integer,
    have_life boolean
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
    name character varying(40) NOT NULL,
    is_greater_than_earth boolean NOT NULL,
    star_id integer,
    confrimed_moon integer
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
    galaxy_id integer,
    chemical_composition text,
    diametr_in_km integer,
    temperaature_in_kelvin integer,
    name character varying(40) NOT NULL,
    class character varying(10) NOT NULL
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
-- Name: meteroids meteroids_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.meteroids ALTER COLUMN meteroids_id SET DEFAULT nextval('public.meteroids_meteroid_id_seq'::regclass);


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

INSERT INTO public.galaxy VALUES (1, 'andromeda', 30.00, 'sprial', false);
INSERT INTO public.galaxy VALUES (2, 'antennaei', 25.00, 'cluster', false);
INSERT INTO public.galaxy VALUES (3, 'black eye', 20.00, 'cluster', true);
INSERT INTO public.galaxy VALUES (4, 'butterfly', 10.00, 'cluster', true);
INSERT INTO public.galaxy VALUES (5, 'cigar', 10.00, 'cluster', true);
INSERT INTO public.galaxy VALUES (7, 'cigius', 80.00, 'cluster', true);


--
-- Data for Name: meteroids; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.meteroids VALUES (1, 'Orionid', false);
INSERT INTO public.meteroids VALUES (2, 'Lyrid', false);
INSERT INTO public.meteroids VALUES (3, 'Levy 9', false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Deimos', 15, 3, NULL);
INSERT INTO public.moon VALUES (2, 'Phrobos', 18, 3, NULL);
INSERT INTO public.moon VALUES (3, 'Adrastea', 19, 4, NULL);
INSERT INTO public.moon VALUES (4, 'Ananke', 19, 4, NULL);
INSERT INTO public.moon VALUES (5, 'Carpo', 19, 4, NULL);
INSERT INTO public.moon VALUES (6, 'Atlas', 19, 5, NULL);
INSERT INTO public.moon VALUES (7, 'Dione', 19, 5, NULL);
INSERT INTO public.moon VALUES (8, 'Fenrir', 19, 5, NULL);
INSERT INTO public.moon VALUES (9, 'Greip', 19, 5, NULL);
INSERT INTO public.moon VALUES (10, 'Helene', 19, 5, NULL);
INSERT INTO public.moon VALUES (11, 'Perdita', 16, 6, NULL);
INSERT INTO public.moon VALUES (12, 'Setebos', 16, 6, NULL);
INSERT INTO public.moon VALUES (13, 'Stephano', 16, 6, NULL);
INSERT INTO public.moon VALUES (14, 'Titania', 16, 6, NULL);
INSERT INTO public.moon VALUES (15, 'Despina', 16, 7, NULL);
INSERT INTO public.moon VALUES (16, 'Halimade', 16, 7, NULL);
INSERT INTO public.moon VALUES (17, 'Proteus', 16, 7, NULL);
INSERT INTO public.moon VALUES (18, 'Locaste', 16, 4, NULL);
INSERT INTO public.moon VALUES (19, 'Kore', 16, 4, NULL);
INSERT INTO public.moon VALUES (20, 'Europa', 16, 4, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', false, 1, 0);
INSERT INTO public.planet VALUES (2, 'Venus', false, 2, 0);
INSERT INTO public.planet VALUES (3, 'Mars', false, 3, 2);
INSERT INTO public.planet VALUES (4, 'Yupiter', true, 4, 80);
INSERT INTO public.planet VALUES (5, 'Saturn', true, 5, 83);
INSERT INTO public.planet VALUES (6, 'Uranus', true, 5, 27);
INSERT INTO public.planet VALUES (7, 'Neptun', true, 6, 14);
INSERT INTO public.planet VALUES (38, 'Gliese', false, 3, 4);
INSERT INTO public.planet VALUES (39, 'Lalande', false, 3, 6);
INSERT INTO public.planet VALUES (40, 'Wolf 359', false, 4, 0);
INSERT INTO public.planet VALUES (41, 'Lyuten', true, 4, 10);
INSERT INTO public.planet VALUES (42, 'TAU', true, 4, 12);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 1, 'hidrogen,helium,chromium', 5, 100, 'Zeta Ophiuchi', 'O');
INSERT INTO public.star VALUES (2, 2, 'hidrogen,ferrium,chromium', 8, 33000, 'Rigel', 'B');
INSERT INTO public.star VALUES (3, 2, 'germanium,ferrium,chromium', 120, 10000, 'Altair', 'A');
INSERT INTO public.star VALUES (4, 3, 'germanium,ferrium,chromium', 129, 6000, 'Procyon A', 'F');
INSERT INTO public.star VALUES (5, 4, 'oxygen,ferrium,chromium', 305, 5500, 'Sun', 'G');
INSERT INTO public.star VALUES (6, 5, 'oxygen,ferrium,chromium', 243, 5250, 'Epsilon Indi', 'K');


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: meteroids_meteroid_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.meteroids_meteroid_id_seq', 3, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 42, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: meteroids meteroids_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.meteroids
    ADD CONSTRAINT meteroids_pkey PRIMARY KEY (meteroids_id);


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
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star uniqu_; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT uniqu_ UNIQUE (name);


--
-- Name: meteroids uniqu_n; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.meteroids
    ADD CONSTRAINT uniqu_n UNIQUE (name);


--
-- Name: galaxy uniqu_nam; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT uniqu_nam UNIQUE (name);


--
-- Name: moon unique_nam; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_nam UNIQUE (name);


--
-- Name: planet unique_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_name UNIQUE (name);


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

