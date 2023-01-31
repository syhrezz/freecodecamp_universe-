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
    name character varying(60) NOT NULL,
    description text,
    collection text,
    number_of_stars integer,
    own_light boolean
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
-- Name: habitant; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.habitant (
    habitant_id integer NOT NULL,
    name character varying(30) NOT NULL,
    planet_id integer
);


ALTER TABLE public.habitant OWNER TO freecodecamp;

--
-- Name: habitant_habitant_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.habitant_habitant_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.habitant_habitant_id_seq OWNER TO freecodecamp;

--
-- Name: habitant_habitant_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.habitant_habitant_id_seq OWNED BY public.habitant.habitant_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(60) NOT NULL,
    own_light boolean,
    diameter numeric,
    description text,
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
    name character varying(60) NOT NULL,
    satelite integer,
    diameter numeric,
    weight integer,
    description text,
    livable boolean,
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
    name character varying(60) NOT NULL,
    description text,
    collection text,
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
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: habitant habitant_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.habitant ALTER COLUMN habitant_id SET DEFAULT nextval('public.habitant_habitant_id_seq'::regclass);


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

INSERT INTO public.galaxy VALUES (1, 'Andromeda', 'system of stars', 'gas metana', 90, true);
INSERT INTO public.galaxy VALUES (2, 'Maffei', 'system of stars', 'gas metana', 90, true);
INSERT INTO public.galaxy VALUES (3, 'Cygnus', 'system of stars', 'gas oil', 100, false);
INSERT INTO public.galaxy VALUES (4, 'Milky', 'system of stars', 'gas metana', 90, true);
INSERT INTO public.galaxy VALUES (5, 'Virgo', 'system of stars', 'gas oil', 100, false);
INSERT INTO public.galaxy VALUES (6, 'Canis', 'system of stars', 'gas metana', 90, true);
INSERT INTO public.galaxy VALUES (7, 'Magel', 'system of stars', 'gas oil', 100, false);


--
-- Data for Name: habitant; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.habitant VALUES (1, 'Human', 1);
INSERT INTO public.habitant VALUES (2, 'Animal', 1);
INSERT INTO public.habitant VALUES (3, 'Plant', 1);
INSERT INTO public.habitant VALUES (4, 'Microba', 1);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (2, 'Titan', true, 12.3, 'Shin your day', 1);
INSERT INTO public.moon VALUES (3, 'Moons', true, 12.3, 'Shin your day', 1);
INSERT INTO public.moon VALUES (4, 'Triton', true, 12.3, 'Shin your day', 1);
INSERT INTO public.moon VALUES (5, 'Titania', true, 12.3, 'Shin your day', 1);
INSERT INTO public.moon VALUES (6, 'Umbriel', true, 12.3, 'Shin your day', 1);
INSERT INTO public.moon VALUES (7, 'Ariel', true, 12.3, 'Shin your day', 1);
INSERT INTO public.moon VALUES (8, 'Oberon', true, 12.3, 'Shin your day', 1);
INSERT INTO public.moon VALUES (9, 'Miranda', true, 12.3, 'Shin your day', 1);
INSERT INTO public.moon VALUES (10, 'Puck', true, 12.3, 'Shin your day', 1);
INSERT INTO public.moon VALUES (11, 'Cressida', true, 12.3, 'Shin your day', 1);
INSERT INTO public.moon VALUES (12, 'Cyxorax', true, 12.3, 'Shin your day', 1);
INSERT INTO public.moon VALUES (13, 'Caliban', true, 12.3, 'Shin your day', 1);
INSERT INTO public.moon VALUES (14, 'Bianca', true, 12.3, 'Shin your day', 1);
INSERT INTO public.moon VALUES (15, 'Cordelia', true, 12.3, 'Shin your day', 1);
INSERT INTO public.moon VALUES (16, 'Juliet', true, 12.3, 'Shin your day', 1);
INSERT INTO public.moon VALUES (17, 'Mab', true, 12.3, 'Shin your day', 1);
INSERT INTO public.moon VALUES (18, 'Portia', true, 12.3, 'Shin your day', 1);
INSERT INTO public.moon VALUES (19, 'Belinda', true, 12.3, 'Shin your day', 1);
INSERT INTO public.moon VALUES (20, 'Cupid', true, 12.3, 'Shin your day', 1);
INSERT INTO public.moon VALUES (21, 'Prospero', true, 12.3, 'Shin your day', 1);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 12, 34.6, 23, 'planet in galaxy', true, 1);
INSERT INTO public.planet VALUES (2, 'Mars', 12, 34.6, 23, 'planet in galaxy', false, 2);
INSERT INTO public.planet VALUES (3, 'Saturnus', 12, 34.6, 23, 'planet in galaxy', false, 2);
INSERT INTO public.planet VALUES (4, 'Uranus', 12, 34.6, 23, 'planet in galaxy', false, 2);
INSERT INTO public.planet VALUES (5, 'Neptunus', 12, 34.6, 23, 'planet in galaxy', false, 2);
INSERT INTO public.planet VALUES (6, 'Pluto', 12, 34.6, 23, 'planet in galaxy', false, 2);
INSERT INTO public.planet VALUES (7, 'Mercury', 12, 34.6, 23, 'planet in galaxy', false, 2);
INSERT INTO public.planet VALUES (8, 'Venus', 12, 34.6, 23, 'planet in galaxy', false, 2);
INSERT INTO public.planet VALUES (9, 'Jupiter', 12, 34.6, 23, 'planet in galaxy', false, 2);
INSERT INTO public.planet VALUES (10, 'Ceres', 12, 34.6, 23, 'planet in galaxy', false, 2);
INSERT INTO public.planet VALUES (11, 'Eris', 12, 34.6, 23, 'planet in galaxy', false, 2);
INSERT INTO public.planet VALUES (12, 'Haumea', 12, 34.6, 23, 'planet in galaxy', false, 2);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Aquila', 'system of stars', 'gas metana', 1);
INSERT INTO public.star VALUES (2, 'Auriga', 'system of stars', 'gas oil', 2);
INSERT INTO public.star VALUES (3, 'Cancer', 'system of stars', 'gas metana', 3);
INSERT INTO public.star VALUES (4, 'Bootes', 'system of stars', 'gas oil', 4);
INSERT INTO public.star VALUES (5, 'Cetus', 'system of stars', 'gas metana', 6);
INSERT INTO public.star VALUES (6, 'Carina', 'system of stars', 'gas oil', 5);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: habitant_habitant_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.habitant_habitant_id_seq', 1, false);


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
-- Name: habitant habitant_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.habitant
    ADD CONSTRAINT habitant_name_key UNIQUE (name);


--
-- Name: habitant habitant_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.habitant
    ADD CONSTRAINT habitant_pkey PRIMARY KEY (habitant_id);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


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
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


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
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


--
-- Name: habitant habitant_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.habitant
    ADD CONSTRAINT habitant_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


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

