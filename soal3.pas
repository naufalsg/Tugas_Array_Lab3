program NilaiMahasiswa;
var
  tugas, kuis, uts, uas : array[1..5] of integer;
  rata : array[1..5] of real;
  n, i : integer;
begin
  write('Masukkan jumlah mahasiswa (1-5): ');
  readln(n);

  for i := 1 to n do
  begin
    writeln('Mahasiswa ke-', i);
    write('  Nilai tugas: ');
    readln(tugas[i]);
    write('  Nilai kuis : ');
    readln(kuis[i]);
    write('  Nilai UTS  : ');
    readln(uts[i]);
    write('  Nilai UAS  : ');
    readln(uas[i]);
    rata[i] := (tugas[i] + kuis[i] + uts[i] + uas[i]) / 4;
  end;

  writeln;
  writeln('=== HASIL ===');
  for i := 1 to n do
  begin
    writeln('Mahasiswa ke-', i);
    writeln('  Tugas : ', tugas[i]);
    writeln('  Kuis  : ', kuis[i]);
    writeln('  UTS   : ', uts[i]);
    writeln('  UAS   : ', uas[i]);
    writeln('  Rata-rata : ', rata[i]:0:2);
    if rata[i] >= 70 then
      writeln('  Keterangan: LULUS')
    else
      writeln('  Keterangan: TIDAK LULUS');
  end;
end.