{Nama : Teuku Pasha Al Danish
NIM : 261401078
KOM : C}


program TokoBuku;

uses crt;

var
    N, i: integer;
    Harga, Total, Diskon, TotalBayar: real;

begin
    clrscr;

    write('Masukkan jumlah barang: ');
    readln(N);

    Total := 0;

    for i := 1 to N do
    begin
        write('Masukkan harga barang ke-', i, ': Rp');
        readln(Harga);
        Total := Total + Harga;
    end;

    if Total < 100000 then
        Diskon := 0
    else if Total < 500000 then
        Diskon := Total * 0.10
    else
        Diskon := Total * 0.20;

    TotalBayar := Total - Diskon;

    writeln;
    writeln('===== RINCIAN BELANJA =====');
    writeln('Jumlah barang       : ', N);
    writeln('Total sebelum diskon: Rp', Total:0:2);
    writeln('Besar diskon        : Rp', Diskon:0:2);
    writeln('Total bayar akhir   : Rp', TotalBayar:0:2);

    readln;
end.