SET
 I 'denotes the set of demand nodes' /1*90/
 J 'denotes the set of facility sites' /1*20/;

SCALAR
 S 'the distance beyond which a demand point is considered "uncovered"' /20/
 P  'the number of facilities to be located' /10/;

PARAMETER
A(I) 'population to be served at demand node i'
      
/1        16
2        2
3        20
4        1
5        26
6        16
7        16
8        18
9        4
10        8
11        9
12        14
13        9
14        18
15        1
16        24
17        14
18        2
19        17
20        21
21        2
22        15
23        5
24        25
25        16
26        15
27        11
28        9
29        8
30        15
31        3
32        21
33        13
34        18
35        16
36        23
37        7
38        25
39        7
40        26
41        4
42        20
43        17
44        12
45        16
46        26
47        26
48        18
49        2
50        2
51        6
52        4
53        14
54        7
55        1
56        20
57        23
58        24
59        24
60        19
61        16
62        18
63        7
64        12
65        24
66        13
67        14
68        21
69        25
70        20
71        3
72        24
73        5
74        17
75        2
76        26
77        9
78        8
79        1
80        21
81        4
82        15
83        3
84        15
85        16
86        17
87        25
88        6
89        12
90        7 /;


TABLE D(I,J) 'the shortest distance from node i to node j'
	1	2	3	4	5	6	7	8	9	10
1	1.15	13.283	15.483	39.15	17.683	26.817	61.917	66.483	27.917	23.883
2	9.067	9.15	9.5	33.767	12.517	18	56.5	61.067	26.9	25.633
3	8.05	10.817	11.867	33.417	14.167	18.233	59.083	63.65	29.35	32.517
4	9.8	16.35	12.983	37.25	19.75	26.75	66.7	71.267	20.767	25.383
5	9.233	7.417	11.067	35.333	10.783	19.567	54.8	59.367	28.483	23.9
6	11.083	18.633	15.25	42.2	22.033	29.033	64.8	69.367	19.05	23.483
7	15.217	18.667	15.283	32.9	22.067	26.917	61.517	66.083	16.567	24.233
8	4.867	7.883	11.283	34.633	13.933	23.017	57.15	61.717	30.867	24.833
9	11.317	4.4	19.95	44.5	14.283	26.433	52.05	56.617	34.667	18.767
10	18.267	21.967	18.6	36.567	25.367	30.567	65.183	69.75	20.067	28.067
11	29.383	28.667	19	23.167	29.95	25.05	56.967	61.533	32.483	40.45
12	41.883	39.767	26.867	1.783	43.85	37.517	70.283	74.833	32.433	47.517
13	35.833	37.45	25.667	6.283	41.15	36.167	70.55	75.117	30.45	42.967
14	29.567	29.217	16.383	15.65	32.917	29.15	62.417	66.983	26.583	34.55
15	12.033	16.367	6.4	24.817	19.767	22.433	54.333	58.9	22.35	30.2
16	15.267	19.6	10.1	28.567	23	23.25	55.15	59.717	21.5	29.317
17	10.25	13.467	6.35	26.483	16.9	24.1	56.017	60.583	25.733	33.917
18	25.733	25.017	15.15	20.367	26.3	21.4	53.317	57.883	32.983	40.95
19	34.933	33.183	20.467	12.017	37.517	31.35	64.533	69.1	32.6	40.567
20	37.55	35.25	22.533	7.967	39.583	33.433	66.183	70.75	34.9	43.167
21	23.583	15.517	25.667	41.783	12.1	21.017	40.917	45.483	43.433	32.117
22	24.217	16.15	27.45	43.983	12.733	22.8	47.183	51.75	42.633	32.883
23	35.517	27.867	37.317	60.467	24.567	39.1	33.133	37.7	51.017	44.483
24	41.433	36.333	43.233	59.467	30.5	45.217	35.3	39.85	42.667	42.383
25	24.967	19.4	21.15	37.333	11.817	9.417	50.917	55.467	38.983	36.217
26	19.75	10.967	17.717	38.8	12.55	13.4	61.55	66.1	34.883	27.617
27	23.467	22.75	12.817	29.3	21.883	18	52.767	57.333	30.433	38.4
28	22.55	21.833	11.9	26.75	22.95	17.933	52.717	57.283	29.517	37.483
29	32.1	25.233	21.717	37.933	21.933	24.233	52.383	56.95	38.833	41.85
30	44.5	37.133	46.25	57.583	33.1	47.933	33.417	37.983	40.783	40.517
31	62.883	54.083	61.2	71.467	48.183	58.683	3.75	3.367	54.567	54.767
32	69.867	61.1	67.9	79.15	52.9	65.367	10.6	3.667	61.733	61.9
33	68.317	60.533	72.917	84.233	56.95	70.233	15.683	8.733	66.767	67
34	61.433	53.767	63.05	78.717	50.167	66.6	11.85	7.05	61.3	61.467
35	59.767	52.1	61.4	77.05	48.5	62.7	11.45	11.1	59.733	59.933
36	57.85	50.217	59.317	74.367	46.167	63.25	8.517	8.167	57.4	57.583
37	61.75	54.083	63.383	79.05	50.483	66.917	12.167	6.167	61.617	61.783
38	68.533	59.75	66.733	77.7	54.033	64.033	9.267	2.333	60.4	60.567
39	57.567	49.933	59.05	74.083	45.9	62.067	7.333	6.983	57.133	57.317
40	61.167	53.483	62.783	78.45	49.9	66.333	11.583	11.233	61.017	61.2
41	26.183	31.333	23.833	27.35	35.417	34.9	55.367	59.933	7.617	17.117
42	27.483	32.633	25.517	29.383	36.717	36.2	56.667	61.233	6.283	18.417
43	27.767	33.133	25.883	25.25	36.6	36.483	56.967	61.533	6.75	18.45
44	31.65	37.017	29.767	22.167	40.7	41.183	60.85	65.4	10.633	22.333
45	25.05	27.483	19.233	33.45	31.183	30.3	60.433	64.983	15.033	22.683
46	21.817	29.133	27.967	42.783	32.533	38.567	59.65	64.217	13.933	17.417
47	15.483	22.8	22.383	43.117	26.2	35.55	58.65	63.217	14.267	16.867
48	18.417	21.783	25.317	48.583	29.133	32.15	58.367	62.917	19.4	16.567
49	33.267	25.767	38.617	49.667	32.85	44.35	50.183	54.75	24.8	4.917
50	19.15	15.15	27.45	48.15	21.783	33.933	53.3	57.85	25.283	6.817
51	39.717	32.083	33.283	50.2	28.783	30.967	39.9	44.467	51.85	48.7
52	32.7	25.05	27.183	43.3	21.733	24.517	49.967	54.533	44.95	41.667
53	29.667	21.383	23.517	39.633	18.1	22.1	46.3	50.867	41.283	38
54	32.467	24.2	25.033	41.183	20.9	23.733	42.2	46.767	42.833	40.817
55	33.433	25.8	27.917	44.483	22.5	25.283	49.233	53.8	45.967	42.417
56	35.65	27.883	30.767	47.6	24.583	28.367	37.8	42.367	49.117	44.617
57	33.833	26.183	27.067	43.633	22.9	24.517	53.083	57.65	44.867	42.8
58	32.317	24.033	26.233	42.383	20.733	24.933	52.25	56.817	44.033	40.65
59	31.05	22.783	24.183	40.35	19.483	22.9	52.7	57.267	41.983	39.4
60	32.1	25.383	21.683	37.917	22.083	20.467	52.533	57.1	39.55	42
61	46.633	46.733	34.717	14.633	50.233	46.083	75.75	80.317	38.9	50.883
62	47.883	47.7	35.667	12.6	51.2	47.05	76.7	81.267	39.867	51.85
63	46.583	46.683	34.667	11.617	50.183	46.033	75.7	80.267	38.85	50.833
64	46.25	46.35	34.317	11.983	49.833	45.7	75.65	80.217	38.517	50.5
65	45.967	46.067	34.033	25.3	49.567	45.417	71.283	75.85	31.4	48.883
66	45.433	45.533	33.5	28.6	49.033	44.883	67.6	72.167	36.9	43.217
67	42.8	42.9	30.933	25.967	46.383	42.25	65.083	69.65	34.433	40.7
68	49.283	49.1	37.183	27.183	52.6	48.317	71.05	75.6	40.35	46.667
69	42.417	42.517	30.55	25.6	46.017	41.867	64.75	69.317	34.05	40.367
70	49.967	49.8	37.867	32.8	53.283	49.017	74.883	79.45	41.183	50.55
71	57.25	56.9	45.05	39.85	60.383	55.8	77.417	81.983	45.067	54.9
72	49.083	48.917	36.883	31.917	52.4	48.267	71.483	76.05	36.45	47.1
73	52	51.833	39.9	34.717	55.317	51.05	74.267	78.833	39.3	49.933
74	208.783	208.733	195.783	191.067	213.333	207.317	228.383	232.95	195.55	206.1
75	54.917	54.567	42.717	37.517	58.05	53.85	76.767	81.333	42.1	52.733
76	61.167	60.867	48.7	44	64.3	59.717	81.117	85.683	48.733	58.583
77	57.233	56.867	45.017	39.817	60.367	55.783	77.4	81.967	45.033	54.867
78	59.167	58.817	46.933	42.183	62.3	57.717	79.333	83.9	47.05	56.817
79	71.683	71.433	59.333	54.467	74.9	69.85	92.85	97.4	57.5	68.3
80	52.867	52.683	40.767	35.567	56.183	51.9	75.117	79.683	40.15	50.783
81	63.6	60.567	53.05	64.8	56.967	56.083	87.55	92.117	71.7	77.95
82	59.967	57.167	49.433	61.267	53.567	53.033	84.05	88.617	68.167	74.55
83	61.367	58.55	50.833	62.667	54.95	54.333	85.433	90	69.567	75.933
84	54.667	51.833	44.617	56.217	48.233	47.7	78.133	82.7	63.333	69.217
85	49.483	47.233	39.55	50.917	43.183	42.617	73.117	77.683	58.267	64.567
86	56.2	53.383	46.133	57.767	49.783	49.25	79.683	84.25	64.8	70.767
87	52.233	49.967	42.3	53.683	45.917	45.383	75.817	80.383	61.017	67.317
88	55.317	52.483	45.25	56.867	48.883	48.35	78.783	83.35	63.983	69.867
89	59.683	56.85	49.15	60.967	53.267	52.65	83.75	88.3	67.883	74.233
90	65.2	62.267	54.65	66.4	58.567	57.683	89.15	93.717	73.3	79.55
+
	11	12	13	14	15	16	17	18	19	20
1	46.033	32.733	29.833	28.017	40.45	47.883	57.217	61.233	54.917	61.017
2	38.567	25.1	24.217	22.083	35.067	38.05	47.167	51.3	42.533	48.617
3	40.733	27.45	27	25.05	35.05	38.033	47.15	51.283	43.45	49.55
4	41.867	28.583	27.7	25.567	38.55	40.417	50	53.883	46.017	52.1
5	40.45	26.967	23.6	21.667	36.633	39.617	48.733	52.883	44.1	50.2
6	44.133	30.85	29.983	27.85	43.5	38.517	47.783	51.983	48.283	54.383
7	41.95	28.667	27.8	25.717	34.2	35.683	44.983	48.9	46.2	52.283
8	43.417	30.133	26.767	24.817	36.267	39.25	48.367	52.5	48	54.083
9	43.75	30.45	27.1	25.167	46.233	46.967	57	60.483	56.8	62.9
10	45.617	32.317	31.45	29.383	37.867	39.35	48.65	52.567	49.867	55.95
11	39.033	25.567	24.683	21.15	33.583	38.783	47.9	52.05	33.283	39.367
12	52.35	39.2	38.367	36.367	11.917	24.633	36.4	40.3	47.967	54.05
13	51	37.817	37.017	35.033	8.733	21.433	34.383	38.283	57.8	63.9
14	44.3	31	30.1	27.967	18.2	26.8	35.617	39.517	42.017	48.117
15	36.617	22.933	22.067	20.017	26.717	29.083	37.9	41.8	40.433	46.533
16	37.433	23.75	22.867	20.8	29.8	32.9	41.917	46.05	41.25	47.35
17	38.083	24.617	23.733	21.667	28.4	30.767	39.567	43.467	42.1	48.2
18	35.6	21.917	21.067	18.983	30.917	35.85	44.967	49.1	34.183	40.283
19	46.417	33.117	32.267	30.167	18.017	30.9	41.917	46.067	41.517	47.6
20	48.25	35.1	34.317	32.233	18.15	31.033	42.317	46.45	43.617	49.717
21	28.183	13.767	10.083	13.1	43.083	46.067	55.183	59.333	41.033	47.133
22	29.183	14.75	11.067	14.883	45.7	48.733	57.567	61.483	42.817	48.9
23	35.567	35.867	33.117	31.133	61.833	64.817	72.867	76.833	62.817	68.883
24	37.783	41.783	39.033	37.067	61.133	55.733	64.467	68.45	69	75.233
25	31.35	16.917	15.817	11.833	38.633	41.6	50.733	54.867	37.533	43.617
26	43.417	30.133	25.717	23.783	40.1	43.083	52.2	56.35	43.95	50.033
27	33.217	18.783	17.683	15.583	30.517	33.533	42.633	46.783	30.283	36.367
28	33.167	18.717	17.633	15.517	30.267	32.633	41.433	45.333	31.117	37.2
29	34.717	20.983	17.05	10.3	39.233	42.2	51.333	55.467	30.367	36.467
30	35.85	44.433	41.733	39.6	59.167	53.867	62.6	66.567	68.233	74.467
31	22.85	35.133	38.1	49.6	73.283	68.85	76.417	80.367	78.4	84.633
32	29.767	41.583	44.783	56.317	80.45	76.017	83.583	87.533	85.983	92.067
33	34.55	45.933	50.167	61.75	84.817	80.683	89.267	93.467	91.367	97.45
34	31	42.817	46.05	56.417	80.017	75.583	83.15	87.1	86.083	92.167
35	30.567	42.383	45.617	54.767	78.467	74.033	81.6	85.55	84.417	90.5
36	27.65	39.45	42.667	52.417	76.117	71.683	79.25	83.2	82.067	88.167
37	31.317	43.133	46.367	56.75	80.333	75.9	83.467	87.417	86.4	92.483
38	28.433	40.25	43.45	54.983	79.117	74.683	82.25	86.2	84.65	90.733
39	26.467	38.267	41.483	52.15	75.85	71.417	78.983	82.933	80.817	86.917
40	30.733	42.55	45.767	56.15	79.733	75.317	82.867	86.817	85.8	91.9
41	49.75	36.55	35.75	33.767	28.983	29.2	38.367	42.3	58.217	64.317
42	51.033	37.85	37.05	35.067	30.633	34.55	39.667	43.6	59.517	65.617
43	51.383	38.2	37.367	35.367	27.017	34.017	39.95	43.883	60.15	66.233
44	55.233	42.083	41.25	39.233	23.917	27.817	36.583	40.6	64.05	70.117
45	45.35	32.05	31.183	29.117	34.817	34.15	43.45	47.367	49.583	55.683
46	53.433	40.267	39.433	37.417	44.283	33.417	42.667	46.867	62.233	68.317
47	50.383	37.2	36.383	34.417	44.617	33.75	43	47.2	58.867	64.967
48	53.933	40.783	39.967	37.967	49.75	38.867	48.15	52.35	62.417	68.483
49	52.8	48.267	44.917	43.017	51.083	45.15	55.2	58.65	69.683	75.9
50	49.85	36.667	33.9	31.933	49.55	44.617	54.183	58.083	63.6	69.683
51	22.383	6.567	9.467	21.917	51.6	54.95	63.467	67.383	49.7	55.783
52	30.417	15.983	12.767	10.267	45.467	47.583	56.65	60.85	38.933	45.033
53	26.75	12.317	9.5	6.6	40.933	43.917	53.033	57.183	33.917	40
54	32.05	17.6	13.45	8.317	42.483	45.333	54.583	58.85	36.967	43.067
55	29.683	15.25	11.1	9.617	46.2	48.55	58.067	61.9	38.333	44.417
56	27.533	13.117	9.4	14.233	49.017	52.35	60.867	64.8	45.667	51.75
57	35.367	21.683	18.017	10.35	45.35	47.367	57.217	60.883	39.017	45.117
58	34.583	20.85	15.85	9.517	43.683	46.533	55.783	60.067	38.2	44.283
59	33.15	18.717	14.6	7.467	41.65	44.5	53.75	58.017	34.783	40.883
60	34.867	21.133	17.2	2.967	39.217	42.067	51.317	55.583	36.783	42.883
61	60.5	46.95	46.117	44.133	7.267	15.667	31.95	42.117	64.85	70.917
62	61.467	47.917	47.083	45.183	8.233	15.967	32.25	42.417	62.817	68.883
63	60.45	46.9	46.067	44.083	7.217	14.95	31.233	41.4	61.817	67.9
64	60.117	46.55	45.733	43.733	6.883	14.617	30.9	40.633	62.167	68.233
65	59.833	46.283	45.45	43.467	12.783	14.583	30.333	34.217	68.317	74.55
66	59.3	45.75	44.917	42.933	20.983	13.1	26.65	30.5	67.783	74.017
67	56.667	43.083	42.283	40.283	22.9	12.933	24.083	28.017	64.9	70.983
68	63.067	49.25	48.383	46.45	14.65	3.75	25.6	33.95	67.883	74.1
69	56.283	42.717	41.9	39.917	20.817	10.867	23.7	27.633	64.533	70.6
70	63.767	49.95	49.117	47.133	32.133	22.133	33.933	37.817	68.567	74.8
71	72.15	57.117	56.283	54.367	39.217	29.183	5.183	14.5	46.45	52.6
72	62.967	49.15	48.3	46.383	32.633	22.633	7.133	11.5	45.933	52.067
73	65.767	51.983	51.15	49.183	35.433	25.417	11.317	11.183	47.717	53.85
74	222	208.317	207.483	205.617	191.75	181.383	174.3	171.117	203.417	209.5
75	68.633	54.783	53.95	52.033	38.233	28.233	11.1	4.65	45.867	52
76	76.067	61.033	60.2	58.267	36.183	26.167	11.383	23.95	41.6	47.733
77	72.117	57.1	56.25	54.333	39.633	29.617	6.283	14.483	44.267	50.4
78	74.067	59.033	58.2	56.283	43.2	33.183	10.867	16.417	41.917	48.05
79	86.217	71.417	70.617	68.767	47.683	38.217	24.817	24.183	33.55	39.633
80	66.617	52.833	52	50.033	36.133	26.1	3.2	13.017	46.05	52.183
81	69.8	55.967	52.083	45.517	71.483	71.9	56.083	55.417	19.417	10.533
82	66.233	52.45	48.583	41.917	67.967	67.367	52.517	51.85	15.817	6.917
83	67.667	53.833	49.967	43.3	69.367	74.4	56.833	56.183	13.283	18.467
84	60.633	47.067	43.217	36.583	62.817	61.25	47.183	46.517	10.55	8.817
85	55.183	42.033	38.2	31.433	57.867	56.183	42.1	41.45	5.483	11.533
86	62.167	48.617	44.767	38.133	64.367	62.8	48.717	48.067	12.1	6.9
87	58.317	44.733	40.9	34.267	60.4	58.933	44.867	44.2	8.233	3.3
88	61.283	47.717	43.867	37.233	63.467	61.9	47.833	47.167	11.2	6.233
89	65.983	52.133	48.267	41.617	67.667	67.117	52.267	51.6	15.567	6.667
90	72.583	57.567	53.683	47.1	73.083	73.533	57.683	57.017	21	12.083
;
 

PARAMETER
 N(I,J) 'set of facility sites eligible to provide cover to demand point i';
 N(I,J) $ (D(I,J) < S) = 1;


VARIABLES
 FO
 X(J)
 Y(I);

BINARY VARIABLES
 X(J)
 Y(I);

EQUATIONS
 Objective
 Constrain1(I)
 Constrain2;

 Objective.. FO =e= SUM(I,A(I)*Y(I));
 Constrain1(I).. SUM(J $N(I,J),X(J))=g=Y(I);
 Constrain2.. SUM(J,X(J)) =e= P;


MODEL MIP1 /all/;

SOLVE MIP1 using mip max FO;

MIP1.optcr = 0.01 ;
MIP1.reslim = 1800;
Option LimCol = 0;
Option LimRow = 0;
Option SolPrint = off;

DISPLAY
N,X.l, Y.l, FO.l;