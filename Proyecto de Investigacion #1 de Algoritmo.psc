// Funciones o SubAlgoritmo  del proyecto
// SubAlgoritmo menus del proyecto
Funcion opcion=presentarMenu(titulo,menu,lim)
	Definir opcion Como Caracter
	Definir pos Como Entero
	Borrar Pantalla
	Escribir titulo
	Para pos=0 Hasta lim-1 Con Paso 1 Hacer
		Escribir menu[pos]
	Fin Para
	Escribir "       Elija opción[1..",lim,"]" Sin Saltar
	leer opcion
FinFuncion

////////////////////////////////////////////////////////////////

//submenu numerico
// 1.- Pide dos numeros y presenta el mayor de los dos
Funcion mayorDosNumeros()
	Definir num1,num2 Como Entero
	Escribir "Ingrese numero 1"
	leer num1
	Escribir "Ingrese numero 2"
	leer num2
	Si num1 > num2 Entonces
		Escribir num1," Es mayor que ",num2
	SiNo
		Si num1 < num2 Entonces
			Escribir num1," Es menor que ",num2
		SiNo
			Escribir num1," Es igual a ",num2
		Fin Si
	Fin Si
FinFuncion
// 2.- Dividir dos numeros por restas
funcion Dividirdosnumerosporrestas()
	definir num1,num2,cont,rest Como real
	escribir "ingrese el numero 1"
	leer num1
	Escribir "ingrese el numero 2"
	leer num2
	cont=0
	rest=num1
	Mientras res-num2>=0 Hacer
		res=res-num2
		c=c+1
		Escribir (res+num2), " - ", num2, " = ", res
	FinMientras
	Escribir "La Division Por Resta es: ", c
FinFuncion
// 3.- Multiplicar dos numeros por sumas
Funcion Multiplicardosnumerosporsumas()
	Definir  n1,n2,r Como real
	Definir c, acu Como Entero
	Escribir "Ingrese el primer numero" 
	Leer n1
	Escribir "Ingrese el segundo numero" 
	Leer n2
	r=n1*n2
	acu=0
	c=1
	Mientras c<=n1 Hacer
		acu=acu+n2
		c=c+1
		Escribir acu-n2, " + ", n2, " = ", acu
	FinMientras
	Escribir "La Multiplicacion Por Suma es: ", r
FinFuncion
// 4.- Suma Pares y Productos multiplos de 5 de una secuencia de numeros
funcion SumaParesyProductosmultiplosde5()
	Definir  num, n, cp, sumpar, mult5, acumul5, c Como entero
	cp=0; acumul5=0; mult5=1; sumpar=0; c=1
	Escribir "Ingrese Cantidad De Numero : "
	Leer n
	Para c=1 Hasta n Con Paso 1 Hacer
		Escribir "Ingrese Numeros: "
		leer num
		Si num mod 2==0  Entonces
			cp=cp+1
			sumpar=sumpar+num
		FinSi
		si num mod 5==0 Entonces
			acumul5=acumul5+1
			mult5=mult5*num
		Fin Si
	FinPara
	Escribir "Suma de pares:", sumpar
	Escribir "Multipos de 5: ", mult5
FinFuncion
// 5.- Presentar cantidad de digitos de todos los numeros de una secuencia de numeros hasta 0
Funcion cantidaddedigitosdeunasecuencia()
	Definir num,c,r,ac Como Entero
	Escribir "Ingrese un Numero"
	Leer num
	c= 0
	Mientras num<>0 Hacer
		Mientras num<>0 Hacer
			num=trunc(num/10)
			c=c+1
		Fin Mientras
		Escribir "Ingrese numero"
		Leer num
	Fin Mientras
	Escribir "La Cantidad de Digitos del Numero es: ",c
FinFuncion
// 6.- Mostrar El Precio, descuento, iva y pago de n trajes
Funcion totaldedescuentoivantrajes()
	Definir n,n2,cont,suma,sumaiva,sumatotal,sumare,sum,sumap Como real
	Escribir "ingrese cuantos productos compro"
	leer n
	suma=0;cont=0;sumatotal=0;sumaiva=0;sumare=0;sum=0;sumap=0 
	Mientras cont<n Hacer
		Escribir "ingrese el valor de la compra uno por uno"
		leer n2
		suma=suma+n2
		cont=cont+1
	FinMientras
	si suma > 100 Entonces
		sum=suma*0.10
		sumare=(sumare-sum)*0.12
		sumatotal=suma+sumare
		Escribir "El valor de la compra con el descuento es: ",sumatotal
	SiNo
		sumap=suma*0.12
		sumaiva=suma+sumap
		Escribir "El valor total de la compra con iva es: ",sumaiva
	FinSi
FinFuncion
// 7.- Dado tres numeros indicar si el segundo es el mayor
Funcion segundo_mayor()
	Definir n1,n2,n3 Como Entero
	Escribir "ingrese el primer numero"
	leer n1
	Escribir "ingrese el segundo numero"
	leer n2
	Escribir "ingrese el tercer numero"
	leer n3
	si n2>n1 y n2>n3 Entonces
		Escribir " El segundo numero SI es el mayor "
	SiNo
		escribir " EL segundo numero NO es el Numero mayor "
	FinSi
FinFuncion
// 8.- Dado una secuencia de numeros presentar su promedio
Funcion promedio()
	Definir num, sum, prom Como real
	Definir c Como Entero
	c=0
	num=0
	sum=0
	Mientras num>=0 Hacer
		Escribir "Ingrese Un Numero: "
		leer num
		c=c+1
		si num>=0 Entonces
			sum=sum+num
			prom=sum/c
		FinSi
	FinMientras
	escribir "El Promedio de ", sum, " es: ", prom
FinFuncion
// 9.- Numeros amigos
Funcion numeroamigo()
	Definir n,n2,cont,sumadep,sumader,r,p,cont2 Como Entero
	Escribir "ingrese los dos numeros"
	leer n,n2
	cont=1;sumader=0;sumadep=0;cont2=1
	escribir "divisores de: ",n
	Mientras cont<9 Hacer
		r=n mod cont
		si r=0 Entonces
			sumader=sumader+cont
			Escribir cont
		Finsi
		cont=cont+1
	FinMientras
	escribir "divisores de: ",n2
	Mientras cont2<9 Hacer
		p=n2 mod cont2
		si p=0 Entonces
			sumadep=sumadep+cont2
			Escribir cont2
		Finsi
		cont2=cont2+1
	FinMientras
	si sumader=sumadep Entonces
		Escribir "son numeros amigos"
	SiNo
		Escribir "no son numeros amigos"
	FinSi
	Escribir  sumadep
	Escribir sumader
FinFuncion
// 10.- primos gemelos
Funcion primogemelos()
	Definir i1,i2,cont1,cont2,n1,n2 Como Entero
	Escribir "ingrese los numeros"
	leer n1,n2
	i1=1
	i2=1
	cont1=0
	cont2=0
	Mientras i1<= n1 Hacer
		si n1 mod i1==0
			cont1=cont1+1
		FinSi
		i1=i1+1
		Mientras i2<=n2 Hacer
			si n2 mod i2==0
				cont2=cont2+1
			FinSi
			i2=i2+1
		FinMientras
	FinMientras
	si cont1 ==2 Entonces
		si cont2==2 Entonces
		FinSi
		Escribir " los numeros: " , n1 , " y " , n2 , " son primos gemelos"
	SiNo
		Escribir " los numeros: " , n1 , " y " , n2 , " no son primos gemelos"
	FinSi
FinFuncion
//submenu cadenas
// 1.- Presentar un nombre caracter por caracter
funcion nombrecaracter()
	Definir nombre Como Caracter
	definir pos,l Como Entero
	nombre=""
	pos=0
	l=0
	Escribir "ingrese el nombre"
	leer nombre
	l=Longitud(nombre)-1
	para pos=0 hasta l con paso 1 Hacer
		Escribir Subcadena(nombre,pos,pos) 
	FinPara
FinFuncion
// 2.- Presentar el primero, el medio y el ultimo caracter de una frase
Funcion presentarloscaracteresquepideunafrase()
	Definir frase Como Caracter
	definir l Como Entero
	Escribir "ingrese la frase"
	leer frase
	l=Longitud(frase)
	Escribir "la primera letra de la frase es: ",Subcadena(frase,0,0)
	Escribir "la letra de la mitad de la frase es: ",Subcadena(frase,l/2,l/2)
	Escribir "la ultima letra de la frase es: ",Subcadena(frase,l-1,l-1)
FinFuncion
// 3.- Dado dos nombres indicar si son iguales
Funcion nombresiguales()
	Definir nom1,nom2 Como Caracter
	leer nom1,nom2
	si nom1=nom2 Entonces
		Escribir "los nombres :" , nom1, " y " , nom2 , "  son iguales " 
	SiNo
		Escribir " los nombres no son iguales"
	FinSi
FinFuncion
// 4.- Dadas dos frase indicar la de mayor longitud
funcion frasemayor()
	definir frase1, frase2 Como Caracter
	Definir lon Como Entero
	Escribir "Ingrese frase 1";leer frase1
	Escribir "Ingrese frase 2";leer frase2
	si Longitud(frase1)>Longitud(frase2) Entonces
		escribir " << ", frase1, " >> ", " Tiene mayor longitud que ", " << ", frase2, " >> "
	SiNo
		escribir " << ", frase2, " >> "," Tiene mayor longitud que ", " << ", frase1, " >> "
	FinSi
FinFuncion
// 5.- Indicar cuantas ,.;: hay en una cadena
Funcion indicarloquepideenunacadena()
	definir frase Como Caracter
	Definir lon, pos, c1, c2, c3, c4 Como Entero
	pos=0;c1=0; c2=0; c3=0; c4=0
	Escribir "Ingrese frase";leer frase
	lon=Longitud(frase)-1
	Para pos=0 Hasta lon Con Paso 1 Hacer
		Si Subcadena(frase,pos,pos)=","
			c1=c1+1
		FinSi
		Si Subcadena(frase,pos,pos)="."
			c2=c2+1
		FinSi
		Si Subcadena(frase,pos,pos)=";"
			c3=c3+1
		FinSi
		Si Subcadena(frase,pos,pos)=":"
			c4=c4+1
		FinSi
	FinPara
	Escribir "La Cantidad de , es: ", c1
	Escribir "La Cantidad de . es: ", c2
	Escribir "La Cantidad de ; es: ", c3
	Escribir "La Cantidad de : es: ", c4
FinFuncion
// 6.- Dado una cadena indicar cuantas vocales, consonantes y digitos hay
Funcion cuantasvocalesconsonantesydigitoshayenlacadena()
	Definir frase Como Caracter
	definir l,cc,cv,cd,pos Como Entero
	Escribir "ingrese la frase "
	leer frase
	pos=0
	cc=0
	cv=0
	cd=0
	l=Longitud(frase)-1
	para pos=0 Hasta l con paso 1 Hacer
		si Subcadena(frase,pos,pos)="a" o Subcadena(frase,pos,pos)="e" o Subcadena(frase,pos,pos)="i" o subcadena(frase,pos,pos)="o" o subcadena(frase,pos,pos)="u" o subcadena(frase,pos,pos)="A" o subcadena(frase,pos,pos)="E" o subcadena(frase,pos,pos)="I" o subcadena(frase,pos,pos)="O" o subcadena(frase,pos,pos)="u"o subcadena(frase,pos,pos)="U" Entonces
			cv=cv+1
		FinSi
	FinPara
	para pos=0 Hasta l con paso 1 Hacer
		si Subcadena(frase,pos,pos)="b" o Subcadena(frase,pos,pos)="c" o Subcadena(frase,pos,pos)="d" o Subcadena(frase,pos,pos)="f" o Subcadena(frase,pos,pos)="g" o Subcadena(frase,pos,pos)="h" o Subcadena(frase,pos,pos)="j" o Subcadena(frase,pos,pos)="k" o Subcadena(frase,pos,pos)="l" o Subcadena(frase,pos,pos)="m" o Subcadena(frase,pos,pos)="n" o Subcadena(frase,pos,pos)="ñ" o Subcadena(frase,pos,pos)="p" o Subcadena(frase,pos,pos)="q" o Subcadena(frase,pos,pos)="r" o Subcadena(frase,pos,pos)="s" o Subcadena(frase,pos,pos)="t" o Subcadena(frase,pos,pos)="v" o Subcadena(frase,pos,pos)="w" o Subcadena(frase,pos,pos)="x" o  Subcadena(frase,pos,pos)="y" o Subcadena(frase,pos,pos)="z" o Subcadena(frase,pos,pos)="B" o Subcadena(frase,pos,pos)="C" o Subcadena(frase,pos,pos)="D" o Subcadena(frase,pos,pos)="F" o Subcadena(frase,pos,pos)="G" o Subcadena(frase,pos,pos)="H" o Subcadena(frase,pos,pos)="J" o Subcadena(frase,pos,pos)="K" o Subcadena(frase,pos,pos)="M" o Subcadena(frase,pos,pos)="N" o Subcadena(frase,pos,pos)="Ñ" o Subcadena(frase,pos,pos)="P" o Subcadena(frase,pos,pos)="Q" o Subcadena(frase,pos,pos)="R" o Subcadena(frase,pos,pos)="S" o Subcadena(frase,pos,pos)="T" o Subcadena(frase,pos,pos)="V" o Subcadena(frase,pos,pos)="W" o Subcadena(frase,pos,pos)="X" o Subcadena(frase,pos,pos)="Y" o Subcadena(frase,pos,pos)="Z" Entonces
			cc=cc+1
		FinSi	
	FinPara
	para pos=0 Hasta l con paso 1 Hacer
		si Subcadena(frase,pos,pos)>="0" y Subcadena(frase,pos,pos)<="9" Entonces
			cd=cd+1
		FinSi
	FinPara
	Escribir " la frase tiene: " , cv , " vocales "
	Escribir " la frase tiene: " , cc , " consonantes "
	Escribir " la frase tiene: " , cd , " digitos "
FinFuncion
// 7.- Indicar cuantas palabras hay en una frase asumiendo 1 o varios espacios entre palabras
Funcion palabrasenunafrase()
	definir frase,car,carante Como Caracter
	definir pos,ce,l Como Entero
	frase=""
	ce=1
	pos=0
	l=0
	Escribir " ingrese la frase "
	leer frase
	l=Longitud(frase)-1
	para pos=0 Hasta l Con Paso 1 Hacer
		car= Subcadena(frase,pos,pos)
		carante= Subcadena(frase,pos-1,pos-1)
		Escribir car Sin Saltar
		si car<>" " y carante= " " Entonces
			ce=ce+1
		FinSi
	FinPara
	Escribir ""
	Escribir " la frase " , " << ", frase , " >> "," tiene " , ce , " palabras "
FinFuncion
// 8.- Presentar la suma de los digitos de una cedula
Funcion sumacedula()
	Definir n,d,c Como real
	leer n
	c=0
	Mientras n>0 Hacer
		d=n mod 10
		c=c+d
		n=trunc(n/10)
	FinMientras
	Escribir "la suma de los numeros de la cedula es: ",c 
FinFuncion
// 9.- Indicar si una palabra es palindroma
funcion palindroma()
	Definir palabra,inversa Como Caracter
	Definir a,b,i Como Entero
	Escribir "ingrese la palabra"
	leer palabra
	inversa="";
	b=Longitud(palabra)
	para i=b Hasta 0 Con Paso -1 Hacer
		inversa=inversa+Subcadena(palabra,i,i)
	FinPara
	Escribir inversa
	si palabra=inversa Entonces
		Escribir "la palabra: ",palabra," es palindroma"
	SiNo
		Escribir "la palabra: ",palabra," no es palindroma"
	FinSi
FinFuncion
// 10.- Presentar la posicion de un caracter o subcadena cualquiera dentro de una cadena
Funcion posicioncaracter()
	Definir frase, letra, veri Como Caracter
	Definir a,b,i  Como Entero
    Definir lencontra Como Logico
	Escribir "ingrese la palabra"
	leer frase
	Escribir "Ingrese la letra"
	Leer letra
	lencontra=Falso
	Mientras (i<=Longitud(frase)) Hacer
		
		si (Subcadena(frase,i,i))=letra Entonces
			lencontra=Verdadero
			b=i
		FinSi
		i=i+1
	FinMientras
	Escribir "posicion: ",b
FinFuncion
//submenu arreglo
// 1.- Dado un arreglo cualquiera ingresarlo y presentarlo
Funcion presentararreglo()
	Definir cuan,pos,n,posi Como Entero
	Escribir "cuantos numeros vas a ingresar"
	leer cuan
	Dimension n[cuan]
	posi=1
	para pos=0 Hasta cuan-1 Con Paso 1 Hacer
		Escribir "ingres nombre de la posicion ",posi
		leer n[pos]
		posi=posi+1
	FinPara
	Escribir "los numeros ingresados son"
	para pos=0 Hasta cuan-1 Con Paso 1 Hacer
		Escribir n[pos]
	FinPara
FinFuncion
// 2.- Presentar los numeros pares de un arreglo
Funcion numerospares()
	Definir cuan,pos,n,posi,c Como Entero
	Escribir "cuantos numeros vas a ingresar"
	leer cuan
	Dimension n[cuan]
	posi=1
	para pos=0 Hasta cuan-1 Con Paso 1 Hacer
		Escribir "ingres el numero: ",posi
		leer n[pos]
		posi=posi+1
	FinPara
	Escribir "acontinuacion se desplazara los numeros que son pares asia abajo"
	para pos=0 Hasta cuan-1 Con Paso 1 Hacer
		c=n[pos] mod 2
		si c=0 Entonces
			Escribir n[pos]," es par"
		SiNo
			Escribir n[pos]," no es par"
		FinSi
	FinPara
FinFuncion
// 3.- Dado una serie de numeros guardar en un arreglo solo los numeros negativos
Funcion nnegativos()
	Definir pos,n,cuan,c,posi Como Entero
	Escribir "ingrese cuantos numeros vas ingresa "
	leer cuan
	posi=1
	Dimension n[cuan]
	para pos=0 Hasta cuan-1 Con Paso 1 Hacer
		Escribir "ingrese el numero",posi	
		leer n[pos]
		posi=posi+1
	FinPara
	Escribir "acontinuacion se desplazara los numeros que son negatios asia abajo"
	para pos=0 Hasta cuan-1 Con Paso 1 Hacer
		si n[pos] < 0 Entonces
			Escribir n[pos]
		FinSi
	FinPara
FinFuncion
// 4.- Dado un arreglo de nombres presentar el primer caracter de cada nombre
Funcion letrainicial()
	Definir cuan,pos,posi,c Como Entero
	Definir n Como Caracter
	Escribir "cuantos nombres vas a ingresar"
	leer cuan
	Dimension n[cuan]
	posi=1
	para pos=0 Hasta cuan-1 Con Paso 1 Hacer
		Escribir "ingres el nombre: ",posi
		leer n[pos]
		posi=posi+1
	FinPara
	para pos=0 Hasta cuan-1 Con Paso 1 Hacer
		Escribir "la primera letra del nombre de ",n[pos]," es: ",Subcadena(n[pos],0,0)
	FinPara
FinFuncion
// 5.- Dado un arreglo de numeros presentar el total, la cantidad y el promedio del arreglo
Funcion numtotalcantitadpromedio()
	Definir cuan,pos,posi,posi1,c,n,acu,pro Como real
    Escribir "cuantos numeros vas a ingresar"
	leer cuan
	Dimension n[cuan]
	posi=1;acu=0;posi1=0;pro=1
	para pos=0 Hasta cuan-1 Con Paso 1 Hacer
		Escribir "ingres el numero: ",posi
		leer n[pos]
		acu=acu+n[pos]
		posi=posi+1
		posi1=posi1+1
	FinPara
	pro=acu/cuan
	Escribir "la suma de los numeros es:",acu
	Escribir "la cantidad de los numeros es:",posi1
	Escribir "el promedio de los numeros es: ",pro
FinFuncion
// 6.- Dado un arreglo presentarlo al revez solo los numeros multiplos de 5
Funcion multiplosde5()
	Definir num,div,r,lim,pos,i Como real
	div = 5
	Escribir "Ingrese la cantidad de numeros"
	leer lim
	Dimension num[lim]
	pos=1
	para i = 0 hasta lim-1 con paso 1 Hacer
		Escribir "Ingresa el numero ",pos
		leer num[i]
		pos=pos+1
	FinPara
	Escribir ""
	para i = lim-1 hasta 1 con paso -1 hacer
		Si num[i] mod div = 0 Entonces
			Mostrar num[i] " , " Sin Saltar
		FinSi
	FinPara
FinFuncion
// 7.- Dado un arreglo presentar el primero, el medio y el ultimo elemento de arreglo
Funcion presentarelprimeromedioyultimo()
	definir num,lim,i Como Entero
	dimension num[5]
	Escribir "Ingresa 5 numeros"
	para i = 0 hasta 5-1 con paso 1 Hacer
		Escribir "Ingresa el numero ",i
		leer num[i]
	FinPara
	Escribir ""
	para i = 0 hasta 5-1 con paso 2 Hacer
		Mostrar " [ " num[i], " ] " Sin Saltar
	FinPara          
	Escribir ""
	para i = lim-1 hasta 1 con paso -1 hacer
		Si num[i] mod div = 0 Entonces
			Mostrar num[i] " , " Sin Saltar
		FinSi
	FinPara
FinFuncion
// 8.- Dado un arreglo copiarlo en otro y presentarlo
Funcion presntarloenotroarreglo()
	definir num,lim,i,ele,pos Como Entero
	Escribir "Ingrese la cantidad de numeros"
	leer lim
	Dimension num[lim]
	Dimension ele[lim]
	pos=1
	Escribir "ingres los numeros del arreglo"
	para i = 0 hasta lim-1 con paso 1 Hacer
		
		leer num[i]
		ele[i]=num[i]
		pos=pos+1
	FinPara
	Escribir " los numeros se han copiado con exito en otro arreglo"
	para i = 0 hasta lim-1 con paso 1 hacer 
		Mostrar " , ",ele[i] Sin Saltar
	FinPara
FinFuncion
// 9.- Dado 2 arreglos copiar en un otro arreglo la suma de cada elemento de los 2 arreglos
Funcion Sumadedosarreglo()
	Definir arrgl, array,sum,i,lim,pos Como Entero
	Escribir "Ingrese la cantidad de numeros"
	leer lim
	Dimension arrgl[lim]
	Dimension array[lim]
	Dimension sum[lim]
	i=0;pos=1
	Escribir "Arreglo 1"
	para i = 0 hasta lim-1 con paso 1 Hacer
		leer arrgl[i]
	FinPara
	Escribir "Arreglo 2"
	para i = 0 hasta lim-1 con paso 1 Hacer
		
		leer array[i]
	FinPara
	para i = 0 hasta lim-1 con paso 1 Hacer
		sum[i] = array[i] + arrgl[i]
	FinPara
	Escribir ""
	Escribir "La Suma: "
	para i = 0 hasta lim-1 con paso 1 Hacer
		Mostrar sum[i]
	FinPara
FinFuncion
// 10.- Dado una serie de numeros guarda en un arreglo los factoriales
Funcion Arreglo_Factorial()
	Definir num,i,lim,x,fact,pos Como real
	Escribir "Ingrese la cantidad de numeros"
	leer lim
	Dimension fact[lim]
	pos=1
	para i = 0 hasta lim-1 con paso 1 Hacer
		Escribir "Ingresa el numeros ",pos
		leer num
		x = num
		Mientras x > 1 Hacer
			x = x - 1
			num = num * x
		FinMientras
		fact[i] = num
		pos=pos+1
	FinPara
	Escribir ""
	para i = 0 hasta lim-1 con paso 1 Hacer
		Mostrar fact[i]," , " Sin Saltar
	FinPara	
FinFuncion
// Algoritmo principal del proyecto
Proceso proyecto
	Definir menuPrincipal,menuNumeros,menuCadenas,menuArreglos,titulo,titulo2,opc,opcn,apcc,apca Como Caracter
	Definir pos,lim Como Entero
	Dimension menuPrincipal[4],menuNumeros[11],menuCadenas[11],menuArreglos[11]
	// Arreglo menu principal
	menuPrincipal[0] = "  1)Ejercicios con Numeros"
	menuPrincipal[1] = "  2)Ejercicios con Cadenas"
	menuPrincipal[2] = "  3)Ejercicios con Arreglos"
	menuPrincipal[3] = "  4)Salir"
	
	// arreglo submenu numeros
	menuNumeros[0] = "  1)Mayor de 2 Numeros"
	menuNumeros[1] = "  2)Dividir dos numeros por restas"
	menuNumeros[2] = "  3)Multiplicar dos numeros por sumas"
	menuNumeros[3] = "  4)Suma Pares y Productos multiplos de 5 de una secuencia de numeros"
	menuNumeros[4] = "  5)Presentar cantidad de digitos de todos los numeros de una secuencia de numeros hasta 0"
	menuNumeros[5] = "  6)Mostrar El Precio, descuento, iva y pago de n trajes del amacen SomosMas"
	menuNumeros[6] = "  7)Dado tres numeros indicar si el segundo es el mayor"
	menuNumeros[7] = "  8)Dado una secuencia de numeros presentar su promedio"
	menuNumeros[8] = "  9)Numeros amigos"
	menuNumeros[9] = "  10)primos gemelos"
	menuNumeros[10]= "  11)Salir"
	// arreglo submenu cadenas
	menuCadenas[0] = "  1)Presentar un nombre caracter por caracter"
	menuCadenas[1] = "  2)Presentar el primero, el medio y el ultimo caracter de una frase"
	menuCadenas[2] = "  3)Dado dos nombres indicar si son iguales"
	menuCadenas[3] = "  4)Dadas dos frase indicar la de mayor longitud"
	menuCadenas[4] = "  5)Indicar cuantas ,.;: hay en una cadena"
	menuCadenas[5] = "  6)Dado una cadena indicar cuantas vocales, consonantes y digitos hay"
	menuCadenas[6] = "  7)Indicar cuantas palabras hay en una frase asumiendo 1 o varios espacios entre palabras"
	menuCadenas[7] = "  8)Presentar la suma de los digitos de una cedula"
	menuCadenas[8] = "  8)Indicar si una palabra es palindroma"
	menuCadenas[9] = "  10)Presentar la posicion de un caracter o subcadena cualquiera dentro de una cadena"
	menuCadenas[10] = "  11)Salir"
	// arreglo submenu arreglos
	menuArreglos[0]= "1)Dado un arreglo cualquiera ingresarlo y presentarlo"
	menuArreglos[1]= "2)Presentar los numeros pares de un arreglo"
	menuArreglos[2]= "3)Dado una serie de numeros guardar en un arreglo solo los numeros negativos"
	menuArreglos[3]= "4)Dado un arreglo de nombres presentar el primer caracter de cada nombre"
	menuArreglos[4]= "5)Dado un arreglo de numeros presentar el total, la cantidad y el promedio del arreglo"
	menuArreglos[5]= "6)Dado un arreglo presentarlo al revez solo los numeros multiplos de 5"
	menuArreglos[6]= "7)Dado un arreglo presentar el primero,el medio y el ultimo elemento del arreglo"
	menuArreglos[7]= "8)Dado un arreglo copiarlo en otro y presentarlo"
	menuArreglos[8]= "9)Dado 2 arreglos copiar en otro arreglo la suma de cada elemento de los 2 arreglos"
	menuArreglos[9]= "10)Dado una serie de numeros guarda en un arreglo los factoriales"
	menuArreglos[10]="11) Salir"
	opc=""
    Mientras opc <> "4" Hacer
		opc=presentarMenu("Menu Principal",menuPrincipal,4)
		Segun opc Hacer
			"1":
				opcn=""
				Mientras opcn <> "11" Hacer         
					opcn=presentarMenu("Menu Numeros",menuNumeros,11)
					Segun opcn Hacer
						"1":
							Escribir "Mayor de dos Numeros"
							mayorDosNumeros()
							Esperar 3 Segundos
						"2":
							Escribir "Dividir dos numeros por restas"
							Dividirdosnumerosporrestas()
							Esperar 3 Segundos
						"3":
							Escribir "Multiplicar dos numeros por sumas"
							Multiplicardosnumerosporsumas()
							Esperar 3 Segundos
						"4":
							Escribir "Suma Pares y Productos multiplos de 5 de una secuencia de numeros"
							SumaParesyProductosmultiplosde5()
							Esperar 3 Segundos
						"5":
							Escribir "Presentar cantidad de digitos de todos los numeros de una secuencia de numeros hasta 0"
							cantidaddedigitosdeunasecuencia()
							Esperar 3 Segundos
						"6":
							Escribir "Mostrar El Precio, descuento, iva y pago de n trajes"
							totaldedescuentoivantrajes()
							Esperar 3 Segundos
						"7":
							Escribir "ado tres numeros indicar si el segundo es el mayor"
							segundo_mayor()
							Esperar 3 Segundos
						"8":
							Escribir "Dado una secuencia de numeros presentar su promedio"
							promedio()
							Esperar 3 Segundos
						"9":
							Escribir "Numeros amigos"
							numeroamigo()
							Esperar 3 Segundos
						"10":
							Escribir "primos gemelos"
							primogemelos()
							Esperar 3 Segundos
						"11":
							Escribir "Regresando al Menu Principal"
							Esperar 3 Segundos
						De Otro Modo:
							Escribir "Opcion invalida..."
							Esperar 3 Segundos
					Fin Segun
				FinMientras
			"2":
				opcn=""
				Mientras opcn <> "11" Hacer         
					opcn=presentarMenu("Menu Cadenas",menuCadenas,11)
					Segun opcn Hacer
						"1":
							Escribir "Presentar un nombre caracter por caracter"
							nombrecaracter()
							Esperar 4 Segundos
						"2":
							Escribir "Presentar el primero, el medio y el ultimo caracter de una frase"
							presentarloscaracteresquepideunafrase()
							Esperar 4 Segundos
						"3":
							Escribir "Dado dos nombres indicar si son iguales"
							nombresiguales()
							Esperar 4 Segundos
						"4":
							Escribir "Dadas dos frase indicar la de mayor longitud"
							frasemayor()
							Esperar 4 Segundos
						"5":
							Escribir "Indicar cuantas ,.;: hay en una cadena"
							indicarloquepideenunacadena()
							Esperar 4 Segundos
						"6":
							Escribir "Dado una cadena indicar cuantas vocales, consonantes y digitos hay"
							cuantasvocalesconsonantesydigitoshayenlacadena()
							Esperar 4 Segundos
						"7":
							Escribir "Indicar cuantas palabras hay en una frase asumiendo 1 o varios espacios entre palabras"
							palabrasenunafrase()
							Esperar 4 Segundos
						"8":
							Escribir "Presentar la suma de los digitos de una cedula"
							sumacedula()
							Esperar 4 Segundos
						"9":
							Escribir "Indicar si una palabra es palindroma"
							palindroma()
							Esperar 4 Segundos
						"10":
							Escribir "Presentar la posicion de un caracter o subcadena cualquiera dentro de una cadena"
							posicioncaracter()
							Esperar 4 Segundos
						"11":
							Escribir "Regresando al Menu Principal"
							Esperar 3 Segundos
						De Otro Modo:
							Escribir "Opcion invalida..."
							Esperar 3 Segundos
					FinSegun
				FinMientras
			"3":
				opcn=""
				Mientras opcn <> "11" Hacer         
					opcn=presentarMenu("Menu Arreglos",menuArreglos,11)
					Segun opcn Hacer
						"1":
							Escribir "Dado un arreglo cualquiera ingresarlo y presentarlo"
							presentararreglo()
							Esperar 3 Segundos
						"2":
							Escribir "Presentar los numeros pares de un arreglo"
							numerospares()
							Esperar 3 Segundos
						"3":
							Escribir "Dado una serie de numeros guardar en un arreglo solo los numeros negativos"
							nnegativos()
							Esperar 3 Segundos
						"4":
							Escribir "Dado un arreglo de nombres presentar el primer caracter de cada nombre"
							letrainicial()
							Esperar 3 Segundos
						"5":
							Escribir "Dado un arreglo de numeros presentar el total, la cantidad y el promedio del arreglo"
							numtotalcantitadpromedio()
							Esperar 3 Segundos
						"6":
							Escribir "Dado un arreglo presentarlo al revez solo los numeros multiplos de 5"
							multiplosde5()
							Esperar 3 Segundos
						"7":
							Escribir "Dado un arreglo presentar el primero,el medio y el ultimo elemento del arreglo"
							presentarelprimeromedioyultimo()
							Esperar 3 Segundos
						"8":
							Escribir "Dado un arreglo copiarlo en otro y presentarlo"
							presntarloenotroarreglo()
							Esperar 3 Segundos
						"9":
							Escribir "Dado 2 arreglos copiar en otro arreglo la suma de cada elemento de los 2 arreglos"
							Sumadedosarreglo()
							Esperar 3 Segundos
						"10":
							Escribir "Dado una serie de numeros guarda en un arreglo los factoriales"
							Arreglo_Factorial()
							Esperar 3 Segundos
						"11":
							Escribir "Regresando al Menu Principal"
							Esperar 3 Segundos
						De Otro Modo:
							Escribir "Opcion invalida..."
							Esperar 3 Segundos
					FinSegun
				FinMientras
			"4":
				Escribir "Gracias por usar el Sistema"
				Esperar 3 Segundos
		Fin Segun
    Fin Mientras
Finproceso