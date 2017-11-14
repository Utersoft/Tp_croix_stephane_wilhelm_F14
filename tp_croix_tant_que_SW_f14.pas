{Algorithme : tp_croix_tant_que
//BUT : réaliser une croix à l'aide de la boucle tant que
//ENTREE : la taille et le symbole souhaité
//SORTIE : La croix

VAR : 
	i, j, taille : ENTIER
	symbole : CHAINE

DEBUT
	ECRIRE "Entrez la taille de la croix"
	LIRE taille
	ECRIRE "Entrez le symbole souhaité"
	LIRE symbole
	i <- 0	
	j <- 0
	TANT QUE NON (i = taille) ET NON (j = taille -i) FAIRE
		SI (i = j) OU (taille - i = j) ALORS
			ECRIRE symbole
		SINON
			ECRIRE " "
		FINSI
		j <- j + 1
		SI (j = taille) ALORS
			i <- i + 1
			j <- 0
		FINSI
	FINTANTQUE
FIN
}

program tp_croix_tant_que;

uses crt;

var
	i, j, taille : integer;
	symbole : string;

begin
	clrscr;
	writeln('C''Entrez la taille de la croix.');
	readln(taille);
	writeln('Entrez le symbole souhaité');
	readln(symbole);
	i := 0;
	j := 0;
	while not (i = taille) and not (j = taille) do //On reste dans la boucle tant que i et j ne sont pas = à la taille indiquée par l'utilisateur
	begin
		if (i = j) or (j = taille - i) then
			write(symbole)
		else
		begin
			write(' ');
		end;
		j := j +1;
		if (j = taille) then //Il n'ajoute 1 au compteur i que si le compteur j = taille, de cette façon, je n'est besoin que d'une boucle et c'est plus propre
		begin
			writeln;
			i := i + 1;
			j := 0;
		end;
	end;
	readln;
end.