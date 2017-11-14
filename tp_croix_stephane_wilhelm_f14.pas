{ALGORITHME : TP_Croix
//BUT : Demandé à l'utilisateur la taille de la croix puis afficher la croix à l'aide de boucles
//ENTREE : La taille de la croix
//SORTIE : La croix

var : i, j, taille : entier
	symbole : car

DEBUT
	ECRIRE "Entrez la taille de la croix."
	LIRE taille
	ECRIRE "Entrez le symbole souhaité"
	LIRE symbole
	POUR i <- 0 A taille FAIRE
		POUR j <- 0 A taille FAIRE
			SI (i = j) OU (j = taille - i) ALORS
				ECRIRE symbole
			SINON
				ECRIRE " "
			FINSI
		FINPOUR
	FINPOUR
FIN}

program tp_croix;

uses crt;

var
	i, j, taille : integer;
	symbole : char;

BEGIN
	clrscr;
	writeln('Ceci est un programme qui affiche une croix');
	writeln('Entrez la taille de votre croix');
	readln(taille);
	writeln('Entrez le symbole souhaité.');
	readln(symbole);
	for i := 0 to taille do //ici les compteurs servent à créer un tableau dans lequel la croix apparait
	begin
		for j := 0 to taille do
		begin
			if (i = j) or (j = taille - i) then //Ici on indique au programme ou placer les symboles et où placer les espaces
				write(symbole)
			else
				write(' ');
		end;
		writeln; //Le writeln est important car sinon il n'y a pas de retour à la ligne et le compilateur ne montrera pas une croix mais des symboles avec des espaces sur une ligne
	end;
	readln;
	end.