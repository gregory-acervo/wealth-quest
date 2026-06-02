DIM opcoes$(3) 'DIM cria um array e opcoes$(3) é um array de strings com 3 elementos'
opcoes$(0) = "Novo Jogo"
opcoes$(1) = "Carregar Jogo"
opcoes$(2) = "Opções"
opcoes$(3) = "Sair"

sel = 0 'Variável para armazenar a opção selecionada | Inicializada em 0 para selecionar a primeira opção do menu.'

DO 'Loop para exibir o menu e capturar a seleção do usuário.'
  CLS 'Clean Screen'
  PRINT "========================================"
  PRINT "              WEALTH QUEST              "
  PRINT "========================================"
  PRINT

  FOR i = 0 TO 3
    IF i = sel THEN PRINT "> "; opcoes$(i) 'Se o i igual à opção selecionada, exibe com ">" na frente.'
        ELSE PRINT "  "; opcoes$(i) 'Se não, exibe normalmente.'
  NEXT i 'Loop para exibir as opções do menu.'

  k$ = INKEY$ 'k$ é uma variável string e o INKEY$ é uma função para captar a tecla pressionada.'
  IF k$ = CHR$(0) THEN ''
    c = ASC(INKEY$)   ' código da seta
    IF c = 72 THEN sel = sel - 1
    IF c = 80 THEN sel = sel + 1
  ELSE
    IF ASC(k$) = 13 THEN EXIT DO   ' Enter
    n = ASC(k$) - 48
    IF n >= 1 AND n <= 4 THEN sel = n
  END IF

  IF sel < 1 THEN sel = 4
  IF sel > 4 THEN sel = 1
LOOP

SELECT CASE sel
CASE 1
  PRINT "Novo jogo..."
CASE 2
  PRINT "Carregar jogo..."
CASE 3
  PRINT "Opções..."
CASE 4
  END
END SELECT