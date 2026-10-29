program PenjumlahanMatriks;
var
  A, B, C : array[1..5, 1..5] of integer;
  br1, kl1, br2, kl2, i, j : integer;
begin
  write('Baris matriks ke-1 (1-5): ');
  readln(br1);
  write('Kolom matriks ke-1 (1-5): ');
  readln(kl1);
  write('Baris matriks ke-2 (1-5): ');
  readln(br2);
  write('Kolom matriks ke-2 (1-5): ');
  readln(kl2);

  if (br1 <> br2) or (kl1 <> kl2) then
    writeln('Matriks tidak dapat dijumlahkan (ukuran berbeda).')
  else
  begin
    writeln('Isi matriks ke-1:');
    for i := 1 to br1 do
      for j := 1 to kl1 do
      begin
        write('A[', i, ',', j, ']: ');
        readln(A[i, j]);
      end;

    writeln('Isi matriks ke-2:');
    for i := 1 to br2 do
      for j := 1 to kl2 do
      begin
        write('B[', i, ',', j, ']: ');
        readln(B[i, j]);
      end;

    for i := 1 to br1 do
      for j := 1 to kl1 do
        C[i, j] := A[i, j] + B[i, j];

    writeln('Hasil penjumlahan:');
    for i := 1 to br1 do
    begin
      for j := 1 to kl1 do
        write(C[i, j], ' ');
      writeln;
    end;
  end;
end.