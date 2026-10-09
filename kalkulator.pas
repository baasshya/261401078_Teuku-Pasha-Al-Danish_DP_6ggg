{Nama : Teuku Pasha Al Danish
NIM : 261401078
KOM : C}

program Kalkulator;

uses crt;

var
    pilihan: integer;
    a, b, hasil: real;
    ulang: char;

begin
    repeat
        clrscr;

        writeln('===== KALKULATOR SEDERHANA =====');
        writeln('1. Penjumlahan');
        writeln('2. Pengurangan');
        writeln('3. Perkalian');
        writeln('4. Pembagian Real');
        writeln('5. DIV dan MOD');
        write('Pilih operasi (1-5): ');
        readln(pilihan);

        write('Masukkan angka pertama: ');
        readln(a);
        write('Masukkan angka kedua: ');
        readln(b);

        case pilihan of
            1:
            begin
                hasil := a + b;
                writeln('Hasil penjumlahan: ', hasil:0:2);
            end;

            2:
            begin
                hasil := a - b;
                writeln('Hasil pengurangan: ', hasil:0:2);
            end;

            3:
            begin
                hasil := a * b;
                writeln('Hasil perkalian: ', hasil:0:2);
            end;

            4:
            begin
                if b <> 0 then
                begin
                    hasil := a / b;
                    writeln('Hasil pembagian: ', hasil:0:2);
                end
                else
                    writeln('Error! Tidak bisa membagi dengan nol.');
            end;

            5:
            begin
                if (b <> 0) and (a = int(a)) and (b = int(b)) then
                begin
                    writeln('Hasil DIV: ', trunc(a) div trunc(b));
                    writeln('Hasil MOD: ', trunc(a) mod trunc(b));
                end
                else
                    writeln('DIV dan MOD memerlukan bilangan bulat,');
                    writeln('dan operand kedua tidak boleh nol.');
            end;

        else
            writeln('Pilihan operasi tidak valid!');
        end;

        writeln;
        write('Apakah ingin melakukan perhitungan lagi? (Y/T): ');
        readln(ulang);

    until (ulang = 'T') or (ulang = 't');

    writeln('Program selesai. Terima kasih!');
    readln;
end.