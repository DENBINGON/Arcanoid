SCREEN 7
right_key = 170
left_key = 130
y_state = 180
circle_x = 160
circle_y = 100
xy = 1
yx = 1
circle_fat = 0
speed_line_l = 8
speed_line_r = 8
speed_cikl = 2000000
circle_fat_regulator = 10
color_1 = 16
nep_1 = 8
nep_2 = -8
ottbit_line = 0
shar_ott = 1
ott_block_1 = 1
state_block = 0

x1_block_1 = 0
x2_block_1 = 40
l1 = 1

x1_block_2 = 41
x2_block_2 = 80
l2 = 1

x1_block_3 = 81
x2_block_3 = 120
l3 = 1

x1_block_4 = 121
x2_block_4 = 160
l4 = 1

x1_block_5 = 161
x2_block_5 = 200
l5 = 1

x1_block_6 = 201
x2_block_6 = 240
l6 = 1

x1_block_7 = 241
x2_block_7 = 280
l7 = 1

x1_block_8 = 281
x2_block_8 = 320
l8 = 1

x3_block_1 = 0
x4_block_1 = 40
l1l = 1

x3_block_2 = 41
x4_block_2 = 80
l2l = 1

x3_block_3 = 81
x4_block_3 = 120
l3l = 1

x3_block_4 = 121
x4_block_4 = 160
l4l = 1

x3_block_5 = 161
x4_block_5 = 200
l5l = 1

x3_block_6 = 201
x4_block_6 = 240
l6l = 1

x3_block_7 = 241
x4_block_7 = 280
l7l = 1

x3_block_8 = 281
x4_block_8 = 320
l8l = 1

y1_block_1 = 10
y2_block_1 = 35

y1_block_2 = 35
y2_block_2 = 60

a = 0
y_schet = 10

circle_y_0 = 175
circle_fat_2 = 5
yyy = 0

boss_x_1 = 20
boss_x_2 = 300
boss_y_1 = 20
boss_y_2 = 70
heal = 100
heals = 0

100
key$ = INKEY$
PRINT "denbingon.com"
PRINT "HELLO GO PLAY MY GAME"
PRINT "TAP 'S' TO START"
PRINT "EXIT 'Q'"
IF key$ = "s" GOTO 115
IF key$ = "S" GOTO 115
IF key$ = "q" THEN STOP
IF key$ = "Q" THEN STOP
IF key$ = "b" GOTO 10001
FOR menu = 0 TO 15000000
NEXT menu
CLS
101 GOTO 100

115
a = l + k + j + h + g + f + d + s + la + ka + ja + ha + ga + fa + da + sa - upalo
PRINT "Score:"; a;

key$ = INKEY$
IF key$ = "a" THEN right_key = right_key - speed_line_l
IF key$ = "a" THEN left_key = left_key - speed_line_l
IF key$ = "d" THEN right_key = right_key + speed_line_r
IF key$ = "d" THEN left_key = left_key + speed_line_r

color_line = INT(RND * color_1)
color_circle = INT(RND * color_1)
FOR circle_fat_c = 0 TO circle_fat_regulator
    circle_fat = circle_fat + 1
    CIRCLE (circle_x, circle_y), circle_fat, color_circle
    IF circle_fat > circle_fat_regulator THEN circle_fat = 1
NEXT circle_fat_c

IF left_key > 280 THEN left_key = left_key + nep_2
IF left_key < 0 THEN left_key = left_key + nep_1

IF right_key > 320 THEN right_key = right_key + nep_2
IF right_key < 40 THEN right_key = right_key + nep_1

LINE (left_key, y_state)-(right_key, y_state), color_line
LINE (left_key, y_state - 1)-(right_key, y_state - 1), color_line
LINE (left_key, y_state - 2)-(right_key, y_state - 2), color_line
LINE (left_key, y_state - 3)-(right_key, y_state - 3), color_line

IF key$ = "e" THEN shar_ott = shar_ott - 1
IF key$ = "e" THEN shar_ott = shar_ott - 1
IF key$ = "E" THEN shar_ott = shar_ott - 1
IF key$ = "E" THEN shar_ott = shar_ott - 1

IF key$ = " " THEN yyy = 1
IF yyy = 0 THEN circle_x_1 = left_key - 2
IF yyy = 0 THEN circle_x_2 = right_key + 2
IF key$ = " " THEN yyy = 1
IF circle_y_0 = 0 THEN yyy = 0

IF yyy = 1 THEN CIRCLE (circle_x_1, circle_y_0), circle_fat_2
IF yyy = 1 THEN CIRCLE (circle_x_2, circle_y_0), circle_fat_2
IF yyy = 1 THEN circle_y_0 = circle_y_0 - 5
IF circle_y_0 < 1 THEN yyy = 0
IF circle_y_0 < 1 THEN circle_y_0 = 175
PRINT circle_y_0

IF shar_ott = 1 THEN circle_y = y_state - 10
IF shar_ott = 1 THEN circle_x = left_key + 20

circle_x = circle_x + xy
IF circle_x > 310 THEN xy = -1
IF circle_x < 10 THEN xy = 1
circle_y = circle_y + yx
IF circle_y > 190 THEN upalo = upalo + 1
IF circle_y > 190 THEN shar_ott = 1
IF circle_y < 10 THEN yx = 1

FOR ottbit_line = 0 TO 40

    circleott1 = circle_x - 5
    circleott2 = circle_y - 5

    FOR cc = 0 TO 10

        circleott1 = circleott1 + 1
        circleott2 = circleott2 + 1

        IF y_state = circle_y AND left_key + ottbit_line = circle_x THEN yx = yx * -1
        IF y_state = circleott2 AND left_key + ottbit_line = circleott1 THEN yx = yx * -1
    NEXT cc

    ottbit_line = ottbit_line + 1
    IF ottbit_line > 40 THEN ottbit = 0

NEXT ottbit_line

IF l1 = 1 THEN LINE (x1_block_1, y1_block_1)-(x2_block_1, y2_block_1), 3, BF

IF l2 = 1 THEN LINE (x1_block_2, y1_block_1)-(x2_block_2, y2_block_1), 2, BF

IF l3 = 1 THEN LINE (x1_block_3, y1_block_1)-(x2_block_3, y2_block_1), 4, BF

IF l4 = 1 THEN LINE (x1_block_4, y1_block_1)-(x2_block_4, y2_block_1), 5, BF

IF l5 = 1 THEN LINE (x1_block_5, y1_block_1)-(x2_block_5, y2_block_1), 7, BF

IF l6 = 1 THEN LINE (x1_block_6, y1_block_1)-(x2_block_6, y2_block_1), 8, BF

IF l7 = 1 THEN LINE (x1_block_7, y1_block_1)-(x2_block_7, y2_block_1), 10, BF

IF l8 = 1 THEN LINE (x1_block_8, y1_block_1)-(x2_block_8, y2_block_1), 13, BF

IF l1l = 1 THEN LINE (x3_block_1, y1_block_2)-(x4_block_1, y2_block_2), 13, BF

IF l2l = 1 THEN LINE (x3_block_2, y1_block_2)-(x4_block_2, y2_block_2), 10, BF

IF l3l = 1 THEN LINE (x3_block_3, y1_block_2)-(x4_block_3, y2_block_2), 8, BF

IF l4l = 1 THEN LINE (x3_block_4, y1_block_2)-(x4_block_4, y2_block_2), 7, BF

IF l5l = 1 THEN LINE (x3_block_5, y1_block_2)-(x4_block_5, y2_block_2), 5, BF

IF l6l = 1 THEN LINE (x3_block_6, y1_block_2)-(x4_block_6, y2_block_2), 4, BF

IF l7l = 1 THEN LINE (x3_block_7, y1_block_2)-(x4_block_7, y2_block_2), 2, BF

IF l8l = 1 THEN LINE (x3_block_8, y1_block_2)-(x4_block_8, y2_block_2), 3, BF

y1bb = y1_block_1
y2bb = y1_block_2

FOR ottbit_shar_block_1 = 0 TO 40

    circleott1 = circle_x - 5
    circleott2 = circle_y - 5

    y1bb = y1_block_1
    y2bb = y1_block_2


    FOR cc = 0 TO 10

        y1bb = y1_block_1
        y2bb = y1_block_2

        circleott1 = circleott1 + 1
        circleott2 = circleott2 + 1

        FOR yy1 = 0 TO 25

            y1bb = y1bb + 1

            IF l1 = 1 THEN IF circleott2 = y1bb AND circleott1 = x1_block_1 + state_block THEN yx = yx * -1
            IF l1 = 1 THEN IF circleott2 = y1bb AND circleott1 = x1_block_1 + state_block THEN l1 = 0

            IF l2 = 1 THEN IF circleott2 = y1bb AND circleott1 = x1_block_2 + state_block THEN yx = yx * -1
            IF l2 = 1 THEN IF circleott2 = y1bb AND circleott1 = x1_block_2 + state_block THEN l2 = 0

            IF l3 = 1 THEN IF circleott2 = y1bb AND circleott1 = x1_block_3 + state_block THEN yx = yx * -1
            IF l3 = 1 THEN IF circleott2 = y1bb AND circleott1 = x1_block_3 + state_block THEN l3 = 0

            IF l4 = 1 THEN IF circleott2 = y1bb AND circleott1 = x1_block_4 + state_block THEN yx = yx * -1
            IF l4 = 1 THEN IF circleott2 = y1bb AND circleott1 = x1_block_4 + state_block THEN l4 = 0

            IF l5 = 1 THEN IF circleott2 = y1bb AND circleott1 = x1_block_5 + state_block THEN yx = yx * -1
            IF l5 = 1 THEN IF circleott2 = y1bb AND circleott1 = x1_block_5 + state_block THEN l5 = 0

            IF l6 = 1 THEN IF circleott2 = y1bb AND circleott1 = x1_block_6 + state_block THEN yx = yx * -1
            IF l6 = 1 THEN IF circleott2 = y1bb AND circleott1 = x1_block_6 + state_block THEN l6 = 0

            IF l7 = 1 THEN IF circleott2 = y1bb AND circleott1 = x1_block_7 + state_block THEN yx = yx * -1
            IF l7 = 1 THEN IF circleott2 = y1bb AND circleott1 = x1_block_7 + state_block THEN l7 = 0

            IF l8 = 1 THEN IF circleott2 = y1bb AND circleott1 = x1_block_8 + state_block THEN yx = yx * -1
            IF l8 = 1 THEN IF circleott2 = y1bb AND circleott1 = x1_block_8 + state_block THEN l8 = 0

        NEXT yy1

        FOR yy2 = 0 TO 25

            y2bb = y2bb + 1

            IF l1l = 1 THEN IF circleott2 = y2bb AND circleott1 = x3_block_1 + state_block THEN yx = yx * -1
            IF l1l = 1 THEN IF circleott2 = y2bb AND circleott1 = x3_block_1 + state_block THEN l1l = 0

            IF l2l = 1 THEN IF circleott2 = y2bb AND circleott1 = x3_block_2 + state_block THEN yx = yx * -1
            IF l2l = 1 THEN IF circleott2 = y2bb AND circleott1 = x3_block_2 + state_block THEN l2l = 0

            IF l3l = 1 THEN IF circleott2 = y2bb AND circleott1 = x3_block_3 + state_block THEN yx = yx * -1
            IF l3l = 1 THEN IF circleott2 = y2bb AND circleott1 = x3_block_3 + state_block THEN l3l = 0

            IF l4l = 1 THEN IF circleott2 = y2bb AND circleott1 = x3_block_4 + state_block THEN yx = yx * -1
            IF l4l = 1 THEN IF circleott2 = y2bb AND circleott1 = x3_block_4 + state_block THEN l4l = 0

            IF l5l = 1 THEN IF circleott2 = y2bb AND circleott1 = x3_block_5 + state_block THEN yx = yx * -1
            IF l5l = 1 THEN IF circleott2 = y2bb AND circleott1 = x3_block_5 + state_block THEN l5l = 0

            IF l6l = 1 THEN IF circleott2 = y2bb AND circleott1 = x3_block_6 + state_block THEN yx = yx * -1
            IF l6l = 1 THEN IF circleott2 = y2bb AND circleott1 = x3_block_6 + state_block THEN l6l = 0

            IF l7l = 1 THEN IF circleott2 = y2bb AND circleott1 = x3_block_7 + state_block THEN yx = yx * -1
            IF l7l = 1 THEN IF circleott2 = y2bb AND circleott1 = x3_block_7 + state_block THEN l7l = 0

            IF l8l = 1 THEN IF circleott2 = y2bb AND circleott1 = x3_block_8 + state_block THEN yx = yx * -1
            IF l8l = 1 THEN IF circleott2 = y2bb AND circleott1 = x3_block_8 + state_block THEN l8l = 0

        NEXT yy2

    NEXT cc

    y_block = y_block + 1
    state_block = state_block + 1
    IF y_block = 25 THEN y_block = 0
    IF state_block > 40 THEN state_block = 0

NEXT ottbit_shar_block_1

IF l1 = 0 THEN s = 1
IF l2 = 0 THEN d = 1
IF l3 = 0 THEN f = 1
IF l4 = 0 THEN g = 1
IF l5 = 0 THEN h = 1
IF l6 = 0 THEN j = 1
IF l7 = 0 THEN k = 1
IF l8 = 0 THEN l = 1

IF l1l = 0 THEN sa = 1
IF l2l = 0 THEN da = 1
IF l3l = 0 THEN fa = 1
IF l4l = 0 THEN ga = 1
IF l5l = 0 THEN ha = 1
IF l6l = 0 THEN ja = 1
IF l7l = 0 THEN ka = 1
IF l8l = 0 THEN la = 1

IF circle_y = y_schet THEN yx = 1

FOR stop_cikl = 0 TO speed_cikl
NEXT stop_cikl

IF key$ = "s" GOTO 100
IF key$ = "S" GOTO 100
IF key$ = "q" THEN STOP
IF key$ = "Q" THEN STOP

IF l1 = 0 AND l2 = 0 AND l3 = 0 AND l4 = 0 AND l5 = 0 AND l6 = 0 AND l7 = 0 AND l8 = 0 AND l1l = 0 AND l2l = 0 AND l3l = 0 AND l4l = 0 AND l5l = 0 AND l6l = 0 AND l7l = 0 AND l8l = 0 THEN shar_ott = 1
IF l1 = 0 AND l2 = 0 AND l3 = 0 AND l4 = 0 AND l5 = 0 AND l6 = 0 AND l7 = 0 AND l8 = 0 AND l1l = 0 AND l2l = 0 AND l3l = 0 AND l4l = 0 AND l5l = 0 AND l6l = 0 AND l7l = 0 AND l8l = 0 GOTO 10001
9999 CLS
10000 GOTO 115
10001

key$ = INKEY$
IF key$ = "q" THEN STOP
IF key$ = "Q" THEN STOP

PRINT "heals:"; heal

IF key$ = "a" THEN right_key = right_key - speed_line_l
IF key$ = "a" THEN left_key = left_key - speed_line_l
IF key$ = "d" THEN right_key = right_key + speed_line_r
IF key$ = "d" THEN left_key = left_key + speed_line_r

color_line = INT(RND * color_1)
color_circle = INT(RND * color_1)
FOR circle_fat_c = 0 TO circle_fat_regulator
    circle_fat = circle_fat + 1
    CIRCLE (circle_x, circle_y), circle_fat, color_circle
    IF circle_fat > circle_fat_regulator THEN circle_fat = 1
NEXT circle_fat_c

IF key$ = "q" THEN STOP
IF key$ = "Q" THEN STOP

IF left_key > 280 THEN left_key = left_key + nep_2
IF left_key < 0 THEN left_key = left_key + nep_1

IF right_key > 320 THEN right_key = right_key + nep_2
IF right_key < 40 THEN right_key = right_key + nep_1

LINE (left_key, y_state)-(right_key, y_state), color_line
LINE (left_key, y_state - 1)-(right_key, y_state - 1), color_line
LINE (left_key, y_state - 2)-(right_key, y_state - 2), color_line
LINE (left_key, y_state - 3)-(right_key, y_state - 3), color_line

IF key$ = "e" THEN shar_ott = shar_ott - 1
IF key$ = "e" THEN shar_ott = shar_ott - 1
IF key$ = "E" THEN shar_ott = shar_ott - 1
IF key$ = "E" THEN shar_ott = shar_ott - 1

IF key$ = " " THEN yyy = 1
IF yyy = 0 THEN circle_x_1 = left_key - 2
IF yyy = 0 THEN circle_x_2 = right_key + 2
IF key$ = " " THEN yyy = 1
IF circle_y_0 = 0 THEN yyy = 0

IF key$ = "q" THEN STOP
IF key$ = "Q" THEN STOP

IF yyy = 1 THEN CIRCLE (circle_x_1, circle_y_0), circle_fat_2
IF yyy = 1 THEN CIRCLE (circle_x_2, circle_y_0), circle_fat_2
IF yyy = 1 THEN circle_y_0 = circle_y_0 - 5
IF circle_y_0 < 1 THEN yyy = 0
PRINT circle_y_0

IF shar_ott = 1 THEN circle_y = y_state - 10
IF shar_ott = 1 THEN circle_x = left_key + 20

ranpos = INT(RND * 10)

circle_x = circle_x + xy
IF circle_x > 310 THEN xy = -1
IF circle_x < 10 THEN xy = 1
circle_y = circle_y + yx
IF circle_y > 190 THEN heal = heal + ranpos
IF circle_y > 190 THEN shar_ott = 1
IF circle_y < 10 THEN yx = 1

IF key$ = "q" THEN STOP
IF key$ = "Q" THEN STOP

FOR ottbit_line = 0 TO 40

    circleott1 = circle_x - 5
    circleott2 = circle_y - 5

    FOR cc = 0 TO 10

        circleott1 = circleott1 + 1
        circleott2 = circleott2 + 1

        IF y_state = circle_y AND left_key + ottbit_line = circle_x THEN yx = yx * -1
        IF y_state = circleott2 AND left_key + ottbit_line = circleott1 THEN yx = yx * -1
    NEXT cc

    ottbit_line = ottbit_line + 1
    IF ottbit_line > 40 THEN ottbit = 0

NEXT ottbit_line

IF heal > 0 THEN LINE (boss_x_1, boss_y_1)-(boss_x_2, boss_y_2), color_line, BF

state_block = 0

IF key$ = "q" THEN STOP
IF key$ = "Q" THEN STOP

FOR ottbit_shar_boss = 0 TO 300

    circleott1 = circle_x - 5
    circleott2 = circle_y - 5

    FOR cc = 0 TO 10

        circleott1 = circleott1 + 1
        circleott2 = circleott2 + 1

        lkll = boss_y_1

        FOR cx = 0 TO 50

            IF heal > 0 THEN IF circleott2 = lkll AND circleott1 = boss_x_1 + state_block THEN yx = yx * -1
            IF heal > 0 THEN IF circleott2 = lkll AND circleott1 = boss_x_1 + state_block THEN heal = heal - 10
            IF heal > 0 THEN IF circleott2 = lkll AND circleott1 = boss_x_1 + state_block THEN GOTO 1337668

            lkll = lkll + 1

        NEXT cx

    NEXT cc

    state_block = state_block + 1

NEXT ottbit_shar_boss


IF key$ = "q" THEN STOP
IF key$ = "Q" THEN STOP
FOR kk = 0 TO 2000000
NEXT kk
CLS
IF key$ = "r" THEN GOTO 1337667
IF heal = 0 GOTO 1337666
IF heal < 0 GOTO 1337666
GOTO 10001
1337666
PRINT "YOU WIN !!!"
PRINT "Press 'S' to go the menu"
PRINT "Press 'Q' to go the menu"
FOR stop1 = 0 TO 10000000
NEXT stop1
CLS
key$ = INKEY$
IF key$ = "s" THEN heal = 100
IF key$ = "s" GOTO 100
IF key$ = "S" GOTO 100
IF key$ = "q" THEN STOP
IF key$ = "Q" THEN STOP
GOTO 1337666

1337667
FOR g = 0 TO 320
    LINE (0, 0)-(320, 200), 4, BF
NEXT g
heal = heal - 20
FOR hh = 0 TO 3000000
NEXT hh
GOTO 10001

1337668
FOR g = 0 TO 320
    LINE (0, 0)-(320, 200), 4, BF
NEXT g
FOR hh = 0 TO 3000000
NEXT hh
GOTO 10001

