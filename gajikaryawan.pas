{Nama : Teuku Pasha Al Danish
NIM : 261401078
KOM : C}


program GajiKaryawan;

uses crt;

var
    Golongan: char;
    JamKerja: integer;
    GajiPokok, Lembur, Bonus, TotalGaji: longint;

begin
    clrscr;

    writeln('===== PROGRAM GAJI KARYAWAN =====');
    write('Masukkan golongan (A/B/C): ');
    readln(Golongan);

    write('Masukkan total jam kerja per minggu: ');
    readln(JamKerja);

    GajiPokok := 0;
    Lembur := 0;
    Bonus := 0;

    case Golongan of
        'A', 'a': GajiPokok := 1500000;
        'B', 'b': GajiPokok := 2000000;
        'C', 'c': GajiPokok := 2500000;
    else
        GajiPokok := -1;
    end;

    if GajiPokok = -1 then
        writeln('Golongan tidak valid!')
    else if JamKerja < 0 then
        writeln('Jumlah jam kerja tidak valid!')
    else
    begin
        if JamKerja > 40 then
            Lembur := (JamKerja - 40) * 20000;

        if ((Golongan = 'C') or (Golongan = 'c'))
           and (JamKerja > 50) then
            Bonus := 100000;

        TotalGaji := GajiPokok + Lembur + Bonus;

        writeln;
        writeln('===== RINCIAN GAJI =====');
        writeln('Gaji Pokok : Rp', GajiPokok);
        writeln('Gaji Lembur: Rp', Lembur);
        writeln('Bonus      : Rp', Bonus);
        writeln('Total Gaji : Rp', TotalGaji);
    end;

    readln;
end.