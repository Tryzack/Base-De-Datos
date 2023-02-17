--
-- PostgreSQL database dump
--

-- Dumped from database version 14.4
-- Dumped by pg_dump version 14.4

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
-- Name: clientes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.clientes (
    id_cliente integer NOT NULL,
    nom_cliente text,
    apellido_cliente text,
    direccion_cliente text,
    telefono_cliente text
);


ALTER TABLE public.clientes OWNER TO postgres;

--
-- Name: clientes_id_cliente_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.clientes_id_cliente_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.clientes_id_cliente_seq OWNER TO postgres;

--
-- Name: clientes_id_cliente_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.clientes_id_cliente_seq OWNED BY public.clientes.id_cliente;


--
-- Name: detalle_de_la_factura; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.detalle_de_la_factura (
    id_detalle_factura integer NOT NULL,
    id_factura integer,
    id_empleado integer,
    id_plato integer,
    id_mesa integer
);


ALTER TABLE public.detalle_de_la_factura OWNER TO postgres;

--
-- Name: detalle_de_la_factura_id_detalle_factura_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.detalle_de_la_factura_id_detalle_factura_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.detalle_de_la_factura_id_detalle_factura_seq OWNER TO postgres;

--
-- Name: detalle_de_la_factura_id_detalle_factura_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.detalle_de_la_factura_id_detalle_factura_seq OWNED BY public.detalle_de_la_factura.id_detalle_factura;


--
-- Name: empleados; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.empleados (
    id_empleado integer NOT NULL,
    nom_empleado text,
    apellido_empleado text,
    telefono_empleado text,
    direccion_empleado text,
    cargo_empleado text,
    id_establecimiento integer
);


ALTER TABLE public.empleados OWNER TO postgres;

--
-- Name: empleados_id_empleado_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.empleados_id_empleado_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.empleados_id_empleado_seq OWNER TO postgres;

--
-- Name: empleados_id_empleado_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.empleados_id_empleado_seq OWNED BY public.empleados.id_empleado;


--
-- Name: establecimientos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.establecimientos (
    id_establecimiento integer NOT NULL,
    nom_establecimientos text,
    telefono text,
    direccion text
);


ALTER TABLE public.establecimientos OWNER TO postgres;

--
-- Name: establecimientos_id_establecimiento_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.establecimientos_id_establecimiento_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.establecimientos_id_establecimiento_seq OWNER TO postgres;

--
-- Name: establecimientos_id_establecimiento_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.establecimientos_id_establecimiento_seq OWNED BY public.establecimientos.id_establecimiento;


--
-- Name: factura; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.factura (
    id_factura integer NOT NULL,
    id_cliente integer,
    fecha date
);


ALTER TABLE public.factura OWNER TO postgres;

--
-- Name: factura_id_factura_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.factura_id_factura_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.factura_id_factura_seq OWNER TO postgres;

--
-- Name: factura_id_factura_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.factura_id_factura_seq OWNED BY public.factura.id_factura;


--
-- Name: mesa; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.mesa (
    id_mesa integer NOT NULL,
    num_mesa integer
);


ALTER TABLE public.mesa OWNER TO postgres;

--
-- Name: mesa_id_mesa_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.mesa_id_mesa_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.mesa_id_mesa_seq OWNER TO postgres;

--
-- Name: mesa_id_mesa_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.mesa_id_mesa_seq OWNED BY public.mesa.id_mesa;


--
-- Name: platos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.platos (
    id_plato integer NOT NULL,
    nom_plato text,
    precio_plato double precision
);


ALTER TABLE public.platos OWNER TO postgres;

--
-- Name: platos_id_plato_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.platos_id_plato_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.platos_id_plato_seq OWNER TO postgres;

--
-- Name: platos_id_plato_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.platos_id_plato_seq OWNED BY public.platos.id_plato;


--
-- Name: reservaciones; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.reservaciones (
    id_reserva integer NOT NULL,
    id_cliente integer,
    id_mesa integer,
    fecha_reservacion date,
    id_establecimiento integer
);


ALTER TABLE public.reservaciones OWNER TO postgres;

--
-- Name: reservaciones_id_reserva_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.reservaciones_id_reserva_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.reservaciones_id_reserva_seq OWNER TO postgres;

--
-- Name: reservaciones_id_reserva_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.reservaciones_id_reserva_seq OWNED BY public.reservaciones.id_reserva;


--
-- Name: clientes id_cliente; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.clientes ALTER COLUMN id_cliente SET DEFAULT nextval('public.clientes_id_cliente_seq'::regclass);


--
-- Name: detalle_de_la_factura id_detalle_factura; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.detalle_de_la_factura ALTER COLUMN id_detalle_factura SET DEFAULT nextval('public.detalle_de_la_factura_id_detalle_factura_seq'::regclass);


--
-- Name: empleados id_empleado; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.empleados ALTER COLUMN id_empleado SET DEFAULT nextval('public.empleados_id_empleado_seq'::regclass);


--
-- Name: establecimientos id_establecimiento; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.establecimientos ALTER COLUMN id_establecimiento SET DEFAULT nextval('public.establecimientos_id_establecimiento_seq'::regclass);


--
-- Name: factura id_factura; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.factura ALTER COLUMN id_factura SET DEFAULT nextval('public.factura_id_factura_seq'::regclass);


--
-- Name: mesa id_mesa; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mesa ALTER COLUMN id_mesa SET DEFAULT nextval('public.mesa_id_mesa_seq'::regclass);


--
-- Name: platos id_plato; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.platos ALTER COLUMN id_plato SET DEFAULT nextval('public.platos_id_plato_seq'::regclass);


--
-- Name: reservaciones id_reserva; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reservaciones ALTER COLUMN id_reserva SET DEFAULT nextval('public.reservaciones_id_reserva_seq'::regclass);


--
-- Data for Name: clientes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.clientes (id_cliente, nom_cliente, apellido_cliente, direccion_cliente, telefono_cliente) FROM stdin;
1	Niki	Marty	409 Milwaukee Circle	469 436 8499
2	Carmine	Habbershon	45 Grasskamp Court	527 353 4273
3	Nicko	Jeannon	81 Fairview Center	131 666 5002
4	Julee	Carlucci	891 Swallow Hill	605 982 8368
5	Waiter	Le Gallo	0394 Fallview Terrace	737 674 0486
6	Darcee	Skarr	08268 Clemons Avenue	838 343 8226
7	Eachelle	Deluce	0261 Sachtjen Place	131 251 6807
8	Dareen	Tuer	64038 Trailsway Pass	894 346 4425
9	Terrill	Standon	8 Pearson Crossing	946 367 0785
10	Constantin	Kingerby	08 Dottie Center	323 704 3759
11	Gabi	Pearde	57367 Starling Road	641 852 1601
12	Bonita	Chase	2241 Starling Plaza	640 456 0079
13	Randell	Denning	41 Moulton Terrace	373 794 2348
14	Emmalynn	Patis	72714 David Way	898 471 8552
15	Joachim	Durtnell	4344 Clyde Gallagher Junction	646 218 5756
16	Trude	Strapp	25040 Carberry Circle	741 191 9582
17	Marcus	Fincham	7189 Northland Terrace	983 842 3015
18	Carleen	Woodhead	53 Ridgeview Point	948 328 0392
19	Lizzie	Butcher	7 Amoth Trail	767 759 6175
20	Cristabel	Yanshonok	92882 Delaware Alley	654 952 9104
21	Henka	Snyder	08 Loftsgordon Avenue	319 956 8691
22	Brittani	Horley	7657 Lotheville Avenue	602 951 7873
23	Ossie	Toffanelli	01844 Saint Paul Alley	723 158 7054
24	Nell	Kobelt	4 Sage Street	918 622 4035
25	Hadley	Rottery	2047 Forster Court	898 180 1984
26	Tommie	Gonthard	4 Hanson Place	682 831 1073
27	Madlin	Dublin	7098 Quincy Street	859 339 0906
28	Angelico	Antonetti	2 Memorial Parkway	685 326 7429
29	Cybil	Berzons	96 Ridgeway Place	707 668 4868
30	Hyacinthe	Curreen	5695 Banding Way	591 502 7054
31	Franklin	Haslock(e)	6 Crownhardt Hill	699 780 7782
32	Fanchon	Zapata	054 Clove Trail	880 436 3234
33	Peggie	Piercey	846 Pond Court	552 430 2116
34	Ciel	Goning	13521 Meadow Vale Court	417 288 1045
35	Mari	Braden	41 Columbus Terrace	156 758 6693
36	Tressa	Wicks	95177 Bluejay Circle	474 779 7532
37	Ignacius	Pentony	08477 Mayfield Avenue	157 145 2992
38	Esmeralda	Bulpitt	01 Randy Alley	173 887 4410
39	Viviene	Eagland	3810 Evergreen Street	142 786 6666
40	Cherry	Frensch	18079 Eastwood Hill	234 404 1027
41	Ashby	Albone	03 Summit Point	580 586 1894
42	Heida	Crank	8 Ronald Regan Road	409 744 1550
43	Nance	Frodsham	366 Magdeline Place	956 343 3540
44	Verna	Pettit	7 Eastlawn Avenue	781 318 7268
45	Abbott	Birkby	911 Paget Park	451 715 8383
46	Oliviero	Sicily	2 Brickson Park Circle	443 879 9335
47	Dunn	Glanister	898 Arrowood Road	475 279 4701
48	Christos	Belfit	99 Thompson Crossing	923 984 2445
49	Danna	Kaesmakers	41686 Tennessee Road	972 997 8732
50	Nathalie	Rangall	3740 Erie Street	572 614 2133
51	Virginie	Lettuce	159 Tennyson Street	611 229 6592
52	Lilly	Marling	9 Cordelia Trail	520 735 1071
53	Alonso	Gardener	9177 Buhler Court	323 941 4187
54	Percy	Persse	1 Old Shore Alley	813 773 8886
55	Aida	Marklund	29 Weeping Birch Drive	148 369 7374
56	Dasi	Fenning	588 Union Trail	447 615 2179
57	Giustino	Coltan	1601 Melrose Alley	399 656 0767
58	Denna	Gavey	2600 Loomis Park	809 419 6819
59	Viviana	Bulluck	40 Ramsey Park	441 830 9081
60	Carly	Darragh	6658 Carpenter Circle	513 946 8738
61	Gery	Glennard	6 Sage Lane	215 560 4121
62	Marcelia	Pering	8 Golf View Crossing	907 178 9752
63	Newton	Escoffrey	1569 Becker Parkway	713 572 5281
64	Anabelle	Bartosik	179 Hanover Center	654 816 9787
65	Branden	Wheal	5 Upham Park	109 921 2289
66	Natalina	Lumox	8072 Donald Center	346 238 8937
67	Pepita	Seggie	0778 Westend Lane	867 816 9231
68	Hedvig	Thorndycraft	46023 Westerfield Lane	787 816 8061
69	Umberto	Drysdell	458 Everett Center	476 110 4190
70	Noell	Mannagh	487 Mosinee Plaza	370 557 1991
71	Granville	Lohden	3489 Melody Circle	492 322 7774
72	Addie	Noweak	1697 Katie Hill	954 566 0142
73	Petronille	Penella	79538 Porter Court	380 706 1880
74	Lucius	Indge	6 Calypso Place	859 194 3521
75	Mary	Bosher	10743 Messerschmidt Crossing	578 190 5337
76	Drusie	Timlin	8 Grayhawk Park	407 650 6848
77	Dallis	Werndly	08 Jenna Plaza	203 244 8341
78	Sibella	Newton	073 Bonner Junction	780 619 0274
79	Alley	Rubee	799 Scoville Circle	715 623 5530
80	Jenn	Basey	4 Vahlen Street	113 919 3636
81	Minne	Lain	1277 Ramsey Court	835 204 0871
82	Cary	Ransfield	70 Northwestern Terrace	264 715 0563
83	Anissa	Ingyon	18228 Forster Way	243 416 8923
84	Kora	Deek	78 Meadow Valley Court	561 392 7191
85	Trish	Powdrell	8492 Thompson Junction	646 517 3508
86	Alessandra	MacDearmaid	240 Huxley Circle	806 522 6962
87	Vonni	Smaridge	3492 Pepper Wood Circle	389 329 7521
88	Shelba	Maker	017 Bartelt Lane	264 310 6330
89	Maritsa	De Mattei	62793 Service Terrace	533 323 9243
90	Letty	Wallworke	8 Burrows Lane	939 776 0730
91	Elwyn	Cicconetti	76410 Hudson Crossing	307 264 0537
92	Oliver	Longford	694 Annamark Way	441 221 3047
93	Franklin	Matussevich	38126 Jackson Hill	537 771 0829
94	Edith	Zucker	712 Cherokee Street	180 710 0788
95	Genna	Cameron	1 Ronald Regan Pass	434 961 6513
96	Wiley	Hynde	367 Hansons Street	769 551 1210
97	Georas	Duval	3967 Boyd Court	605 355 2668
98	Leon	Vala	5 Hansons Circle	398 719 8492
99	Portia	Fetterplace	60 Bonner Avenue	301 923 9063
100	Dal	Pales	4432 Longview Lane	205 769 2181
\.


--
-- Data for Name: detalle_de_la_factura; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.detalle_de_la_factura (id_detalle_factura, id_factura, id_empleado, id_plato, id_mesa) FROM stdin;
2	373	3	2	92
3	268	43	68	47
4	713	39	45	63
5	34	21	23	23
6	284	40	86	56
7	263	4	24	37
8	116	47	25	3
9	463	61	1	2
10	220	12	2	1
11	729	5	78	69
12	693	91	97	63
13	431	73	42	85
14	122	67	3	41
15	786	96	7	2
16	235	26	60	85
17	332	31	3	61
18	834	51	21	95
19	114	2	38	99
20	677	69	5	67
21	924	22	97	90
22	612	40	84	74
23	336	37	53	36
24	753	28	10	66
25	233	94	64	78
26	932	3	82	7
27	230	43	86	56
28	566	64	76	88
29	100	64	2	96
30	800	3	4	86
31	792	52	99	70
32	434	67	66	95
33	433	57	82	56
34	863	52	70	29
35	279	63	69	27
36	149	15	71	76
37	853	58	66	9
38	112	46	8	58
39	643	20	10	73
40	884	56	18	36
41	786	25	77	55
42	976	54	41	9
43	853	25	11	42
44	817	76	13	20
45	437	31	17	99
46	194	8	89	25
47	481	10	57	9
48	514	3	57	36
49	755	12	43	33
50	344	28	74	6
51	545	16	22	70
52	878	67	4	18
53	830	15	34	85
54	91	5	65	6
55	886	12	36	99
56	474	26	95	10
57	2	83	31	9
58	355	76	19	11
59	394	26	55	89
60	791	44	1	15
61	536	28	27	79
62	679	93	85	45
63	688	50	45	100
64	956	57	95	75
65	102	65	1	27
66	107	70	89	69
67	283	85	35	25
68	812	42	52	92
69	231	31	63	63
70	714	94	76	56
71	414	80	36	80
72	651	64	23	40
73	138	75	28	88
74	559	11	28	25
75	799	42	50	100
76	969	90	81	77
77	203	58	70	82
78	222	5	77	9
79	730	75	99	82
80	253	1	14	69
81	710	32	69	72
82	503	56	26	4
83	41	39	63	35
84	407	9	77	23
85	496	30	87	24
86	121	17	44	59
87	43	97	98	40
88	589	67	65	70
89	725	85	73	34
90	181	18	11	2
91	634	45	49	83
92	784	99	11	22
93	757	96	67	95
94	165	19	63	50
95	409	22	49	28
96	124	45	100	53
97	268	1	41	56
98	551	12	61	3
99	223	89	89	24
100	916	50	44	100
101	313	22	92	81
102	733	91	22	89
103	243	20	41	57
104	71	78	49	99
105	450	27	81	2
106	845	72	12	73
107	718	71	44	6
108	398	21	65	67
109	496	84	6	38
110	500	54	91	56
111	689	95	51	25
112	674	26	51	45
113	667	32	70	55
114	747	42	18	5
115	12	54	85	87
116	775	79	22	84
117	53	89	83	54
118	286	27	27	91
119	975	26	74	73
120	279	47	28	95
121	818	83	81	51
122	684	8	12	14
123	482	79	17	1
124	148	20	3	18
125	558	89	23	100
126	218	17	87	61
127	508	37	10	6
128	961	93	22	99
129	941	63	100	98
130	665	87	34	10
131	490	17	9	79
132	795	81	97	68
133	183	71	89	61
134	200	84	36	42
135	615	71	85	32
136	577	67	40	46
137	348	87	13	100
138	232	42	31	3
139	779	71	22	92
140	303	52	24	44
141	489	7	81	14
142	513	5	32	87
143	940	20	90	94
144	771	95	38	71
145	213	35	66	76
146	619	67	93	40
147	135	79	30	69
148	761	72	61	98
149	527	75	38	95
150	772	10	13	61
151	799	47	46	100
152	105	70	22	93
153	220	68	77	80
154	314	82	87	94
155	49	39	69	62
156	942	12	54	34
157	498	55	100	2
158	567	54	11	65
159	913	94	93	22
160	21	64	1	27
161	641	46	18	99
162	362	21	48	9
163	782	2	8	6
164	670	69	86	61
165	111	54	9	15
166	520	99	87	28
167	47	98	39	10
168	749	85	20	6
169	973	81	81	96
170	898	81	95	5
171	200	81	91	31
172	430	67	53	11
173	347	49	18	16
174	116	24	81	92
175	779	100	80	37
176	309	7	10	84
177	131	75	1	65
178	561	82	88	53
179	140	38	95	67
180	232	50	23	11
181	204	62	71	59
182	603	87	59	25
183	244	79	75	53
184	330	9	52	65
185	623	22	73	74
186	949	65	36	74
187	168	12	7	42
188	538	49	68	49
189	760	85	55	83
190	917	27	92	88
191	863	11	60	70
192	372	45	17	99
193	169	2	54	30
194	350	67	77	25
195	795	15	39	49
196	920	52	48	76
197	651	3	7	92
198	88	40	37	71
199	793	100	48	58
200	5	13	20	24
201	770	24	16	78
202	856	8	96	7
203	48	21	66	2
204	516	5	65	6
205	25	55	87	86
206	249	10	99	95
207	995	56	88	46
208	514	36	44	34
209	317	56	64	94
210	699	4	33	10
211	732	89	34	16
212	95	76	63	1
213	635	99	80	33
214	42	90	85	65
215	552	37	80	79
216	253	89	33	63
217	866	72	70	14
218	18	35	47	32
219	829	70	50	14
220	875	96	15	7
221	326	63	19	81
222	188	65	39	35
223	843	1	37	59
224	947	63	27	9
225	145	70	10	4
226	488	70	38	54
227	90	76	30	20
228	76	12	53	31
229	940	73	94	75
230	428	57	2	47
231	914	13	68	50
232	73	89	83	85
233	215	9	23	28
234	878	26	93	37
235	475	10	50	67
236	855	26	54	77
237	208	84	80	43
238	392	86	40	59
239	615	28	29	66
240	813	47	45	96
241	366	27	37	18
242	674	90	79	9
243	865	67	42	23
244	213	89	65	9
245	879	47	96	50
246	821	30	2	32
247	397	23	69	8
248	107	22	13	92
249	460	97	81	79
250	343	38	95	77
251	106	64	54	9
252	936	60	12	47
253	251	69	51	3
254	950	84	68	21
255	329	30	44	2
256	351	98	99	13
257	51	57	74	86
258	154	97	94	36
259	494	66	25	60
260	495	75	84	62
261	422	40	53	69
262	142	68	99	75
263	961	77	33	91
264	911	47	53	75
265	213	93	56	41
266	909	32	51	14
267	208	2	61	73
268	890	38	56	23
269	172	75	83	29
270	497	94	7	93
271	310	70	22	82
272	778	6	19	36
273	138	91	53	21
274	136	48	96	98
275	957	44	63	73
276	556	52	99	100
277	486	29	20	1
278	507	68	3	55
279	977	32	34	82
280	309	47	49	26
281	542	99	28	19
282	99	31	14	34
283	704	23	49	4
284	22	21	9	46
285	442	26	18	76
286	493	92	94	67
287	488	39	92	17
288	645	79	13	47
289	733	17	36	43
290	107	18	99	48
291	503	84	51	69
292	733	5	86	11
293	103	60	62	25
294	124	99	21	57
295	869	77	94	14
296	36	94	63	79
297	916	65	84	5
298	527	44	51	17
299	260	68	32	26
300	852	14	71	68
301	955	9	11	28
302	393	56	88	28
303	857	9	17	42
304	897	37	67	68
305	866	84	91	51
306	395	19	84	70
307	698	81	68	80
308	255	6	13	98
309	202	54	20	96
310	686	42	63	63
311	804	85	56	95
312	245	28	80	91
313	736	46	72	96
314	322	23	32	49
315	771	34	57	47
316	803	91	58	45
317	878	97	64	59
318	670	62	74	55
319	507	45	22	41
320	435	3	96	56
321	185	71	69	25
322	536	91	50	57
323	18	71	63	56
324	999	49	89	11
325	35	94	21	96
326	52	3	30	52
327	487	48	62	49
328	104	60	19	48
329	370	1	21	58
330	602	72	68	1
331	802	12	8	62
332	393	13	32	31
333	313	19	87	84
334	589	23	22	98
335	267	35	70	82
336	402	32	57	30
337	795	2	4	69
338	739	81	30	97
339	519	14	13	82
340	509	9	8	81
341	328	39	66	9
342	134	90	42	67
343	603	31	51	84
344	367	63	55	21
345	44	44	30	61
346	64	88	61	16
347	801	79	25	44
348	796	10	72	13
349	436	50	46	1
350	432	6	99	3
351	310	81	88	64
352	112	43	93	83
353	667	85	18	51
354	285	71	46	50
355	629	88	82	24
356	624	96	33	65
357	477	78	98	16
358	959	17	79	22
359	468	45	74	9
360	800	46	48	32
361	952	32	93	61
362	869	70	49	32
363	537	45	18	39
364	88	17	74	19
365	248	93	7	36
366	77	90	10	18
367	256	99	91	60
368	582	19	46	46
369	63	20	25	80
370	500	86	30	28
371	854	32	93	57
372	457	39	55	18
373	727	29	30	99
374	857	48	100	3
375	390	19	9	49
376	846	49	15	83
377	114	96	53	5
378	328	46	10	37
379	534	1	79	18
380	484	91	70	92
381	88	35	42	43
382	273	8	15	2
383	158	53	61	28
384	93	75	36	78
385	602	60	76	20
386	686	23	44	45
387	13	13	55	46
388	413	75	15	12
389	52	67	37	24
390	42	98	49	15
391	527	45	45	76
392	388	92	16	66
393	147	61	78	99
394	857	52	45	51
395	411	73	66	43
396	419	99	97	1
397	184	100	49	40
398	103	57	41	6
399	728	37	78	61
400	482	93	13	81
401	188	58	53	23
402	262	84	35	37
403	935	70	41	35
404	648	22	83	84
405	260	3	50	2
406	29	44	54	46
407	942	37	14	84
408	104	63	43	12
409	781	73	8	45
410	822	96	38	90
411	866	32	32	87
412	524	68	17	23
413	231	15	84	88
414	478	32	69	1
415	754	37	14	32
416	973	75	92	94
417	535	90	67	82
418	463	31	99	20
419	800	68	31	76
420	57	55	91	53
421	387	16	80	45
422	682	2	40	23
423	834	27	86	87
424	385	25	13	57
425	583	7	43	38
426	119	55	21	94
427	583	10	16	67
428	711	2	98	68
429	206	17	15	63
430	391	97	84	12
431	424	92	91	10
432	896	63	40	2
433	767	46	57	74
434	255	98	30	84
435	16	51	31	34
436	516	42	61	16
437	516	68	9	41
438	971	90	71	15
439	290	33	98	58
440	47	20	2	71
441	215	25	28	54
442	719	29	88	23
443	993	43	42	23
444	898	76	65	40
445	979	40	22	37
446	668	73	42	65
447	240	84	11	71
448	260	48	52	13
449	521	14	17	51
450	343	92	65	81
451	369	13	69	63
452	601	61	78	81
453	687	37	28	1
454	483	35	13	13
455	255	62	5	73
456	891	37	84	84
457	753	100	49	67
458	892	54	19	1
459	786	23	97	96
460	674	14	86	35
461	797	83	88	99
462	185	23	34	41
463	64	41	85	53
464	757	29	17	38
465	546	80	71	69
466	50	65	21	95
467	914	23	38	61
468	816	45	65	62
469	619	17	5	96
470	907	46	77	93
471	722	37	71	47
472	228	5	69	9
473	460	41	37	90
474	488	27	12	6
475	406	88	74	16
476	291	46	34	63
477	870	23	21	48
478	33	74	36	9
479	953	31	24	100
480	801	45	43	51
481	696	13	53	53
482	719	55	49	83
483	771	64	67	22
484	208	100	27	48
485	92	86	44	100
486	561	88	82	8
487	756	50	87	54
488	695	1	53	18
489	866	29	66	56
490	643	29	7	89
491	31	7	78	56
492	852	28	5	96
493	836	41	5	59
494	41	99	15	99
495	321	66	68	60
496	864	59	47	49
497	53	22	98	62
498	775	87	84	34
499	731	31	62	53
500	292	5	64	17
501	361	79	61	26
502	563	16	51	87
503	663	96	51	12
504	797	24	95	80
505	936	34	82	38
506	595	97	10	67
507	914	85	27	48
508	289	56	100	77
509	987	23	32	80
510	223	77	50	1
511	968	27	44	16
512	231	63	82	65
513	259	31	73	27
514	214	34	97	27
515	768	91	72	68
516	260	25	5	54
517	953	83	69	87
518	245	77	34	34
519	160	44	40	38
520	468	92	75	69
521	229	13	4	55
522	587	7	85	21
523	11	33	83	97
524	856	23	66	17
525	521	46	90	13
526	927	90	98	88
527	581	97	22	3
528	165	88	35	5
529	118	55	89	12
530	832	57	33	13
531	302	52	4	90
532	615	100	47	19
533	759	49	30	8
534	114	59	56	99
535	524	15	25	96
536	748	14	53	12
537	718	88	16	6
538	565	25	77	1
539	578	68	95	81
540	808	77	60	55
541	74	56	80	74
542	543	51	40	17
543	830	34	1	85
544	303	6	3	91
545	842	91	38	15
546	761	11	33	15
547	209	56	70	58
548	157	20	28	47
549	621	48	8	18
550	102	72	39	69
551	882	6	97	100
552	33	21	95	59
553	915	60	75	67
554	718	30	65	36
555	711	46	28	43
556	640	99	99	65
557	429	50	42	40
558	606	91	16	28
559	493	47	94	60
560	124	18	43	94
561	22	11	74	89
562	806	49	20	88
563	659	46	60	5
564	786	86	32	39
565	856	92	37	51
566	311	100	80	17
567	218	94	27	6
568	242	87	81	59
569	121	38	45	96
570	447	35	36	71
571	918	55	33	75
572	307	89	22	52
573	557	71	89	14
574	986	54	69	63
575	603	5	32	87
576	160	96	59	91
577	839	53	5	47
578	532	84	3	97
579	638	55	22	45
580	201	69	55	34
581	546	68	11	30
582	988	90	44	91
583	336	64	93	78
584	385	74	29	45
585	322	44	61	76
586	329	63	70	27
587	454	62	30	31
588	500	94	72	52
589	945	94	54	13
590	356	67	81	61
591	598	25	30	87
592	115	76	32	5
593	989	15	32	13
594	321	52	35	49
595	259	35	17	34
596	869	17	33	54
597	192	32	16	90
598	808	37	24	47
599	353	44	69	17
600	631	73	6	18
601	420	51	10	71
602	707	2	60	23
603	321	8	57	100
604	337	36	17	38
605	794	43	18	20
606	269	99	87	51
607	969	41	98	46
608	585	99	90	2
609	383	53	3	44
610	53	45	57	54
611	880	53	45	82
612	158	35	100	19
613	570	42	71	86
614	756	21	61	62
615	284	96	33	78
616	20	93	41	84
617	755	47	42	85
618	880	65	43	12
619	668	69	42	31
620	974	94	13	30
621	760	38	9	24
622	731	74	31	87
623	245	81	61	96
624	802	68	88	71
625	985	44	47	56
626	546	70	55	74
627	467	69	40	54
628	505	24	2	34
629	969	21	84	76
630	505	55	96	73
631	848	16	89	47
632	596	13	89	23
633	754	81	15	38
634	160	6	13	95
635	874	79	10	70
636	192	18	88	28
637	203	100	47	4
638	579	15	30	30
639	829	15	33	53
640	160	93	10	63
641	751	29	36	100
642	116	33	90	68
643	665	71	21	13
644	912	11	41	4
645	464	63	91	87
646	561	57	16	15
647	259	1	81	82
648	525	36	46	37
649	60	4	65	24
650	876	14	67	89
651	839	36	4	9
652	583	12	67	29
653	823	72	74	46
654	426	7	100	74
655	810	52	44	85
656	250	70	83	65
657	651	73	8	86
658	479	33	81	77
659	282	69	30	64
660	771	67	84	2
661	991	37	67	52
662	121	26	69	11
663	636	76	69	75
664	494	60	57	58
665	774	68	23	78
666	705	24	16	83
667	23	6	100	76
668	812	33	90	10
669	258	55	74	4
670	467	28	50	55
671	537	74	39	41
672	428	41	91	67
673	335	67	78	92
674	373	16	90	1
675	840	29	28	27
676	559	44	45	77
677	72	92	34	79
678	52	45	84	56
679	780	43	18	4
680	87	6	94	57
681	482	89	64	55
682	549	59	84	60
683	742	52	1	89
684	853	69	20	11
685	248	14	93	43
686	73	71	64	95
687	907	80	25	86
688	135	85	77	49
689	407	68	18	22
690	297	21	27	68
691	854	92	81	99
692	871	71	43	74
693	176	67	44	29
694	715	3	44	44
695	649	22	97	60
696	650	71	16	34
697	703	10	27	77
698	593	29	94	64
699	932	72	3	100
700	709	11	34	99
701	552	55	11	67
702	851	10	3	18
703	86	29	99	68
704	762	10	70	6
705	455	56	19	34
706	993	45	33	84
707	627	1	81	1
708	217	48	22	78
709	41	58	19	27
710	107	29	72	59
711	512	34	24	14
712	221	11	94	74
713	650	90	8	62
714	52	44	30	31
715	290	27	47	47
716	908	90	87	16
717	330	18	50	72
718	981	72	84	9
719	259	56	94	30
720	174	27	19	97
721	134	81	86	42
722	548	51	98	44
723	264	96	82	47
724	790	5	86	33
725	782	60	92	56
726	621	60	25	93
727	191	47	15	37
728	732	54	7	20
729	712	15	30	59
730	35	2	53	76
731	660	51	80	38
732	813	65	84	44
733	594	89	61	83
734	712	75	61	37
735	207	19	41	32
736	130	3	96	45
737	379	45	68	11
738	153	75	29	8
739	238	97	50	89
740	703	55	84	20
741	13	27	95	93
742	950	83	29	68
743	747	34	21	15
744	57	49	49	29
745	786	38	4	18
746	396	92	78	73
747	237	51	89	97
748	357	99	86	60
749	790	1	62	54
750	883	62	55	25
751	834	11	90	60
752	914	48	49	45
753	873	96	18	33
754	414	27	77	48
755	827	98	11	85
756	327	38	60	18
757	561	86	19	43
758	164	83	1	41
759	41	88	71	40
760	364	2	67	81
761	107	25	51	12
762	363	37	87	52
763	816	18	31	8
764	859	96	60	95
765	944	16	88	79
766	202	82	41	73
767	143	59	17	47
768	932	78	43	8
769	291	51	86	53
770	862	17	28	87
771	149	49	22	17
772	1000	5	38	81
773	333	84	74	66
774	254	3	94	53
775	489	36	42	62
776	584	86	88	89
777	253	53	77	82
778	393	71	4	51
779	910	25	75	32
780	736	80	48	70
781	741	30	28	50
782	471	100	69	83
783	980	55	71	13
784	116	22	89	70
785	278	51	79	75
786	647	42	85	71
787	523	41	49	18
788	737	57	75	15
789	681	48	16	66
790	704	13	86	81
791	607	81	7	78
792	901	76	63	78
793	527	23	89	8
794	724	99	49	37
795	326	53	49	91
796	301	22	15	67
797	490	39	81	40
798	868	100	68	56
799	949	97	86	64
800	224	50	19	25
801	354	3	94	91
802	542	65	50	65
803	698	65	63	79
804	95	86	39	55
805	125	29	14	33
806	819	17	56	95
807	284	26	21	92
808	620	97	89	85
809	218	81	70	78
810	501	62	49	80
811	869	85	87	5
812	451	2	39	22
813	424	77	24	84
814	840	13	100	41
815	490	82	68	62
816	796	25	34	30
817	798	79	27	89
818	351	54	74	29
819	566	24	94	20
820	4	65	43	83
821	751	72	57	69
822	213	35	55	8
823	58	39	62	20
824	332	88	53	77
825	17	95	3	69
826	213	14	51	12
827	733	43	11	86
828	918	3	3	17
829	554	51	63	88
830	800	70	77	13
831	427	85	69	100
832	5	7	49	80
833	444	4	89	86
834	713	79	87	45
835	882	58	31	100
836	175	17	38	6
837	143	11	4	17
838	843	93	28	16
839	981	26	79	1
840	794	64	66	86
841	762	25	100	83
842	846	12	89	92
843	88	38	70	56
844	201	64	96	25
845	196	1	43	68
846	384	94	4	31
847	543	32	9	10
848	103	82	1	69
849	215	48	75	65
850	557	48	90	70
851	484	95	5	13
852	256	25	63	69
853	55	76	32	49
854	655	72	37	74
855	644	21	12	31
856	207	21	65	88
857	894	97	28	42
858	632	76	46	21
859	598	10	41	92
860	799	58	44	52
861	502	79	14	55
862	420	18	82	77
863	659	56	10	28
864	229	47	54	51
865	88	1	29	98
866	881	94	85	15
867	651	68	96	86
868	977	29	51	15
869	340	65	36	42
870	734	85	36	44
871	879	34	60	60
872	68	92	98	94
873	783	5	17	90
874	304	56	96	62
875	240	59	81	12
876	232	65	44	92
877	291	34	74	54
878	228	33	4	88
879	263	72	99	55
880	923	34	81	1
881	406	99	2	28
882	551	61	86	27
883	316	14	18	85
884	56	47	64	66
885	72	68	83	74
886	994	3	53	7
887	786	50	25	90
888	55	7	81	68
889	583	63	89	55
890	8	27	86	11
891	513	71	100	97
892	87	72	53	66
893	962	27	14	51
894	476	75	8	51
895	311	95	18	57
896	772	39	83	27
897	705	100	24	75
898	591	69	71	51
899	758	55	9	58
900	288	72	56	33
901	731	75	17	75
902	549	69	73	31
903	904	91	35	96
904	944	61	11	64
905	727	46	36	54
906	662	73	83	19
907	111	61	71	53
908	330	59	96	57
909	166	15	34	92
910	873	90	94	79
911	592	6	100	100
912	232	86	76	20
913	174	76	74	15
914	152	75	46	98
915	653	24	23	89
916	330	52	75	22
917	852	25	99	57
918	596	24	55	36
919	815	20	22	94
920	781	76	64	59
921	221	56	84	60
922	405	26	86	71
923	470	17	1	43
924	863	97	59	12
925	207	27	48	86
926	671	37	19	6
927	870	49	95	47
928	256	97	86	10
929	226	12	23	79
930	357	74	55	97
931	719	43	69	22
932	241	58	37	34
933	215	28	33	62
934	367	58	7	16
935	135	90	23	65
936	312	20	25	63
937	156	43	98	55
938	678	85	81	45
939	8	14	39	16
940	854	20	40	44
941	753	24	100	18
942	396	53	81	84
943	305	35	25	21
944	279	73	57	50
945	419	92	44	62
946	802	77	7	23
947	976	46	22	48
948	978	79	14	49
949	574	54	78	66
950	386	11	13	21
951	276	99	94	23
952	536	67	31	14
953	895	68	60	2
954	30	21	27	45
955	837	65	67	33
956	349	48	98	71
957	230	53	80	48
958	118	50	38	31
959	206	72	8	88
960	157	55	2	14
961	374	89	96	84
962	218	75	98	49
963	180	58	15	35
964	522	50	42	92
965	560	11	21	60
966	158	32	71	8
967	574	35	31	44
968	372	84	48	57
969	505	65	40	66
970	56	66	70	96
971	863	61	98	58
972	263	69	82	31
973	192	55	48	24
974	147	45	67	16
975	45	24	8	94
976	915	31	100	86
977	205	30	78	9
978	305	70	55	41
979	289	65	19	29
980	13	56	58	76
981	109	92	45	76
982	915	81	77	74
983	149	16	62	73
984	478	89	20	47
985	77	89	38	64
986	555	35	13	19
987	222	4	84	63
988	749	98	57	91
989	472	95	91	71
990	489	33	94	52
991	195	51	33	20
992	908	31	63	48
993	122	97	91	83
994	655	87	22	46
995	630	59	37	90
996	879	70	53	91
997	532	78	74	44
998	766	34	90	1
999	181	58	51	96
1000	129	35	7	53
1001	967	59	79	29
\.


--
-- Data for Name: empleados; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.empleados (id_empleado, nom_empleado, apellido_empleado, telefono_empleado, direccion_empleado, cargo_empleado, id_establecimiento) FROM stdin;
1	Flora	Tunnacliffe	910 542 8936	63 Crest Line Terrace	Clinical Specialist	73
2	Junie	Patullo	344 975 3705	0903 Delaware Hill	Payment Adjustment Coordinator	5
3	Elsie	Andresser	687 942 8848	9999 Myrtle Parkway	Sales Representative	55
4	Lindon	Parcell	821 868 1451	08029 Moose Hill	Legal Assistant	66
5	Eran	Aronowicz	732 298 5737	10 Northfield Center	Legal Assistant	2
6	Clerissa	Tompkinson	440 527 1870	686 Drewry Circle	Dental Hygienist	31
7	Amy	Jindra	225 202 3179	07060 Fremont Place	Senior Financial Analyst	31
8	Tess	Origin	876 682 6216	94 American Court	General Manager	44
9	Afton	Bavridge	486 257 1833	322 Oriole Plaza	Electrical Engineer	97
10	Tania	Costen	544 221 8105	05747 Truax Pass	Director of Sales	68
11	Cleopatra	Cliff	547 132 5793	7328 Marcy Court	VP Marketing	52
12	Lucretia	Biddleston	537 995 9927	95009 Grover Park	Help Desk Operator	13
13	Delores	Dallaghan	641 234 8364	70647 Farmco Terrace	Structural Engineer	61
14	Lambert	Gagg	438 111 4613	3 Del Sol Court	Staff Accountant IV	7
15	Ketty	Petrolli	964 850 5312	09074 Fordem Park	Media Manager III	21
16	Krisha	Goby	993 535 2280	32244 Bashford Crossing	Business Systems Development Analyst	16
17	West	Kesley	922 981 0641	57 Mcbride Park	Developer II	24
18	Belva	Clyburn	553 242 8474	4748 Crest Line Terrace	Sales Associate	57
19	Silvanus	Hicklingbottom	658 228 1012	0824 John Wall Pass	Sales Representative	80
20	Charmine	Braunlein	355 698 5592	51274 Bluestem Hill	Paralegal	38
21	Dante	Looby	723 584 9675	63905 Moose Park	Actuary	1
22	Nollie	Dalliwater	414 790 4887	3 Florence Drive	Software Consultant	57
23	Arman	Pancast	531 402 1386	526 Upham Plaza	Technical Writer	67
24	Ennis	Strank	217 900 1356	83 Northfield Street	Information Systems Manager	99
25	Tanhya	Broster	399 903 7479	81498 Banding Place	Professor	7
26	Korrie	Gwilym	435 608 9068	60897 Charing Cross Street	Assistant Media Planner	90
27	Judie	Ollive	493 268 3581	1409 Novick Alley	Editor	28
28	Mead	Bulbrook	665 387 4864	6165 Debs Avenue	Environmental Specialist	86
29	Lela	Gallemore	244 721 0165	37711 Schlimgen Avenue	Tax Accountant	82
30	Tiebout	Kalker	880 274 1570	1199 Caliangt Road	Nuclear Power Engineer	4
31	Jere	Silversmid	828 275 6235	16480 Parkside Park	Structural Engineer	74
32	Parker	Aris	540 703 9608	13 Dennis Drive	Marketing Assistant	53
33	Dody	Skittle	336 334 7745	26 Hooker Crossing	Executive Secretary	33
34	Abe	Bownas	314 170 9413	024 Farmco Junction	Environmental Specialist	9
35	Flossi	Martill	181 109 9803	3 Declaration Hill	Structural Analysis Engineer	73
36	Marlon	Stapylton	745 885 5474	5344 Golf Course Pass	Research Nurse	3
37	Juieta	Ivimy	897 669 6148	87 New Castle Alley	Environmental Tech	58
38	Felipe	Beneix	780 934 2896	352 Mariners Cove Circle	Civil Engineer	77
39	Erin	Meadmore	217 247 1241	24373 Superior Alley	Help Desk Technician	35
40	Oliver	Redish	783 522 4133	2 Lake View Street	Senior Quality Engineer	92
41	Damaris	Picott	341 536 8787	8 Portage Plaza	Geological Engineer	25
42	Dasi	Eaklee	170 490 9255	599 Mandrake Center	Software Engineer III	92
43	Brice	Ebbs	957 110 7649	6873 Oakridge Drive	Legal Assistant	87
44	Winthrop	Fanti	629 436 5985	9471 Green Ridge Road	Software Engineer II	6
45	Fara	Becks	285 918 2825	625 Dovetail Crossing	Pharmacist	26
46	Farr	Kidsley	391 933 5912	212 Oneill Circle	Geological Engineer	1
47	Guilbert	Fleeming	514 915 3474	520 Stone Corner Circle	Tax Accountant	3
48	Cacilia	Shelf	841 781 6037	71979 Bultman Trail	Budget/Accounting Analyst I	39
49	Jodi	Pipkin	762 374 1906	50 Declaration Trail	Senior Financial Analyst	8
50	Margareta	Phillips	207 576 2202	54250 Logan Point	Associate Professor	96
51	Ariella	Swiffin	979 382 4262	0 Roxbury Plaza	Information Systems Manager	22
52	Marion	Butterfint	390 558 4182	151 Becker Junction	Community Outreach Specialist	27
53	Grete	Kelf	580 444 1836	31 Mendota Court	Quality Engineer	7
54	Kelwin	Hebbes	540 940 5732	9346 Butternut Pass	Speech Pathologist	54
55	Riobard	Fooks	546 637 9910	60334 Farwell Pass	VP Quality Control	44
56	Park	Seilmann	455 971 0894	5 Londonderry Parkway	Structural Engineer	21
57	Nappy	Paolinelli	957 185 4735	75 Lakewood Gardens Crossing	Nurse Practicioner	95
58	Jenine	Cornford	347 838 7246	8 Oak Road	Geological Engineer	63
59	Hortense	Bunstone	779 463 9358	204 Graedel Point	Media Manager II	74
60	Seana	Swalowe	836 924 2975	162 Sutteridge Circle	Technical Writer	85
61	Jonathon	Gateley	660 240 3281	49 Sage Alley	VP Sales	78
62	Colet	Amort	204 777 1202	168 5th Point	Project Manager	74
63	Justinn	Shinton	854 966 4235	23 Montana Crossing	Safety Technician IV	1
64	Ilse	Mauger	409 825 6252	15087 Cottonwood Crossing	Structural Engineer	89
65	Manya	Bohler	465 194 2395	44 Almo Crossing	Budget/Accounting Analyst III	70
66	Cody	Teissier	856 432 7734	00486 Dwight Road	Information Systems Manager	40
67	Kristi	Birbeck	106 570 6716	7 Spenser Hill	Tax Accountant	62
68	Yvon	Tansey	450 825 7052	8329 Dixon Court	Assistant Manager	99
69	Gardner	Mosby	786 559 2803	73918 Cambridge Circle	Product Engineer	13
70	Denny	McHaffy	210 115 3220	62 Raven Court	Internal Auditor	63
71	Thoma	Toffts	593 997 9971	74 Moulton Road	Chief Design Engineer	72
72	Moritz	Libby	190 974 0420	0991 Macpherson Road	Environmental Specialist	99
73	Ignacio	Armal	689 718 0143	54387 Cherokee Crossing	Senior Sales Associate	80
74	Sasha	Rusling	792 674 0764	581 Lakewood Hill	VP Marketing	63
75	Amalle	Gomer	260 467 2070	1093 Bellgrove Plaza	Health Coach II	42
76	Gertrudis	Agnew	540 928 9813	6018 Maywood Parkway	Physical Therapy Assistant	74
77	Gusta	Dedam	159 647 0412	15255 Gale Hill	Tax Accountant	19
78	Florie	Jarvis	247 564 9834	9 Dottie Drive	Human Resources Assistant II	53
79	Cyrill	Dincke	219 438 0288	3795 8th Drive	Accounting Assistant II	48
80	Payton	Brilleman	154 489 6132	144 School Court	Software Engineer I	66
81	Raychel	Halksworth	164 139 2546	7124 Longview Pass	Senior Quality Engineer	48
82	Candy	Ream	844 215 3443	4 Waubesa Street	Research Nurse	58
83	Cole	Spendlove	597 546 5923	28699 Mesta Plaza	Help Desk Technician	79
84	Edna	Barton	460 299 5253	0360 Division Junction	Research Assistant III	48
85	Bran	Kaplan	191 362 6606	177 Pepper Wood Avenue	Desktop Support Technician	32
86	Stacy	Comer	222 562 0685	3 School Drive	Junior Executive	39
87	Tiffanie	Gherardelli	781 631 6653	1208 Melody Junction	Staff Scientist	32
88	Brnaba	Gadman	497 968 1748	36 Cottonwood Street	Data Coordiator	78
89	Jard	Spollen	436 205 6394	3997 Sage Parkway	Help Desk Operator	97
90	Neile	Winterburn	490 100 0736	7 Basil Court	Speech Pathologist	77
91	Letisha	Gavey	404 170 1853	359 Delladonna Crossing	Structural Engineer	79
92	Dannie	Alstead	539 368 6266	261 Sutteridge Place	Graphic Designer	26
93	Basile	Arrigucci	486 964 3736	7941 Village Park	VP Accounting	18
94	Minerva	Drysdale	428 602 1995	0549 Westridge Crossing	Statistician III	19
95	Cassius	Bastin	205 112 8971	81414 Anniversary Park	Account Executive	85
96	Koressa	Elnough	839 752 1528	74 Springview Plaza	Environmental Tech	59
97	Ingaberg	Neumann	385 982 8687	3186 Corscot Crossing	Operator	54
98	Lilyan	Yankov	107 348 7587	824 Butterfield Park	Desktop Support Technician	11
99	Dorry	Polfer	705 209 0327	59351 Warner Terrace	Recruiting Manager	66
100	Boyd	Ciciotti	248 512 5393	41 Hagan Avenue	Chemical Engineer	90
\.


--
-- Data for Name: establecimientos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.establecimientos (id_establecimiento, nom_establecimientos, telefono, direccion) FROM stdin;
1	Twinte	111-979-2690	8248 Atwood Plaza
2	Leexo	623-515-0679	127 Londonderry Place
3	Ainyx	644-266-9056	02 Hauk Plaza
4	Voomm	820-462-7139	595 Sycamore Hill
5	Agimba	855-766-7898	1817 Talmadge Circle
6	Eimbee	886-769-8178	8 Alpine Hill
7	Kare	477-305-1393	9385 Kipling Hill
8	Einti	631-848-7709	874 Luster Point
9	Oyonder	607-303-9318	97612 Bowman Point
10	Wordtune	316-580-9343	6 American Ash Way
11	Riffwire	267-997-1090	23 Golden Leaf Point
12	Meevee	125-143-0058	46319 Mallard Road
13	Kazu	872-476-2324	9547 Waubesa Lane
14	Gigabox	940-718-3752	38149 Dawn Road
15	Skinte	766-357-0195	3983 Cascade Circle
16	Topicblab	327-379-4945	3 Sauthoff Street
17	Dabjam	760-706-5839	818 International Drive
18	Vitz	114-668-5145	72595 Iowa Alley
19	Kimia	154-876-9562	54342 Bluestem Way
20	Thoughtworks	496-304-7651	8 Hovde Park
21	Flashdog	913-395-3565	1094 Lighthouse Bay Circle
22	InnoZ	244-611-6589	6 Cordelia Circle
23	Dynazzy	753-614-7303	2 Dunning Terrace
24	Zoovu	343-791-5525	586 Melvin Center
25	Thoughtmix	905-347-8262	5314 Troy Crossing
26	Riffpath	897-915-0995	81 Doe Crossing Lane
27	Thoughtstorm	261-123-1549	0 Buena Vista Road
28	Skippad	346-851-4884	641 Shoshone Place
29	InnoZ	285-394-0923	042 Scott Avenue
30	Centizu	103-862-8021	5162 Stephen Street
31	Buzzdog	703-563-3284	2 Algoma Terrace
32	Jazzy	982-231-4904	2365 Bluejay Avenue
33	Lajo	283-534-5222	5950 Northridge Lane
34	Digitube	528-823-9179	92 Hermina Trail
35	Feednation	382-691-1437	83 Talisman Parkway
36	Voonix	697-595-5290	92 Northridge Road
37	Youspan	428-545-3257	06 Riverside Junction
38	Tambee	605-995-1027	0015 Namekagon Pass
39	Mycat	458-312-8025	627 7th Place
40	Eidel	824-825-6078	081 Orin Pass
41	Aibox	593-131-2101	96437 Anderson Hill
42	Divape	169-559-2688	64601 Fisk Crossing
43	Gigazoom	429-318-3652	925 Kinsman Avenue
44	Fivespan	127-862-8690	87 Lerdahl Alley
45	DabZ	987-516-9113	3142 Eastwood Avenue
46	Blogtags	533-404-5417	69756 Fallview Pass
47	Quire	388-913-7216	12595 2nd Pass
48	Twiyo	293-417-1821	47 Miller Parkway
49	Dynabox	211-689-9381	6 Vera Pass
50	Ntag	974-272-1064	9 Troy Parkway
51	Divanoodle	474-156-1691	8423 Twin Pines Crossing
52	Meembee	489-222-0182	96 South Crossing
53	Eidel	541-545-1581	5 Eastwood Court
54	Babblestorm	944-993-1131	5 Kedzie Center
55	Yabox	355-521-6352	7 Pearson Center
56	Tagcat	843-510-8804	938 Clemons Drive
57	Kazu	210-779-1473	98230 Mayer Court
58	Voolia	832-552-6102	66 Elka Street
59	Jabbersphere	106-375-1141	2230 Blaine Hill
60	Photobug	467-612-7913	55897 Ronald Regan Plaza
61	Wikizz	536-760-2463	6285 Stoughton Parkway
62	Yodo	239-296-0328	2 Pine View Trail
63	Edgeblab	425-786-5100	97 Iowa Pass
64	Photofeed	522-707-2605	6 Warbler Pass
65	Jaxspan	299-842-1162	2441 Sundown Alley
66	Agivu	135-784-7450	08 Elka Street
67	Shuffletag	726-719-4217	93198 Tennessee Trail
68	Gabvine	995-927-3196	3936 Rigney Place
69	Thoughtworks	667-232-0767	1 Huxley Avenue
70	Edgeblab	777-133-6916	7936 Sloan Place
71	Realpoint	374-901-1654	175 Wayridge Alley
72	Livetube	284-669-5776	706 Hansons Center
73	Izio	389-458-4435	95766 Talmadge Trail
74	Dabvine	606-267-7401	7 Sommers Hill
75	Twimm	465-361-2440	527 Vernon Lane
76	Twitterworks	387-463-3756	725 Village Place
77	Jaloo	947-149-6881	55948 Sycamore Crossing
78	Eimbee	392-330-7391	11395 Grasskamp Circle
79	Eadel	494-577-6284	9213 Granby Trail
80	Mudo	335-664-0244	167 Grim Pass
81	Tagpad	247-819-5301	6 Sundown Parkway
82	Ooba	998-875-8728	571 Portage Drive
83	Zoombox	567-115-3019	4 Elmside Parkway
84	Quinu	490-973-3134	0 Porter Trail
85	Lazz	630-477-6639	435 Onsgard Street
86	Photolist	176-809-2074	202 Pleasure Place
87	Quimba	402-168-5059	75559 Nancy Circle
88	Twitterlist	369-233-7255	01092 Sheridan Crossing
89	Quaxo	721-203-8690	843 Granby Trail
90	Skidoo	307-421-7933	29022 Maywood Trail
91	Skaboo	345-508-4088	175 Old Gate Point
92	Layo	634-711-5960	56 Chinook Plaza
93	Realbridge	215-495-0730	86026 Cardinal Drive
94	Demizz	978-882-8246	622 Amoth Drive
95	Tagpad	971-104-8920	07375 Utah Street
96	Fatz	806-553-7445	08 Delladonna Trail
97	Photobug	894-374-6681	6 Tony Hill
98	Jazzy	117-491-1724	9 Warner Road
99	Photobean	901-118-7631	68 Jenna Alley
100	Voonix	452-265-7655	0 Eggendart Circle
\.


--
-- Data for Name: factura; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.factura (id_factura, id_cliente, fecha) FROM stdin;
1	77	2022-07-22
2	74	2022-12-20
3	46	2022-03-06
4	22	2022-12-08
5	64	2022-08-15
6	82	2022-01-15
7	46	2022-10-26
8	67	2021-12-29
9	80	2022-02-05
10	93	2022-05-11
11	48	2023-01-26
12	94	2022-09-14
13	33	2021-12-23
14	21	2022-10-05
15	32	2022-04-03
16	46	2022-06-14
17	68	2021-12-18
18	63	2022-08-18
19	6	2022-11-24
20	55	2022-03-14
21	29	2023-01-01
22	15	2022-07-13
23	63	2022-05-26
24	36	2022-07-20
25	33	2023-02-12
26	81	2022-09-18
27	10	2022-11-21
28	100	2022-12-05
29	33	2023-01-05
30	28	2023-01-12
31	35	2023-01-09
32	49	2021-12-14
33	69	2022-12-31
34	49	2022-09-13
35	82	2022-04-20
36	18	2022-10-13
37	56	2022-08-24
38	37	2022-01-02
39	11	2021-12-22
40	20	2022-01-11
41	27	2021-12-19
42	97	2022-03-23
43	64	2022-10-19
44	71	2022-02-28
45	78	2021-12-25
46	92	2021-12-08
47	49	2022-10-16
48	71	2022-06-14
49	34	2022-04-12
50	54	2022-02-19
51	41	2022-08-09
52	14	2022-01-19
53	89	2021-12-19
54	69	2022-10-24
55	24	2022-11-23
56	35	2022-07-22
57	4	2022-12-29
58	20	2022-07-30
59	52	2023-02-05
60	54	2021-12-20
61	66	2022-01-09
62	63	2023-01-19
63	38	2022-06-21
64	12	2022-03-12
65	85	2022-08-14
66	98	2022-09-06
67	88	2022-01-23
68	44	2022-08-09
69	75	2022-02-23
70	84	2023-01-24
71	97	2022-05-17
72	80	2023-01-10
73	93	2022-12-21
74	89	2022-07-19
75	81	2022-02-27
76	6	2022-11-11
77	9	2022-05-23
78	85	2022-04-09
79	70	2022-05-20
80	52	2022-12-16
81	100	2022-11-08
82	100	2022-11-09
83	85	2022-05-15
84	30	2022-01-02
85	37	2023-01-17
86	13	2022-11-18
87	11	2022-05-10
88	62	2022-08-02
89	74	2022-12-07
90	53	2022-07-18
91	87	2023-01-19
92	36	2021-12-20
93	70	2023-02-16
94	31	2022-03-16
95	90	2022-11-30
96	36	2022-11-08
97	19	2022-12-28
98	20	2022-10-31
99	73	2021-12-28
100	58	2022-12-14
101	13	2022-11-04
102	62	2021-12-04
103	37	2022-01-13
104	31	2022-12-22
105	85	2022-08-12
106	79	2022-03-22
107	41	2022-10-14
108	78	2022-09-15
109	26	2022-04-13
110	63	2022-11-04
111	6	2022-07-12
112	8	2022-08-20
113	84	2022-11-17
114	60	2022-07-21
115	56	2022-06-05
116	61	2022-06-28
117	59	2022-09-30
118	89	2022-11-06
119	88	2022-05-11
120	2	2022-01-28
121	92	2022-07-07
122	17	2022-01-03
123	3	2022-11-26
124	96	2022-06-09
125	59	2022-10-16
126	90	2022-09-30
127	93	2022-07-05
128	70	2022-11-08
129	5	2023-01-22
130	97	2023-02-06
131	20	2022-08-13
132	59	2022-02-07
133	6	2023-01-13
134	83	2022-04-03
135	96	2022-09-04
136	96	2022-05-05
137	79	2022-02-28
138	58	2022-07-13
139	22	2022-04-16
140	29	2022-05-16
141	70	2023-02-03
142	40	2022-03-01
143	66	2023-02-08
144	81	2021-12-12
145	39	2022-07-04
146	74	2022-07-10
147	51	2022-01-18
148	8	2022-03-16
149	71	2022-08-01
150	54	2022-08-04
151	72	2022-05-11
152	47	2023-01-28
153	7	2021-12-30
154	20	2023-01-22
155	73	2022-11-09
156	20	2022-06-20
157	55	2022-03-25
158	60	2022-04-26
159	59	2022-05-10
160	51	2021-12-05
161	91	2022-10-04
162	46	2022-03-07
163	51	2022-04-02
164	97	2023-01-04
165	42	2022-05-06
166	10	2022-08-19
167	45	2022-11-17
168	76	2022-02-16
169	59	2021-12-22
170	95	2022-05-20
171	91	2022-03-27
172	95	2022-07-17
173	5	2022-12-03
174	20	2022-03-21
175	52	2022-08-21
176	15	2021-12-30
177	11	2022-06-10
178	97	2022-12-28
179	58	2022-11-26
180	63	2022-02-15
181	30	2022-04-03
182	88	2022-12-13
183	20	2022-04-10
184	35	2022-10-04
185	48	2022-11-01
186	97	2021-12-17
187	81	2022-09-26
188	6	2022-09-25
189	90	2022-03-01
190	48	2022-04-06
191	12	2022-08-03
192	21	2022-07-13
193	9	2022-02-23
194	1	2022-10-24
195	29	2022-04-28
196	70	2022-07-25
197	5	2022-07-09
198	27	2022-01-03
199	72	2022-07-14
200	60	2022-03-09
201	79	2022-07-21
202	2	2022-12-25
203	10	2022-05-24
204	6	2023-02-12
205	24	2022-06-08
206	26	2022-04-27
207	21	2022-06-11
208	77	2022-06-06
209	42	2022-01-31
210	77	2022-09-23
211	14	2022-10-01
212	41	2022-12-01
213	84	2022-04-08
214	2	2022-01-18
215	33	2022-08-26
216	3	2021-12-22
217	89	2022-12-15
218	76	2022-08-17
219	80	2022-03-02
220	67	2022-03-05
221	8	2022-05-26
222	75	2022-01-30
223	79	2022-04-19
224	7	2021-12-21
225	54	2022-07-15
226	49	2021-12-07
227	83	2022-12-03
228	73	2022-10-02
229	26	2022-10-08
230	35	2022-12-01
231	55	2022-02-18
232	28	2022-12-02
233	10	2022-03-20
234	50	2022-12-05
235	77	2022-01-08
236	9	2022-08-12
237	7	2023-02-16
238	84	2021-12-10
239	90	2022-09-12
240	66	2022-12-27
241	25	2022-11-17
242	22	2022-01-09
243	15	2022-09-19
244	8	2022-08-06
245	33	2022-02-20
246	58	2022-07-22
247	33	2022-12-27
248	7	2022-05-20
249	65	2022-06-24
250	47	2022-07-05
251	68	2022-03-25
252	31	2022-07-09
253	5	2022-01-17
254	25	2022-07-23
255	2	2021-12-28
256	12	2022-10-06
257	2	2022-08-02
258	37	2022-03-01
259	43	2022-04-14
260	51	2022-04-10
261	18	2022-10-04
262	88	2022-10-09
263	71	2022-09-22
264	78	2022-08-19
265	20	2022-03-02
266	29	2022-04-26
267	83	2022-10-26
268	44	2023-01-16
269	61	2022-01-09
270	95	2022-06-14
271	95	2022-07-30
272	13	2023-01-05
273	93	2022-05-28
274	11	2022-03-10
275	98	2022-12-04
276	99	2022-01-05
277	10	2022-04-05
278	74	2023-02-15
279	49	2022-08-21
280	6	2022-03-06
281	7	2022-02-25
282	50	2022-12-10
283	29	2022-05-11
284	34	2022-08-13
285	44	2022-10-23
286	100	2022-02-10
287	86	2022-08-30
288	86	2022-09-27
289	7	2023-02-12
290	30	2022-07-16
291	63	2022-03-25
292	58	2022-05-12
293	13	2023-01-28
294	78	2022-03-10
295	35	2022-12-02
296	79	2023-01-18
297	17	2022-11-06
298	6	2022-04-12
299	76	2022-04-08
300	62	2023-02-14
301	67	2022-02-05
302	3	2022-05-21
303	88	2022-09-05
304	81	2022-05-14
305	76	2022-12-09
306	19	2022-06-03
307	91	2022-06-04
308	30	2022-01-06
309	34	2022-12-09
310	74	2023-01-08
311	95	2022-08-08
312	99	2023-01-22
313	18	2022-06-21
314	25	2022-06-07
315	49	2022-03-15
316	73	2022-11-07
317	42	2022-05-22
318	19	2022-05-17
319	67	2022-04-06
320	14	2021-12-19
321	89	2022-05-30
322	70	2022-05-14
323	100	2022-03-24
324	50	2022-07-22
325	2	2022-10-04
326	37	2022-01-15
327	40	2022-10-14
328	87	2022-10-22
329	63	2022-07-22
330	45	2022-07-15
331	2	2022-12-05
332	75	2022-05-31
333	81	2022-03-02
334	69	2022-07-16
335	90	2022-12-18
336	48	2022-08-15
337	1	2021-12-21
338	39	2022-09-07
339	79	2022-09-05
340	64	2022-01-13
341	62	2022-02-15
342	57	2022-03-11
343	44	2022-01-20
344	79	2023-01-23
345	88	2022-06-19
346	90	2022-04-28
347	13	2023-01-17
348	73	2022-10-15
349	41	2022-10-11
350	45	2022-11-06
351	2	2022-08-27
352	84	2022-03-11
353	33	2022-08-02
354	3	2022-02-03
355	55	2022-10-13
356	34	2022-05-04
357	6	2022-12-02
358	9	2022-02-13
359	100	2022-10-21
360	40	2022-11-07
361	92	2022-12-11
362	88	2022-08-17
363	13	2022-10-21
364	46	2022-06-08
365	27	2022-11-10
366	38	2022-05-06
367	71	2021-12-22
368	42	2022-05-11
369	96	2022-10-19
370	48	2022-01-04
371	97	2022-10-27
372	46	2022-11-28
373	15	2022-07-07
374	87	2022-01-17
375	78	2022-02-11
376	59	2022-02-17
377	59	2023-02-07
378	5	2022-08-14
379	72	2022-03-02
380	65	2022-01-28
381	78	2023-01-10
382	2	2022-08-24
383	25	2022-02-22
384	21	2021-12-09
385	53	2023-01-14
386	38	2022-01-28
387	62	2022-07-30
388	6	2022-04-18
389	21	2022-04-08
390	40	2022-04-05
391	52	2022-07-15
392	53	2022-07-11
393	22	2022-12-20
394	51	2022-04-20
395	6	2022-02-16
396	4	2023-01-17
397	9	2022-03-07
398	91	2022-11-12
399	76	2022-08-23
400	82	2022-07-01
401	5	2022-01-03
402	99	2022-01-27
403	91	2022-01-01
404	62	2023-01-14
405	6	2022-10-12
406	66	2022-05-07
407	36	2022-02-14
408	10	2021-12-20
409	1	2022-02-04
410	80	2022-08-26
411	74	2021-12-28
412	29	2022-10-13
413	84	2022-11-23
414	76	2023-01-08
415	18	2022-11-07
416	5	2022-06-25
417	54	2022-09-25
418	89	2022-05-27
419	29	2022-08-30
420	64	2022-01-20
421	24	2022-11-16
422	88	2022-11-15
423	62	2022-09-05
424	57	2022-09-25
425	80	2022-09-29
426	80	2022-07-14
427	39	2022-06-03
428	11	2022-10-08
429	26	2022-01-01
430	22	2022-07-20
431	34	2021-12-15
432	49	2022-11-23
433	21	2022-03-22
434	9	2022-02-09
435	55	2023-01-29
436	95	2022-08-20
437	86	2022-02-08
438	9	2022-11-26
439	85	2022-04-14
440	83	2022-05-25
441	58	2022-04-20
442	60	2022-07-25
443	2	2022-04-19
444	57	2022-09-22
445	6	2022-11-21
446	72	2023-01-23
447	46	2023-01-07
448	16	2022-03-26
449	33	2022-11-14
450	58	2022-02-25
451	99	2022-09-16
452	16	2022-10-06
453	95	2022-12-18
454	68	2022-02-15
455	57	2022-10-29
456	94	2022-02-24
457	12	2022-10-07
458	6	2022-05-08
459	62	2022-06-16
460	98	2022-09-28
461	4	2022-02-21
462	61	2022-05-10
463	44	2022-10-26
464	33	2022-07-24
465	83	2022-11-13
466	37	2022-05-09
467	92	2022-07-08
468	37	2023-02-13
469	39	2022-11-16
470	48	2022-09-03
471	9	2022-03-16
472	76	2022-05-24
473	78	2022-07-19
474	1	2023-01-06
475	73	2022-01-05
476	17	2022-10-03
477	18	2022-08-14
478	43	2021-12-18
479	28	2022-03-18
480	18	2022-12-29
481	76	2022-08-06
482	12	2022-04-24
483	10	2022-04-19
484	18	2022-08-07
485	42	2023-01-23
486	56	2022-02-17
487	16	2022-06-09
488	41	2022-07-17
489	8	2021-12-10
490	5	2022-01-30
491	29	2022-09-29
492	67	2022-05-09
493	12	2022-02-08
494	50	2022-04-23
495	46	2022-05-23
496	85	2022-08-06
497	29	2022-05-12
498	96	2022-09-14
499	34	2023-02-11
500	54	2022-09-25
501	29	2022-03-16
502	2	2022-07-21
503	81	2022-05-06
504	21	2021-12-07
505	12	2022-05-18
506	52	2022-11-16
507	11	2022-11-30
508	63	2022-04-29
509	1	2022-06-13
510	41	2021-12-01
511	12	2021-12-04
512	58	2022-04-30
513	23	2022-12-31
514	93	2022-12-18
515	25	2023-01-16
516	68	2022-07-05
517	52	2022-02-19
518	39	2022-12-29
519	9	2022-07-25
520	44	2022-11-16
521	32	2021-12-11
522	68	2022-12-24
523	83	2022-04-16
524	1	2022-08-23
525	80	2022-10-12
526	33	2022-02-23
527	9	2022-01-21
528	13	2023-01-12
529	48	2022-05-05
530	41	2022-02-05
531	9	2022-10-05
532	80	2022-02-23
533	41	2022-07-22
534	16	2022-08-04
535	20	2022-12-21
536	100	2022-01-16
537	48	2022-03-26
538	3	2022-03-03
539	52	2022-09-25
540	49	2023-02-04
541	46	2022-03-05
542	69	2022-03-04
543	43	2022-09-29
544	21	2022-09-05
545	50	2022-10-01
546	1	2022-05-04
547	49	2022-11-15
548	51	2021-12-25
549	67	2022-03-11
550	66	2022-06-27
551	42	2022-03-06
552	30	2022-01-01
553	97	2022-01-03
554	6	2022-06-30
555	44	2021-12-04
556	34	2022-08-24
557	58	2022-06-16
558	47	2022-06-12
559	56	2022-03-25
560	29	2022-07-21
561	19	2022-12-22
562	81	2023-01-31
563	34	2022-03-09
564	43	2021-12-09
565	16	2021-12-30
566	71	2022-03-27
567	36	2022-04-22
568	80	2022-11-26
569	99	2023-01-29
570	11	2022-01-13
571	54	2022-12-27
572	25	2022-07-07
573	16	2022-12-22
574	62	2022-06-20
575	26	2023-01-19
576	86	2022-07-21
577	21	2022-04-27
578	25	2023-02-07
579	69	2022-11-19
580	10	2023-01-03
581	3	2023-02-05
582	78	2022-02-20
583	83	2022-10-13
584	28	2022-05-21
585	56	2022-10-02
586	29	2021-12-16
587	30	2022-04-09
588	65	2022-04-22
589	37	2022-10-09
590	76	2022-12-25
591	32	2022-02-07
592	70	2022-09-27
593	10	2022-04-25
594	9	2023-01-30
595	99	2022-04-24
596	91	2022-12-23
597	99	2022-06-08
598	10	2022-09-22
599	59	2022-03-06
600	36	2022-01-27
601	65	2022-03-05
602	3	2022-12-10
603	59	2022-10-14
604	6	2022-10-19
605	40	2022-05-11
606	54	2022-02-21
607	9	2022-05-07
608	80	2022-08-30
609	30	2022-04-03
610	64	2022-06-02
611	65	2022-01-11
612	38	2021-12-09
613	29	2022-03-18
614	17	2022-11-14
615	18	2023-01-11
616	49	2022-06-07
617	20	2022-02-20
618	59	2022-04-10
619	38	2022-02-18
620	72	2022-05-25
621	43	2022-07-06
622	50	2022-05-12
623	82	2022-03-16
624	23	2022-11-22
625	65	2021-12-08
626	33	2022-03-27
627	21	2022-07-19
628	90	2022-08-26
629	10	2023-01-07
630	86	2022-01-20
631	65	2022-07-06
632	8	2022-12-27
633	65	2022-11-29
634	89	2022-03-30
635	6	2023-02-14
636	17	2022-08-21
637	15	2022-12-27
638	23	2022-03-31
639	60	2022-05-23
640	82	2022-02-15
641	77	2022-05-09
642	59	2022-08-26
643	88	2022-04-25
644	50	2022-07-29
645	43	2023-02-08
646	74	2022-08-02
647	17	2022-09-30
648	74	2022-12-19
649	17	2022-10-20
650	56	2022-01-13
651	55	2022-05-05
652	13	2021-12-25
653	95	2022-05-03
654	18	2022-12-30
655	22	2022-11-30
656	18	2022-03-19
657	53	2021-12-30
658	38	2023-01-30
659	79	2022-01-24
660	58	2022-03-12
661	95	2022-03-26
662	88	2022-08-06
663	72	2022-09-11
664	69	2022-03-23
665	23	2022-11-13
666	97	2021-12-27
667	66	2022-05-27
668	32	2022-04-20
669	1	2022-02-14
670	13	2022-03-27
671	39	2022-06-16
672	12	2022-03-23
673	84	2023-01-15
674	95	2022-06-30
675	75	2022-04-03
676	80	2021-12-15
677	22	2022-07-27
678	51	2022-10-27
679	35	2022-08-23
680	80	2022-03-16
681	81	2021-12-20
682	87	2023-01-14
683	47	2022-03-09
684	72	2022-01-18
685	45	2021-12-26
686	40	2022-11-25
687	76	2022-04-24
688	45	2022-04-03
689	9	2022-02-13
690	42	2022-07-05
691	29	2023-02-12
692	75	2022-10-01
693	92	2021-12-07
694	78	2022-03-26
695	25	2021-12-07
696	48	2022-09-27
697	69	2022-05-14
698	26	2022-04-14
699	11	2022-06-20
700	57	2021-12-15
701	27	2022-10-19
702	22	2022-09-12
703	81	2022-12-19
704	27	2022-12-13
705	10	2023-01-06
706	21	2022-10-13
707	2	2022-12-03
708	83	2022-05-14
709	16	2022-07-27
710	24	2021-12-21
711	29	2023-01-20
712	37	2022-04-02
713	16	2022-06-26
714	24	2022-11-14
715	47	2022-11-15
716	92	2022-01-17
717	62	2022-11-09
718	96	2022-11-30
719	72	2022-01-17
720	94	2022-06-30
721	16	2022-05-08
722	8	2022-01-01
723	55	2022-04-08
724	79	2022-04-02
725	94	2021-12-01
726	69	2022-12-09
727	47	2021-12-11
728	15	2022-08-26
729	8	2023-01-16
730	81	2022-10-22
731	34	2022-07-11
732	4	2023-02-08
733	45	2022-03-14
734	50	2022-05-10
735	5	2023-02-12
736	84	2022-05-20
737	98	2022-09-03
738	12	2022-04-07
739	61	2022-01-24
740	22	2022-01-19
741	52	2022-08-19
742	28	2022-10-11
743	39	2022-12-22
744	18	2022-11-06
745	12	2022-08-20
746	13	2022-12-05
747	100	2022-05-18
748	5	2022-07-18
749	3	2023-02-13
750	22	2022-07-29
751	89	2022-08-25
752	9	2022-06-15
753	42	2023-02-01
754	77	2022-10-31
755	30	2022-06-30
756	99	2022-10-29
757	21	2022-08-06
758	8	2022-12-20
759	11	2022-07-13
760	92	2023-01-05
761	17	2023-01-16
762	36	2022-05-20
763	20	2022-10-11
764	55	2023-01-07
765	15	2022-12-18
766	84	2022-04-11
767	99	2022-09-06
768	38	2022-01-26
769	17	2022-05-14
770	19	2023-02-07
771	59	2022-03-13
772	73	2022-10-07
773	43	2022-01-04
774	2	2022-10-08
775	7	2022-02-20
776	8	2023-02-14
777	77	2023-01-10
778	36	2022-04-16
779	67	2022-02-20
780	36	2022-06-13
781	70	2022-06-30
782	49	2022-07-09
783	32	2022-02-07
784	48	2022-06-11
785	33	2022-04-08
786	54	2022-11-09
787	88	2022-02-04
788	32	2022-01-27
789	84	2022-09-29
790	95	2022-12-08
791	39	2022-01-25
792	23	2022-08-01
793	41	2022-02-10
794	5	2022-07-17
795	100	2022-09-17
796	5	2022-02-28
797	39	2022-05-20
798	65	2023-01-07
799	86	2021-12-22
800	51	2022-11-30
801	30	2023-01-13
802	94	2022-04-15
803	24	2022-04-24
804	21	2021-12-22
805	50	2022-03-11
806	12	2022-04-05
807	90	2022-02-23
808	71	2022-02-18
809	8	2022-12-31
810	22	2022-02-14
811	42	2022-01-22
812	33	2021-12-28
813	41	2022-04-20
814	37	2022-04-08
815	2	2022-12-05
816	13	2022-02-04
817	98	2023-01-23
818	54	2022-12-22
819	80	2022-04-16
820	71	2022-10-26
821	41	2022-07-15
822	75	2022-12-03
823	58	2022-03-09
824	67	2022-09-20
825	30	2022-08-26
826	5	2022-09-04
827	77	2022-09-06
828	47	2022-08-21
829	4	2022-08-06
830	85	2022-06-12
831	62	2023-01-11
832	18	2022-01-02
833	75	2022-08-08
834	11	2022-12-30
835	64	2022-02-12
836	73	2022-05-07
837	58	2022-04-14
838	58	2022-10-11
839	80	2022-01-07
840	31	2021-12-20
841	38	2022-08-05
842	86	2022-12-29
843	61	2021-12-06
844	94	2023-01-13
845	72	2022-06-20
846	69	2022-12-24
847	49	2022-03-29
848	64	2022-09-21
849	78	2022-01-19
850	99	2022-10-02
851	38	2022-09-08
852	3	2022-02-12
853	59	2022-04-06
854	6	2021-12-10
855	79	2023-02-15
856	90	2022-03-27
857	75	2022-02-15
858	40	2023-01-06
859	90	2022-01-26
860	33	2022-12-11
861	30	2022-09-08
862	2	2022-05-08
863	16	2022-07-30
864	74	2022-04-24
865	12	2022-07-11
866	17	2022-09-25
867	15	2021-12-01
868	89	2022-01-22
869	88	2022-04-23
870	36	2022-01-12
871	10	2022-05-04
872	42	2022-10-19
873	91	2022-07-09
874	36	2021-12-24
875	56	2022-09-25
876	65	2022-04-29
877	84	2022-07-22
878	48	2022-02-01
879	72	2022-04-27
880	90	2022-01-22
881	83	2022-12-13
882	96	2022-12-13
883	43	2022-11-24
884	51	2022-07-15
885	78	2022-09-25
886	54	2022-08-28
887	81	2022-03-17
888	25	2022-08-02
889	18	2022-01-31
890	16	2021-12-24
891	96	2022-06-28
892	86	2022-04-09
893	71	2022-10-03
894	6	2022-09-18
895	20	2022-07-06
896	25	2021-12-30
897	59	2022-06-29
898	71	2022-11-08
899	23	2022-10-10
900	10	2021-12-10
901	29	2022-09-03
902	34	2023-02-12
903	79	2022-09-13
904	11	2022-07-13
905	59	2023-01-24
906	56	2022-04-11
907	13	2022-02-21
908	50	2022-12-12
909	38	2023-01-06
910	85	2022-08-05
911	1	2022-03-27
912	21	2022-05-08
913	54	2022-08-12
914	57	2022-01-27
915	4	2022-08-27
916	61	2022-08-02
917	12	2022-01-02
918	83	2022-02-11
919	23	2021-12-04
920	23	2023-02-02
921	42	2022-01-30
922	22	2022-05-06
923	98	2022-08-04
924	10	2022-02-19
925	85	2022-08-26
926	19	2022-12-11
927	69	2023-01-20
928	93	2022-10-25
929	19	2023-01-29
930	20	2022-01-18
931	56	2022-10-02
932	14	2023-02-03
933	4	2022-02-09
934	12	2022-06-04
935	95	2022-10-07
936	33	2021-12-18
937	74	2022-05-01
938	69	2022-08-13
939	78	2022-09-25
940	58	2022-06-28
941	6	2022-03-24
942	16	2022-07-27
943	39	2022-11-24
944	67	2022-04-13
945	65	2022-12-12
946	61	2022-01-04
947	73	2022-04-07
948	95	2021-12-11
949	27	2022-10-08
950	93	2022-03-07
951	13	2022-01-02
952	25	2022-04-09
953	71	2022-07-05
954	48	2023-02-14
955	47	2023-01-27
956	9	2022-04-06
957	12	2022-07-31
958	90	2022-09-19
959	31	2023-01-29
960	29	2022-09-11
961	93	2022-12-26
962	18	2022-01-27
963	52	2022-10-04
964	47	2022-05-28
965	64	2022-01-09
966	86	2022-09-05
967	45	2021-12-16
968	2	2022-08-23
969	58	2022-07-28
970	27	2022-09-21
971	72	2022-11-11
972	29	2022-06-29
973	91	2023-01-05
974	16	2022-05-03
975	29	2022-10-28
976	62	2022-10-09
977	91	2022-05-22
978	2	2022-05-22
979	1	2022-01-06
980	99	2023-02-11
981	13	2022-01-31
982	5	2022-07-20
983	96	2023-02-16
984	11	2022-08-11
985	90	2022-04-05
986	89	2022-05-09
987	49	2022-05-10
988	13	2022-01-29
989	88	2022-10-13
990	89	2022-09-28
991	95	2022-08-29
992	71	2022-11-09
993	46	2022-04-02
994	62	2022-06-08
995	25	2022-10-08
996	42	2022-09-16
997	63	2021-12-23
998	61	2022-09-28
999	32	2022-05-10
1000	79	2022-09-26
\.


--
-- Data for Name: mesa; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.mesa (id_mesa, num_mesa) FROM stdin;
1	58
2	44
3	18
4	34
5	34
6	17
7	83
8	99
9	92
10	38
11	30
12	82
13	37
14	23
15	15
16	35
17	98
18	70
19	55
20	72
21	53
22	22
23	60
24	97
25	99
26	91
27	2
28	59
29	86
30	49
31	73
32	89
33	69
34	23
35	15
36	55
37	78
38	54
39	37
40	43
41	5
42	49
43	78
44	65
45	88
46	83
47	44
48	61
49	52
50	88
51	7
52	68
53	35
54	3
55	79
56	80
57	73
58	57
59	1
60	82
61	65
62	4
63	15
64	11
65	65
66	75
67	60
68	70
69	1
70	39
71	3
72	73
73	68
74	67
75	20
76	99
77	70
78	80
79	31
80	12
81	60
82	97
83	14
84	64
85	11
86	22
87	15
88	34
89	11
90	51
91	24
92	71
93	97
94	48
95	12
96	96
97	87
98	7
99	7
100	43
\.


--
-- Data for Name: platos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.platos (id_plato, nom_plato, precio_plato) FROM stdin;
1	Native cat	610.09
2	Turkey, common	886.27
3	Great egret	589.2
4	Cat, european wild	192.18
5	Gull, dusky	197.41
6	Cormorant (unidentified)	10.79
7	Oriental white-backed vulture	22.33
8	European beaver	275.78
9	Puma	156.72
10	Yellow-bellied marmot	357.04
11	Pied kingfisher	921.68
12	Jungle kangaroo	89.26
13	African skink	807.06
14	Rhesus monkey	792.08
15	Long-tailed skua	298.25
16	Kirk's dik dik	480.49
17	Turkey vulture	846.93
18	Euro wallaby	877.91
19	Killer whale	930.14
20	Quoll, eastern	327.68
21	Red-breasted nuthatch	90.65
22	Euro wallaby	127.82
23	Beaver, american	512.57
24	Eastern indigo snake	72.09
25	Flamingo, greater	861.24
26	Puma, south american	627.41
27	Gila monster	354.37
28	Mara	823.34
29	Red-necked phalarope	18.91
30	Greater roadrunner	473.13
31	Weaver, sociable	839.49
32	Horned puffin	604.75
33	Grenadier, purple	294.33
34	Frilled lizard	619.03
35	Blue fox	769.62
36	Porcupine, indian	975.84
37	Lizard, desert spiny	718.54
38	Cat, tiger	590.77
39	White-winged tern	201.85
40	Elk, Wapiti	933.88
41	Green-backed heron	25.74
42	Australian brush turkey	745.83
43	Violet-eared waxbill	302.8
44	Cape Barren goose	569.73
45	Warthog	831.58
46	Bustard, kori	76.66
47	Bat, asian false vampire	150.74
48	Woodcock, american	672.26
49	Kongoni	95.44
50	Tinamou, elegant crested	933.07
51	African lion	162.18
52	Lappet-faced vulture	298.73
53	Snake-necked turtle	366.08
54	Secretary bird	456.25
55	Lion, steller's sea	782.19
56	Grenadier, purple	251.62
57	Spotted deer	885.12
58	Malagasy ground boa	738.35
59	Ferret, black-footed	917.12
60	Stork, jabiru	681.22
61	Large cormorant	494.68
62	White-tailed jackrabbit	859.64
63	Bleu, blue-breasted cordon	163.4
64	Grouse, greater sage	792.29
65	Burmese black mountain tortoise	83.75
66	Python (unidentified)	574.89
67	Eland, common	260.77
68	Python, carpet	833.72
69	Meerkat	655.81
70	Oriental short-clawed otter	165.53
71	Iguana, marine	923.21
72	Squirrel, eastern fox	999.27
73	Gecko, barking	924.18
74	Shrew, mandras tree	843.76
75	Sloth, hoffman's	894.67
76	Boar, wild	901.38
77	Desert tortoise	2.41
78	Richardson's ground squirrel	535.8
79	Jackal, black-backed	655.19
80	Chipmunk, least	839.55
81	Kongoni	737.27
82	Heron, green-backed	879.08
83	Small-spotted genet	616.39
84	Fox, grey	843.75
85	Peregrine falcon	55.73
86	Verreaux's sifaka	311.62
87	Rhea, common	624.01
88	White-necked stork	776.39
89	Tiger cat	696.62
90	Western spotted skunk	589.4
91	Turtle, snake-necked	234.84
92	Wild water buffalo	9.02
93	Asian foreset tortoise	483.28
94	Common wombat	992.62
95	Common rhea	662.74
96	Brocket, brown	691.74
97	Neotropic cormorant	810.16
98	Giant girdled lizard	8.21
99	Lizard, giant girdled	897.97
100	Beisa oryx	835.13
\.


--
-- Data for Name: reservaciones; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.reservaciones (id_reserva, id_cliente, id_mesa, fecha_reservacion, id_establecimiento) FROM stdin;
1	59	37	2023-11-10	64
2	94	76	2024-01-27	88
3	41	41	2023-06-25	15
4	71	70	2023-03-27	47
5	40	39	2023-04-13	19
6	99	34	2023-10-19	97
7	82	46	2023-04-07	45
8	74	100	2023-09-02	97
9	90	73	2023-03-20	28
10	6	66	2023-04-25	80
11	4	12	2023-11-04	83
12	79	92	2024-02-01	90
13	61	90	2023-11-14	85
14	45	86	2023-05-05	15
15	18	24	2023-10-19	39
16	81	45	2023-07-03	98
17	41	91	2023-03-15	46
18	39	8	2023-09-23	94
19	84	17	2023-08-24	85
20	34	86	2023-12-12	40
21	29	87	2023-07-13	9
22	54	69	2023-06-22	68
23	51	26	2023-02-21	85
24	59	92	2023-08-15	15
25	80	76	2024-02-03	70
26	46	35	2024-01-16	32
27	91	77	2023-12-02	83
28	32	66	2023-03-17	8
29	40	59	2024-02-10	38
30	39	18	2024-01-19	37
31	87	97	2023-09-26	44
32	20	10	2023-03-05	4
33	72	16	2023-05-01	39
34	77	57	2023-12-24	1
35	42	35	2023-05-20	90
36	98	9	2023-02-24	92
37	67	12	2024-01-09	12
38	38	47	2023-05-17	23
39	15	34	2023-10-31	43
40	70	77	2023-09-19	93
41	18	53	2023-03-18	83
42	54	16	2023-02-18	57
43	21	61	2023-12-11	86
44	13	64	2023-06-24	94
45	6	7	2023-09-24	61
46	92	100	2023-05-19	46
47	23	78	2023-09-08	37
48	57	78	2023-06-13	69
49	35	80	2024-01-22	39
50	91	77	2023-10-01	57
51	21	78	2023-12-07	99
52	28	68	2023-10-13	63
53	32	97	2023-07-23	47
54	33	67	2023-09-05	42
55	11	53	2023-10-04	13
56	92	38	2023-06-13	62
57	48	26	2023-07-02	54
58	13	17	2023-11-13	93
59	37	97	2023-11-04	99
60	85	51	2023-06-21	4
61	90	18	2023-11-28	35
62	99	20	2023-10-27	57
63	90	22	2023-02-26	12
64	80	98	2023-09-15	10
65	57	68	2023-04-23	69
66	70	50	2023-03-24	71
67	62	97	2023-06-05	85
68	92	60	2023-11-01	10
69	24	70	2024-02-16	4
70	28	100	2023-06-05	43
71	90	7	2023-02-19	55
72	54	19	2023-08-18	8
73	81	46	2023-07-05	65
74	69	9	2023-10-20	20
75	83	79	2024-02-03	34
76	71	80	2023-10-17	37
77	20	89	2023-10-12	29
78	59	83	2023-04-26	86
79	67	43	2023-12-01	19
80	44	54	2023-10-24	8
81	47	19	2024-01-20	88
82	88	96	2024-01-29	4
83	81	73	2023-06-09	75
84	57	17	2023-09-04	35
85	73	59	2023-06-01	8
86	59	51	2023-08-15	75
87	18	7	2024-01-25	19
88	87	91	2023-10-11	40
89	10	62	2023-02-24	55
90	77	90	2023-11-12	87
91	21	72	2024-01-21	33
92	53	34	2023-12-23	2
93	15	70	2023-07-19	42
94	16	29	2023-11-08	21
95	94	49	2024-02-15	93
96	28	59	2023-04-24	60
97	42	26	2023-07-21	61
98	16	86	2023-06-17	69
99	74	34	2023-11-12	31
100	12	31	2024-01-17	21
\.


--
-- Name: clientes_id_cliente_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.clientes_id_cliente_seq', 100, true);


--
-- Name: detalle_de_la_factura_id_detalle_factura_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.detalle_de_la_factura_id_detalle_factura_seq', 1001, true);


--
-- Name: empleados_id_empleado_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.empleados_id_empleado_seq', 100, true);


--
-- Name: establecimientos_id_establecimiento_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.establecimientos_id_establecimiento_seq', 100, true);


--
-- Name: factura_id_factura_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.factura_id_factura_seq', 1000, true);


--
-- Name: mesa_id_mesa_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.mesa_id_mesa_seq', 100, true);


--
-- Name: platos_id_plato_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.platos_id_plato_seq', 100, true);


--
-- Name: reservaciones_id_reserva_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.reservaciones_id_reserva_seq', 100, true);


--
-- Name: clientes clientes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.clientes
    ADD CONSTRAINT clientes_pkey PRIMARY KEY (id_cliente);


--
-- Name: detalle_de_la_factura detalle_de_la_factura_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.detalle_de_la_factura
    ADD CONSTRAINT detalle_de_la_factura_pkey PRIMARY KEY (id_detalle_factura);


--
-- Name: empleados empleados_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.empleados
    ADD CONSTRAINT empleados_pkey PRIMARY KEY (id_empleado);


--
-- Name: establecimientos establecimientos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.establecimientos
    ADD CONSTRAINT establecimientos_pkey PRIMARY KEY (id_establecimiento);


--
-- Name: factura factura_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.factura
    ADD CONSTRAINT factura_pkey PRIMARY KEY (id_factura);


--
-- Name: mesa mesa_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mesa
    ADD CONSTRAINT mesa_pkey PRIMARY KEY (id_mesa);


--
-- Name: platos platos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.platos
    ADD CONSTRAINT platos_pkey PRIMARY KEY (id_plato);


--
-- Name: reservaciones reservaciones_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reservaciones
    ADD CONSTRAINT reservaciones_pkey PRIMARY KEY (id_reserva);


--
-- Name: detalle_de_la_factura detalle_de_la_factura_id_empleado_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.detalle_de_la_factura
    ADD CONSTRAINT detalle_de_la_factura_id_empleado_fkey FOREIGN KEY (id_empleado) REFERENCES public.empleados(id_empleado);


--
-- Name: detalle_de_la_factura detalle_de_la_factura_id_factura_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.detalle_de_la_factura
    ADD CONSTRAINT detalle_de_la_factura_id_factura_fkey FOREIGN KEY (id_factura) REFERENCES public.factura(id_factura);


--
-- Name: detalle_de_la_factura detalle_de_la_factura_id_mesa_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.detalle_de_la_factura
    ADD CONSTRAINT detalle_de_la_factura_id_mesa_fkey FOREIGN KEY (id_mesa) REFERENCES public.mesa(id_mesa);


--
-- Name: detalle_de_la_factura detalle_de_la_factura_id_plato_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.detalle_de_la_factura
    ADD CONSTRAINT detalle_de_la_factura_id_plato_fkey FOREIGN KEY (id_plato) REFERENCES public.platos(id_plato);


--
-- Name: empleados empleados_id_establecimiento_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.empleados
    ADD CONSTRAINT empleados_id_establecimiento_fkey FOREIGN KEY (id_establecimiento) REFERENCES public.establecimientos(id_establecimiento);


--
-- Name: factura factura_id_cliente_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.factura
    ADD CONSTRAINT factura_id_cliente_fkey FOREIGN KEY (id_cliente) REFERENCES public.clientes(id_cliente);


--
-- Name: reservaciones reservaciones_id_cliente_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reservaciones
    ADD CONSTRAINT reservaciones_id_cliente_fkey FOREIGN KEY (id_cliente) REFERENCES public.clientes(id_cliente);


--
-- Name: reservaciones reservaciones_id_establecimiento_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reservaciones
    ADD CONSTRAINT reservaciones_id_establecimiento_fkey FOREIGN KEY (id_establecimiento) REFERENCES public.establecimientos(id_establecimiento);


--
-- Name: reservaciones reservaciones_id_mesa_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reservaciones
    ADD CONSTRAINT reservaciones_id_mesa_fkey FOREIGN KEY (id_mesa) REFERENCES public.mesa(id_mesa);


--
-- PostgreSQL database dump complete
--

