10 PRINT "FOR A PRETTY DIAMOND PATTERN, "
20 PRINT "TYPE IN AN ODD NUMBER BETWEEN 5 AND 21: "
30 INPUT N ' Changed variable name from R to N
40 IF N < 5 OR N > 21 OR N MOD 2 = 0 THEN PRINT "INVALID INPUT": END
50 Q = N \ 2

60 FOR L = 1 TO Q
70     X = 1: W = N - 2 * L
80     FOR M = X TO N - W STEP 2
90         PRINT SPACE$(Q - L);
100        FOR O = 1 TO M
110            C = 1
120            FOR R = 1 TO M
130                IF C = 1 THEN PRINT "''": C = C + 1: GOTO 150
140                IF C = 2 THEN PRINT "D": C = C + 1: GOTO 150
150                IF C = 3 THEN PRINT "E": C = C + 1: GOTO 150
160                PRINT "C";
170            NEXT R
180        NEXT O
190        IF O = M THEN PRINT SPACE$(M + Q - M \ 2);
200    NEXT M
210    PRINT
220 NEXT L

230 IF X > 0 THEN X = N - 2: W = 1
240 GOTO 80
250 END
