{Nama : Teuku Pasha Al Danish
NIM : 261401078
KOM : C}

program Login;

uses crt;

var
    password: string;
    percobaan: integer;

begin
    clrscr;

    percobaan := 0;

    repeat
        write('Masukkan kata sandi: ');
        readln(password);

        percobaan := percobaan + 1;

        if password = 'pascal123' then
        begin
            writeln('Login Berhasil! Selamat Datang');
            break;
        end
        else
            writeln('Kata sandi salah!');

    until percobaan = 3;

    if password <> 'pascal123' then
        writeln('Akses Ditolak! Akun Terkunci.');

    readln;
end.