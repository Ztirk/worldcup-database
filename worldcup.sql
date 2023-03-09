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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    year integer NOT NULL,
    round character varying(255) NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name text NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (353, 2018, 'Final', 994, 995, 4, 2);
INSERT INTO public.games VALUES (354, 2018, 'Third Place', 996, 997, 2, 0);
INSERT INTO public.games VALUES (355, 2018, 'Semi-Final', 995, 997, 2, 1);
INSERT INTO public.games VALUES (356, 2018, 'Semi-Final', 994, 996, 1, 0);
INSERT INTO public.games VALUES (357, 2018, 'Quarter-Final', 995, 1003, 3, 2);
INSERT INTO public.games VALUES (358, 2018, 'Quarter-Final', 997, 1005, 2, 0);
INSERT INTO public.games VALUES (359, 2018, 'Quarter-Final', 996, 1007, 2, 1);
INSERT INTO public.games VALUES (360, 2018, 'Quarter-Final', 994, 1009, 2, 0);
INSERT INTO public.games VALUES (361, 2018, 'Eighth-Final', 997, 1011, 2, 1);
INSERT INTO public.games VALUES (362, 2018, 'Eighth-Final', 1005, 1013, 1, 0);
INSERT INTO public.games VALUES (363, 2018, 'Eighth-Final', 996, 1015, 3, 2);
INSERT INTO public.games VALUES (364, 2018, 'Eighth-Final', 1007, 1017, 2, 0);
INSERT INTO public.games VALUES (365, 2018, 'Eighth-Final', 995, 1019, 2, 1);
INSERT INTO public.games VALUES (366, 2018, 'Eighth-Final', 1003, 1021, 2, 1);
INSERT INTO public.games VALUES (367, 2018, 'Eighth-Final', 1009, 1023, 2, 1);
INSERT INTO public.games VALUES (368, 2018, 'Eighth-Final', 994, 1025, 4, 3);
INSERT INTO public.games VALUES (369, 2014, 'Final', 1026, 1025, 1, 0);
INSERT INTO public.games VALUES (370, 2014, 'Third Place', 1028, 1007, 3, 0);
INSERT INTO public.games VALUES (371, 2014, 'Semi-Final', 1025, 1028, 1, 0);
INSERT INTO public.games VALUES (372, 2014, 'Semi-Final', 1026, 1007, 7, 1);
INSERT INTO public.games VALUES (373, 2014, 'Quarter-Final', 1028, 1035, 1, 0);
INSERT INTO public.games VALUES (374, 2014, 'Quarter-Final', 1025, 996, 1, 0);
INSERT INTO public.games VALUES (375, 2014, 'Quarter-Final', 1007, 1011, 2, 1);
INSERT INTO public.games VALUES (376, 2014, 'Quarter-Final', 1026, 994, 1, 0);
INSERT INTO public.games VALUES (377, 2014, 'Eighth-Final', 1007, 1043, 2, 1);
INSERT INTO public.games VALUES (378, 2014, 'Eighth-Final', 1011, 1009, 2, 0);
INSERT INTO public.games VALUES (379, 2014, 'Eighth-Final', 994, 1047, 2, 0);
INSERT INTO public.games VALUES (380, 2014, 'Eighth-Final', 1026, 1049, 2, 1);
INSERT INTO public.games VALUES (381, 2014, 'Eighth-Final', 1028, 1017, 2, 1);
INSERT INTO public.games VALUES (382, 2014, 'Eighth-Final', 1035, 1053, 2, 1);
INSERT INTO public.games VALUES (383, 2014, 'Eighth-Final', 1025, 1013, 1, 0);
INSERT INTO public.games VALUES (384, 2014, 'Eighth-Final', 996, 1057, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (994, 'France');
INSERT INTO public.teams VALUES (995, 'Croatia');
INSERT INTO public.teams VALUES (996, 'Belgium');
INSERT INTO public.teams VALUES (997, 'England');
INSERT INTO public.teams VALUES (1003, 'Russia');
INSERT INTO public.teams VALUES (1005, 'Sweden');
INSERT INTO public.teams VALUES (1007, 'Brazil');
INSERT INTO public.teams VALUES (1009, 'Uruguay');
INSERT INTO public.teams VALUES (1011, 'Colombia');
INSERT INTO public.teams VALUES (1013, 'Switzerland');
INSERT INTO public.teams VALUES (1015, 'Japan');
INSERT INTO public.teams VALUES (1017, 'Mexico');
INSERT INTO public.teams VALUES (1019, 'Denmark');
INSERT INTO public.teams VALUES (1021, 'Spain');
INSERT INTO public.teams VALUES (1023, 'Portugal');
INSERT INTO public.teams VALUES (1025, 'Argentina');
INSERT INTO public.teams VALUES (1026, 'Germany');
INSERT INTO public.teams VALUES (1028, 'Netherlands');
INSERT INTO public.teams VALUES (1035, 'Costa Rica');
INSERT INTO public.teams VALUES (1043, 'Chile');
INSERT INTO public.teams VALUES (1047, 'Nigeria');
INSERT INTO public.teams VALUES (1049, 'Algeria');
INSERT INTO public.teams VALUES (1053, 'Greece');
INSERT INTO public.teams VALUES (1057, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 384, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 1057, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

