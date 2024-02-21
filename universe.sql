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
-- Name: astronaut; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.astronaut (
    astronaut_id bigint NOT NULL,
    name character varying(50) NOT NULL,
    date_of_birth date NOT NULL,
    has_been_married boolean,
    has_children boolean
);


ALTER TABLE public.astronaut OWNER TO freecodecamp;

--
-- Name: astronaut_astronaut_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.astronaut_astronaut_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.astronaut_astronaut_id_seq OWNER TO freecodecamp;

--
-- Name: astronaut_astronaut_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.astronaut_astronaut_id_seq OWNED BY public.astronaut.astronaut_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id bigint NOT NULL,
    name character varying(50) NOT NULL,
    type character varying(20) NOT NULL,
    number_of_stars text,
    diameter_in_light_years integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

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
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id bigint NOT NULL,
    name character varying(50) NOT NULL,
    diameter_in_km integer NOT NULL,
    link_to_image text,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

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
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id bigint NOT NULL,
    name character varying(50) NOT NULL,
    diameter_in_km integer NOT NULL,
    tilt_of_axis_in_degrees numeric(6,2),
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

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
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id bigint NOT NULL,
    name character varying(50) NOT NULL,
    type character(1) NOT NULL,
    colour text,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

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
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: astronaut astronaut_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.astronaut ALTER COLUMN astronaut_id SET DEFAULT nextval('public.astronaut_astronaut_id_seq'::regclass);


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
-- Data for Name: astronaut; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.astronaut VALUES (1, 'Neil Armstrong', '1930-08-05', true, true);
INSERT INTO public.astronaut VALUES (2, 'Michael Collins', '1930-10-31', true, true);
INSERT INTO public.astronaut VALUES (3, 'Buzz Aldrin', '1930-01-20', true, true);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Spiral', '100 billion', 105700);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'Spiral', '1 trillion', 152000);
INSERT INTO public.galaxy VALUES (3, 'Cigar', 'Irregular', '30 billion', 37000);
INSERT INTO public.galaxy VALUES (4, 'Black Eye', 'Spiral', '100 billion', 70000);
INSERT INTO public.galaxy VALUES (5, 'Messier 87', 'Elliptical', '1 trillion', 120000);
INSERT INTO public.galaxy VALUES (6, 'NGC 1097', 'Spiral', '1 trillion', 140000);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'The Moon', 3475, 'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e1/FullMoon2010.jpg/580px-FullMoon2010.jpg', 1);
INSERT INTO public.moon VALUES (2, 'Metis', 43, 'https://upload.wikimedia.org/wikipedia/commons/thumb/9/9a/Metis.jpg/100px-Metis.jpg', 4);
INSERT INTO public.moon VALUES (3, 'Adrastea', 16, 'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e4/Adrastea.jpg/100px-Adrastea.jpg', 4);
INSERT INTO public.moon VALUES (4, 'Amalthea', 167, 'https://upload.wikimedia.org/wikipedia/commons/thumb/1/17/Amalthea_%28moon%29.png/100px-Amalthea_%28moon%29.png', 4);
INSERT INTO public.moon VALUES (5, 'Thebe', 97, 'https://upload.wikimedia.org/wikipedia/commons/thumb/1/1b/Thebe.jpg/100px-Thebe.jpg', 4);
INSERT INTO public.moon VALUES (6, 'Io', 3643, 'https://upload.wikimedia.org/wikipedia/commons/thumb/e/ef/Io_imaged_by_Juno_spacecraft.png/100px-Io_imaged_by_Juno_spacecraft.png', 4);
INSERT INTO public.moon VALUES (7, 'Europa', 3122, 'https://upload.wikimedia.org/wikipedia/commons/thumb/1/1c/Europa_in_natural_color.png/100px-Europa_in_natural_color.png', 4);
INSERT INTO public.moon VALUES (8, 'Ganymede', 5268, 'https://upload.wikimedia.org/wikipedia/commons/thumb/2/21/Ganymede_-_Perijove_34_Composite.png/100px-Ganymede_-_Perijove_34_Composite.png', 4);
INSERT INTO public.moon VALUES (9, 'Callisto', 4821, 'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e9/Callisto.jpg/100px-Callisto.jpg', 4);
INSERT INTO public.moon VALUES (10, 'Leda', 22, 'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e3/Leda_WISE-W3.jpg/100px-Leda_WISE-W3.jpg', 4);
INSERT INTO public.moon VALUES (11, 'Himalia', 140, 'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c2/Cassini-Huygens_Image_of_Himalia.png/100px-Cassini-Huygens_Image_of_Himalia.png', 4);
INSERT INTO public.moon VALUES (12, 'Pan', 27, 'https://upload.wikimedia.org/wikipedia/commons/thumb/d/d2/Pan_by_Cassini%2C_March_2017.jpg/140px-Pan_by_Cassini%2C_March_2017.jpg', 7);
INSERT INTO public.moon VALUES (13, 'Daphnis', 8, 'https://upload.wikimedia.org/wikipedia/commons/thumb/d/d5/Daphnis_%28Saturn%27s_Moon%29.jpg/140px-Daphnis_%28Saturn%27s_Moon%29.jpg', 7);
INSERT INTO public.moon VALUES (14, 'Atlas', 30, 'https://upload.wikimedia.org/wikipedia/commons/thumb/5/57/Atlas_color_PIA21449.png/140px-Atlas_color_PIA21449.png', 7);
INSERT INTO public.moon VALUES (15, 'Prometheus', 86, 'https://upload.wikimedia.org/wikipedia/commons/thumb/c/cd/Prometheus_12-26-09a.jpg/140px-Prometheus_12-26-09a.jpg', 7);
INSERT INTO public.moon VALUES (16, 'Pandora', 80, 'https://upload.wikimedia.org/wikipedia/commons/thumb/8/8b/PIA21055_-_Pandora_Up_Close_%28cropped%29.jpg/140px-PIA21055_-_Pandora_Up_Close_%28cropped%29.jpg', 7);
INSERT INTO public.moon VALUES (17, 'Epimetheus', 117, 'https://upload.wikimedia.org/wikipedia/commons/thumb/2/24/PIA09813_Epimetheus_S._polar_region.jpg/140px-PIA09813_Epimetheus_S._polar_region.jpg', 7);
INSERT INTO public.moon VALUES (18, 'Janus', 178, 'https://upload.wikimedia.org/wikipedia/commons/thumb/6/62/PIA12714_Janus_crop.jpg/140px-PIA12714_Janus_crop.jpg', 7);
INSERT INTO public.moon VALUES (19, 'Aegaeon', 1, 'https://upload.wikimedia.org/wikipedia/commons/thumb/8/83/N1643264379_1.jpg/140px-N1643264379_1.jpg', 7);
INSERT INTO public.moon VALUES (20, 'Mimas', 396, 'https://upload.wikimedia.org/wikipedia/commons/thumb/b/bc/Mimas_Cassini.jpg/140px-Mimas_Cassini.jpg', 7);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 12742, 23.50, 1);
INSERT INTO public.planet VALUES (2, 'Venus', 12104, 177.00, 1);
INSERT INTO public.planet VALUES (3, 'Uranus', 50724, 97.70, 1);
INSERT INTO public.planet VALUES (5, 'Mars', 6779, 25.00, 1);
INSERT INTO public.planet VALUES (6, 'Mercury', 4879, 0.01, 1);
INSERT INTO public.planet VALUES (8, 'Neptune', 49244, 28.00, 1);
INSERT INTO public.planet VALUES (9, 'Kepler-90b', 16692, 0.00, 2);
INSERT INTO public.planet VALUES (10, 'Kepler-90c', 15163, 0.00, 2);
INSERT INTO public.planet VALUES (11, 'Kepler-90i', 16838, 0.00, 2);
INSERT INTO public.planet VALUES (12, 'Kepler-90d', 35794, 0.00, 2);
INSERT INTO public.planet VALUES (4, 'Jupiter', 142984, 3.13, 1);
INSERT INTO public.planet VALUES (7, 'Saturn', 116460, 26.73, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'The Sun', 'G', 'White', 1);
INSERT INTO public.star VALUES (2, 'Kepler-90', 'G', 'Yellow', 1);
INSERT INTO public.star VALUES (3, 'Vega', 'A', 'Bluish-white', 1);
INSERT INTO public.star VALUES (4, 'Betelgeuse', 'M', 'Red', 1);
INSERT INTO public.star VALUES (5, 'Canopus', 'F', 'Yellowish-white', 1);
INSERT INTO public.star VALUES (6, 'Antares', 'M', 'Red', 1);


--
-- Name: astronaut_astronaut_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.astronaut_astronaut_id_seq', 3, true);


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
-- Name: astronaut astronaut_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.astronaut
    ADD CONSTRAINT astronaut_name_key UNIQUE (name);


--
-- Name: astronaut astronaut_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.astronaut
    ADD CONSTRAINT astronaut_pkey PRIMARY KEY (astronaut_id);


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

