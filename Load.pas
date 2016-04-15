Program Load;
Var
	FName, Txt : String;
	UserFile   : Text; 
	i,n,k,panjang	: Integer;
	Temp : array[1..1000] of char;
	Judul,Genre,Rating,Durasi,Sinopsis,HWkd,HWknd : array[1..100] of String;

Procedure input(tes: array of String);
begin
	n:= pos(' | ',Txt);
	if (n<>0) then begin
		for i:= 1 to (n-1) do begin
			Temp[i]:= Txt[i];
		end;
		for i:= 1 to (n-1) do begin
			tes[k] := tes[k] + Temp[i];
		end;
		panjang := length(tes[k]);
		delete(Txt,1,panjang+3);
	end else begin
		n:= length(Txt);
		for i:= 1 to (n) do begin
			Temp[i]:= Txt[i];
		end;
		for i:= 1 to (n) do begin
			tes[k] := tes[k] + Temp[i];
		end;
		delete(Txt,1,n);
	end;
	writeln(tes[k]);
	Writeln(Txt); {Debug}
end;

Begin
	k:=1;
	FName := 'Diar';
	Assign(UserFile, FName+'.txt'); {assign a text file}
	reset(UserFile); {open the file 'fname' for writing}
	Read(Userfile,Txt);
	Writeln(Txt);
		input(Judul);
		input(Genre);
		input(Rating);
		input(Durasi);
		input(Sinopsis);
		input(HWkd);
		input(HWknd);
		k:=k+1;
	Writeln(HWkd[1]);
	Close(UserFile);
End.       
