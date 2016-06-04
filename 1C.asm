.data
ENTRADA: .float 5.0, 4.7
SAIDA: .float 0
PI: .float 3.14
.text
	la $t0,ENTRADA
	lw $t1,0($t0)
	lw $t2,4($t0)
	la $t0, PI
	lw $t3, 0($t0)

	mtc1 $t1, $f0 # f0 = r
	mtc1 $t2, $f1 # f1 = h
	mtc1 $t3, $f2 # f2 = pi
	mul.s $f3, $f0, $f0 # resp = r^2
	mul.s $f3, $f3, $f1 # resp *= h
	mul.s $f3, $f3, $f2 # resp *= pi

	la $t0, SAIDA
	swc1 $f1,0($t0)