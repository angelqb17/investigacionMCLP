SET
 I 'denotes the set of demand nodes' /1*5/
 J 'denotes the set of facility sites' /1*4/;

 Table D(J,I) 'the shortest distance from node i to node j'
     1        2         3        4       5
1   0.9     7.683     12.017   13.55   11.783
2   14.817  8.583     13.867   17.767   8.133
3   13.1    7.833     10.3     5.267    9.15
4   5.967   6.25      8.583    12.483   7.167
;

SCALAR
 S 'the distance beyond which a demand point is considered "uncovered"' /10/
 P  'the number of facilities to be located' /3/;

PARAMETER
A(I) 'population to be served at demand node i'
      /1  6
       2  8
       3 10
       4  8
       5  5/

 N(J,I) 'set of facility sites eligible to provide cover to demand point i';
 N(J,I) $ (D(J,I) < S) = 1;


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
 Constrain1(I).. SUM(J $N(J,I),X(J))=g=Y(I);
 Constrain2.. SUM(J,X(J)) =e= P;


MODEL MIP1 /all/;

SOLVE MIP1 using mip max FO;

MIP1.optcr = 0.01 ;
MIP1.reslim = 1800;
Option LimCol = 0;
Option LimRow = 0;
Option SolPrint = off;

DISPLAY
X.l, Y.l, FO.l,N;