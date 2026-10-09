{Nama : Teuku Pasha Al Danish
NIM : 261401078
KOM : C}


program RekapNilai;

uses crt;

var
    M, N, i, j: integer;
    Nilai, Total, RataRata: real;
    Lulus, TidakLulus: integer;

begin
    clrscr;

    write('Masukkan jumlah mahasiswa: ');
    readln(M);

    write('Masukkan jumlah tugas: ');
    readln(N);

    Lulus := 0;
    TidakLulus := 0;

    for i := 1 to M do
    begin
        writeln;
        writeln('Mahasiswa ke-', i);
        Total := 0;

        for j := 1 to N do
        begin
            write('Masukkan nilai tugas ke-', j, ': ');
            readln(Nilai);

            Total := Total + Nilai;
        end;

        RataRata := Total / N;

        writeln('Rata-rata nilai: ', RataRata:0:2);

        if RataRata >= 65 then
        begin
            writeln('Status: LULUS');
            Lulus := Lulus + 1;
        end
        else
        begin
            writeln('Status: TIDAK LULUS');
            TidakLulus := TidakLulus + 1;
        end;
    end;

    writeln;
    writeln('===== REKAP KELULUSAN =====');
    writeln('Total mahasiswa LULUS       : ', Lulus);
    writeln('Total mahasiswa TIDAK LULUS : ', TidakLulus);

    readln;
end.