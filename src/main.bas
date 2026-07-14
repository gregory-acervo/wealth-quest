'=========================================
' WEALTHY-QUEST
' Text RPG
'=========================================

DECLARE SUB MenuPrincipal()
DECLARE SUB Introducao()
DECLARE SUB TelaCheia()

CLS
CALL TelaCheia
CALL MenuPrincipal
END

'=========================================
' TELA CHEIA
'=========================================
SUB TelaCheia
    _FULLSCREEN
END SUB

'=========================================
' MAIN MENU
'=========================================
SUB MenuPrincipal

    DIM opcao AS STRING

    DO
        CLS

        PRINT "==============================================="
        PRINT "               WEALTHY-QUEST"
        PRINT "==============================================="
        PRINT
        PRINT "              1 - START"
        PRINT "              2 - EXIT"
        PRINT
        PRINT "==============================================="
        INPUT "Choose an option: ", opcao

        IF opcao = "1" THEN
            CALL Introducao
            EXIT DO
        ELSEIF opcao = "2" THEN
            CLS
            PRINT
            PRINT "Thank you for playing Wealthy-Quest!"
            PRINT
            END
        END IF

    LOOP

END SUB

'=========================================
' INTRODUCTION
'=========================================
'TESTEEEEE
SUB Introducao

    WIDTH 80, 50
    CLS

    PRINT "==============================================="
    PRINT
    PRINT
    PRINT "              WEALTHY-QUEST"
    PRINT
    PRINT
    PRINT "==============================================="
    PRINT
    PRINT "You are a student at UDESC - CESMO."
    PRINT
    PRINT "After earning a place at the university,"
    PRINT "you had to leave your hometown and move"
    PRINT "to Ca" + CHR$(135) + "ador, Santa Catarina."
    PRINT
    PRINT "With limited financial resources, you rented"
    PRINT "a small apartment near the campus to reduce"
    PRINT "your living expenses."
    PRINT
    PRINT "Besides attending classes, you also secured"
    PRINT "an internship at the UDESC - CESMO"
    PRINT "Administrative Center, where you learn about"
    PRINT "organization, responsibility, and teamwork."
    PRINT
    PRINT "Although you are grateful for this opportunity,"
    PRINT "you know you want to achieve even more."
    PRINT
    PRINT "Determined to build a better future, you decide"
    PRINT "to begin a new adventure in the world of finance,"
    PRINT "learning how to manage money, invest wisely,"
    PRINT "and make smart financial decisions."
    PRINT
    PRINT "Your journey is just beginning..."
    PRINT
    PRINT
    PRINT ">>> PRESS ANY KEY TO CONTINUE <<<"

    DO: LOOP UNTIL INKEY$ <> ""
    DO: LOOP WHILE INKEY$ <> ""

END SUB