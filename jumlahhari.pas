{Nama : Teuku Pasha Al Danish
NIM : 261401078
KOM : C}


program JumlahHari;

uses crt;

var
    Tahun, Bulan, Hari: integer;
    Kabisat: boolean;

begin
    clrscr;

    write('Masukkan tahun: ');
    readln(Tahun);

    write('Masukkan nomor bulan (1-12): ');
    readln(Bulan);

    Kabisat := (Tahun mod 400 = 0) or
               ((Tahun mod 4 = 0) and (Tahun mod 100 <> 0));

    case Bulan of
        1, 3, 5, 7, 8, 10, 12:
            Hari := 31;

        4, 6, 9, 11:
            Hari := 30;

        2:
        begin
            if Kabisat then
                Hari := 29
            else
                Hari := 28;
        end;

    else
        Hari := 0;
    end;

    writeln;

    if Bulan < 1 then
        writeln('Nomor bulan tidak valid!')
    else if Bulan > 12 then
        writeln('Nomor bulan tidak valid!')
    else
    begin
        writeln('Tahun: ', Tahun);
        writeln('Bulan: ', Bulan);
        writeln('Jumlah hari: ', Hari);

        if Kabisat then
            writeln('Tahun kabisat')
        else
            writeln('Bukan tahun kabisat');
    end;

    readln;
end.