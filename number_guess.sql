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

DROP DATABASE guessing_game;
--
-- Name: guessing_game; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE guessing_game WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE guessing_game OWNER TO freecodecamp;

\connect guessing_game

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
    no_guesses integer,
    user_id integer NOT NULL,
    secret_number integer NOT NULL
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
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(50) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (53, 540, 20, 539);
INSERT INTO public.games VALUES (54, 105, 20, 104);
INSERT INTO public.games VALUES (55, 239, 21, 238);
INSERT INTO public.games VALUES (56, 152, 21, 151);
INSERT INTO public.games VALUES (57, 877, 20, 874);
INSERT INTO public.games VALUES (58, 601, 20, 599);
INSERT INTO public.games VALUES (59, 19, 20, 18);
INSERT INTO public.games VALUES (60, 860, 22, 859);
INSERT INTO public.games VALUES (61, 549, 22, 548);
INSERT INTO public.games VALUES (62, 866, 23, 865);
INSERT INTO public.games VALUES (63, 750, 23, 749);
INSERT INTO public.games VALUES (64, 852, 22, 849);
INSERT INTO public.games VALUES (65, 710, 22, 708);
INSERT INTO public.games VALUES (66, 778, 22, 777);
INSERT INTO public.games VALUES (67, 914, 24, 913);
INSERT INTO public.games VALUES (68, 51, 24, 50);
INSERT INTO public.games VALUES (69, 198, 25, 197);
INSERT INTO public.games VALUES (70, 969, 25, 968);
INSERT INTO public.games VALUES (71, 756, 24, 753);
INSERT INTO public.games VALUES (72, 884, 24, 882);
INSERT INTO public.games VALUES (73, 587, 24, 586);
INSERT INTO public.games VALUES (74, 836, 26, 835);
INSERT INTO public.games VALUES (75, 687, 26, 686);
INSERT INTO public.games VALUES (76, 776, 27, 775);
INSERT INTO public.games VALUES (77, 2, 27, 1);
INSERT INTO public.games VALUES (78, 220, 26, 217);
INSERT INTO public.games VALUES (79, 524, 26, 522);
INSERT INTO public.games VALUES (80, 488, 26, 487);
INSERT INTO public.games VALUES (81, 424, 28, 423);
INSERT INTO public.games VALUES (82, 333, 28, 332);
INSERT INTO public.games VALUES (83, 823, 29, 822);
INSERT INTO public.games VALUES (84, 806, 29, 805);
INSERT INTO public.games VALUES (85, 501, 28, 498);
INSERT INTO public.games VALUES (86, 585, 28, 583);
INSERT INTO public.games VALUES (87, 392, 28, 391);
INSERT INTO public.games VALUES (88, 10, 30, 552);
INSERT INTO public.games VALUES (89, 12, 30, 393);
INSERT INTO public.games VALUES (90, 469, 31, 468);
INSERT INTO public.games VALUES (91, 730, 31, 729);
INSERT INTO public.games VALUES (92, 846, 32, 845);
INSERT INTO public.games VALUES (93, 791, 32, 790);
INSERT INTO public.games VALUES (94, 669, 31, 666);
INSERT INTO public.games VALUES (95, 493, 31, 491);
INSERT INTO public.games VALUES (96, 971, 31, 970);
INSERT INTO public.games VALUES (97, 583, 33, 582);
INSERT INTO public.games VALUES (98, 702, 33, 701);
INSERT INTO public.games VALUES (99, 346, 34, 345);
INSERT INTO public.games VALUES (100, 545, 34, 544);
INSERT INTO public.games VALUES (101, 577, 33, 574);
INSERT INTO public.games VALUES (102, 275, 33, 273);
INSERT INTO public.games VALUES (103, 314, 33, 313);
INSERT INTO public.games VALUES (104, 143, 35, 142);
INSERT INTO public.games VALUES (105, 319, 35, 318);
INSERT INTO public.games VALUES (106, 1000, 36, 999);
INSERT INTO public.games VALUES (107, 745, 36, 744);
INSERT INTO public.games VALUES (108, 806, 35, 803);
INSERT INTO public.games VALUES (109, 348, 35, 346);
INSERT INTO public.games VALUES (110, 480, 35, 479);
INSERT INTO public.games VALUES (111, 859, 37, 858);
INSERT INTO public.games VALUES (112, 922, 37, 921);
INSERT INTO public.games VALUES (113, 61, 38, 60);
INSERT INTO public.games VALUES (114, 46, 38, 45);
INSERT INTO public.games VALUES (115, 132, 37, 129);
INSERT INTO public.games VALUES (116, 302, 37, 300);
INSERT INTO public.games VALUES (117, 66, 37, 65);
INSERT INTO public.games VALUES (118, 709, 39, 708);
INSERT INTO public.games VALUES (119, 398, 39, 397);
INSERT INTO public.games VALUES (120, 21, 40, 20);
INSERT INTO public.games VALUES (121, 894, 40, 893);
INSERT INTO public.games VALUES (122, 805, 39, 802);
INSERT INTO public.games VALUES (123, 97, 39, 95);
INSERT INTO public.games VALUES (124, 133, 39, 132);
INSERT INTO public.games VALUES (151, 84, 72, 83);
INSERT INTO public.games VALUES (152, 792, 72, 791);
INSERT INTO public.games VALUES (153, 420, 73, 419);
INSERT INTO public.games VALUES (154, 656, 73, 655);
INSERT INTO public.games VALUES (155, 488, 72, 485);
INSERT INTO public.games VALUES (156, 859, 72, 857);
INSERT INTO public.games VALUES (157, 782, 72, 781);
INSERT INTO public.games VALUES (158, 625, 75, 624);
INSERT INTO public.games VALUES (159, 944, 75, 943);
INSERT INTO public.games VALUES (160, 293, 76, 292);
INSERT INTO public.games VALUES (161, 943, 76, 942);
INSERT INTO public.games VALUES (162, 41, 75, 38);
INSERT INTO public.games VALUES (163, 278, 75, 276);
INSERT INTO public.games VALUES (164, 471, 75, 470);
INSERT INTO public.games VALUES (165, 504, 77, 503);
INSERT INTO public.games VALUES (166, 22, 77, 21);
INSERT INTO public.games VALUES (167, 322, 78, 321);
INSERT INTO public.games VALUES (168, 876, 78, 875);
INSERT INTO public.games VALUES (169, 222, 77, 219);
INSERT INTO public.games VALUES (170, 971, 77, 969);
INSERT INTO public.games VALUES (171, 313, 77, 312);
INSERT INTO public.games VALUES (172, 462, 79, 461);
INSERT INTO public.games VALUES (173, 324, 79, 323);
INSERT INTO public.games VALUES (174, 982, 80, 981);
INSERT INTO public.games VALUES (175, 67, 80, 66);
INSERT INTO public.games VALUES (176, 842, 79, 839);
INSERT INTO public.games VALUES (177, 868, 79, 866);
INSERT INTO public.games VALUES (178, 648, 79, 647);
INSERT INTO public.games VALUES (179, 888, 81, 887);
INSERT INTO public.games VALUES (180, 736, 81, 735);
INSERT INTO public.games VALUES (181, 89, 82, 88);
INSERT INTO public.games VALUES (182, 70, 82, 69);
INSERT INTO public.games VALUES (183, 739, 81, 736);
INSERT INTO public.games VALUES (184, 157, 81, 155);
INSERT INTO public.games VALUES (185, 152, 81, 151);
INSERT INTO public.games VALUES (186, 814, 83, 813);
INSERT INTO public.games VALUES (187, 938, 83, 937);
INSERT INTO public.games VALUES (188, 945, 84, 944);
INSERT INTO public.games VALUES (189, 63, 84, 62);
INSERT INTO public.games VALUES (190, 9, 83, 6);
INSERT INTO public.games VALUES (191, 13, 83, 11);
INSERT INTO public.games VALUES (192, 216, 83, 215);
INSERT INTO public.games VALUES (193, 764, 85, 763);
INSERT INTO public.games VALUES (194, 974, 85, 973);
INSERT INTO public.games VALUES (195, 754, 86, 753);
INSERT INTO public.games VALUES (196, 397, 86, 396);
INSERT INTO public.games VALUES (197, 454, 85, 451);
INSERT INTO public.games VALUES (198, 76, 85, 74);
INSERT INTO public.games VALUES (199, 493, 85, 492);
INSERT INTO public.games VALUES (200, 563, 87, 562);
INSERT INTO public.games VALUES (201, 607, 87, 606);
INSERT INTO public.games VALUES (202, 438, 88, 437);
INSERT INTO public.games VALUES (203, 426, 88, 425);
INSERT INTO public.games VALUES (204, 692, 87, 689);
INSERT INTO public.games VALUES (205, 379, 87, 377);
INSERT INTO public.games VALUES (206, 977, 87, 976);
INSERT INTO public.games VALUES (207, 392, 89, 391);
INSERT INTO public.games VALUES (208, 907, 89, 906);
INSERT INTO public.games VALUES (209, 985, 90, 984);
INSERT INTO public.games VALUES (210, 807, 90, 806);
INSERT INTO public.games VALUES (211, 488, 89, 485);
INSERT INTO public.games VALUES (212, 960, 89, 958);
INSERT INTO public.games VALUES (213, 546, 89, 545);
INSERT INTO public.games VALUES (214, 867, 91, 866);
INSERT INTO public.games VALUES (215, 717, 91, 716);
INSERT INTO public.games VALUES (216, 920, 92, 919);
INSERT INTO public.games VALUES (217, 249, 92, 248);
INSERT INTO public.games VALUES (218, 889, 91, 886);
INSERT INTO public.games VALUES (219, 675, 91, 673);
INSERT INTO public.games VALUES (220, 925, 91, 924);
INSERT INTO public.games VALUES (221, 119, 93, 118);
INSERT INTO public.games VALUES (222, 508, 93, 507);
INSERT INTO public.games VALUES (223, 528, 94, 527);
INSERT INTO public.games VALUES (224, 233, 94, 232);
INSERT INTO public.games VALUES (225, 747, 93, 744);
INSERT INTO public.games VALUES (226, 311, 93, 309);
INSERT INTO public.games VALUES (227, 933, 93, 932);
INSERT INTO public.games VALUES (228, 620, 95, 619);
INSERT INTO public.games VALUES (229, 485, 95, 484);
INSERT INTO public.games VALUES (230, 408, 96, 407);
INSERT INTO public.games VALUES (231, 668, 96, 667);
INSERT INTO public.games VALUES (232, 635, 95, 632);
INSERT INTO public.games VALUES (233, 608, 95, 606);
INSERT INTO public.games VALUES (234, 50, 95, 49);
INSERT INTO public.games VALUES (235, 736, 97, 735);
INSERT INTO public.games VALUES (236, 133, 97, 132);
INSERT INTO public.games VALUES (237, 694, 98, 693);
INSERT INTO public.games VALUES (238, 771, 98, 770);
INSERT INTO public.games VALUES (239, 387, 97, 384);
INSERT INTO public.games VALUES (240, 17, 97, 15);
INSERT INTO public.games VALUES (241, 915, 97, 914);
INSERT INTO public.games VALUES (242, 748, 99, 747);
INSERT INTO public.games VALUES (243, 5, 99, 4);
INSERT INTO public.games VALUES (244, 402, 100, 401);
INSERT INTO public.games VALUES (245, 736, 100, 735);
INSERT INTO public.games VALUES (246, 995, 99, 992);
INSERT INTO public.games VALUES (247, 798, 99, 796);
INSERT INTO public.games VALUES (248, 446, 99, 445);
INSERT INTO public.games VALUES (249, 716, 101, 715);
INSERT INTO public.games VALUES (250, 48, 101, 47);
INSERT INTO public.games VALUES (251, 228, 102, 227);
INSERT INTO public.games VALUES (252, 564, 102, 563);
INSERT INTO public.games VALUES (253, 99, 101, 96);
INSERT INTO public.games VALUES (254, 216, 101, 214);
INSERT INTO public.games VALUES (255, 616, 101, 615);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (20, 'user_1668417723165');
INSERT INTO public.users VALUES (21, 'user_1668417723164');
INSERT INTO public.users VALUES (22, 'user_1668417807183');
INSERT INTO public.users VALUES (23, 'user_1668417807182');
INSERT INTO public.users VALUES (24, 'user_1668420198969');
INSERT INTO public.users VALUES (25, 'user_1668420198968');
INSERT INTO public.users VALUES (26, 'user_1668421253216');
INSERT INTO public.users VALUES (27, 'user_1668421253215');
INSERT INTO public.users VALUES (28, 'user_1668421276005');
INSERT INTO public.users VALUES (29, 'user_1668421276004');
INSERT INTO public.users VALUES (30, 'not me');
INSERT INTO public.users VALUES (31, 'user_1668422369738');
INSERT INTO public.users VALUES (32, 'user_1668422369737');
INSERT INTO public.users VALUES (33, 'user_1668422405724');
INSERT INTO public.users VALUES (34, 'user_1668422405723');
INSERT INTO public.users VALUES (35, 'user_1668422518597');
INSERT INTO public.users VALUES (36, 'user_1668422518596');
INSERT INTO public.users VALUES (37, 'user_1668422672398');
INSERT INTO public.users VALUES (38, 'user_1668422672397');
INSERT INTO public.users VALUES (39, 'user_1668422783300');
INSERT INTO public.users VALUES (40, 'user_1668422783299');
INSERT INTO public.users VALUES (72, 'user_1668433772898');
INSERT INTO public.users VALUES (73, 'user_1668433772897');
INSERT INTO public.users VALUES (74, 'haha');
INSERT INTO public.users VALUES (75, 'user_1668434123840');
INSERT INTO public.users VALUES (76, 'user_1668434123839');
INSERT INTO public.users VALUES (77, 'user_1668434237850');
INSERT INTO public.users VALUES (78, 'user_1668434237849');
INSERT INTO public.users VALUES (79, 'user_1668434313581');
INSERT INTO public.users VALUES (80, 'user_1668434313580');
INSERT INTO public.users VALUES (81, 'user_1668434396491');
INSERT INTO public.users VALUES (82, 'user_1668434396490');
INSERT INTO public.users VALUES (83, 'user_1668434869168');
INSERT INTO public.users VALUES (84, 'user_1668434869167');
INSERT INTO public.users VALUES (85, 'user_1668434881235');
INSERT INTO public.users VALUES (86, 'user_1668434881234');
INSERT INTO public.users VALUES (87, 'user_1668434955696');
INSERT INTO public.users VALUES (88, 'user_1668434955695');
INSERT INTO public.users VALUES (89, 'user_1668435090566');
INSERT INTO public.users VALUES (90, 'user_1668435090565');
INSERT INTO public.users VALUES (91, 'user_1668435099415');
INSERT INTO public.users VALUES (92, 'user_1668435099414');
INSERT INTO public.users VALUES (93, 'user_1668435196830');
INSERT INTO public.users VALUES (94, 'user_1668435196829');
INSERT INTO public.users VALUES (95, 'user_1668435321318');
INSERT INTO public.users VALUES (96, 'user_1668435321317');
INSERT INTO public.users VALUES (97, 'user_1668435385881');
INSERT INTO public.users VALUES (98, 'user_1668435385880');
INSERT INTO public.users VALUES (99, 'user_1668435493527');
INSERT INTO public.users VALUES (100, 'user_1668435493526');
INSERT INTO public.users VALUES (101, 'user_1668435501587');
INSERT INTO public.users VALUES (102, 'user_1668435501586');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 255, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 102, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

