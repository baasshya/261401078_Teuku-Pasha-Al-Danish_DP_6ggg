{Nama : Teuku Pasha Al Danish
NIM : 261401078
KOM : C}

program DeretAngka;

uses crt;

var
    N, pilihan, i: integer;

begin
    clrscr;

    write('Masukkan nilai N: ');
    readln(N);

    writeln('Pilih kategori deret:');
    writeln('1. Ganjil');
    writeln('2. Genap');
    write('Pilihan: ');
    readln(pilihan);

    if (pilihan = 1) or (pilihan = 2) then
    begin
        writeln('Deret hasil penyaringan:');

        i := 1;

        while i <= N do
        begin
            if (pilihan = 1) and (i mod 2 = 0) then
            begin
                i := i + 1;
                continue;
            end;

            if (pilihan = 2) and (i mod 2 <> 0) then
            begin
                i := i + 1;
                continue;
            end;

            if i mod 5 = 0 then
            begin
                i := i + 1;
                continue;
            end;

            write(i, ' ');
            i := i + 1;
        end;
    end
    else
        writeln('Pilihan tidak valid!');

    readln;
end.