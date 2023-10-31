unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    btnHitung: TButton;
    btnClear: TButton;
    btnClose: TButton;
    cbJabatan: TComboBox;
    edtNama: TEdit;
    edtGapok: TEdit;
    edtTunjangan: TEdit;
    edtTotalGaji: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    rgStatus: TRadioGroup;
    procedure btnHitungClick(Sender: TObject);
    procedure Label6Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Label6Click(Sender: TObject);
begin

end;

procedure TForm1.btnHitungClick(Sender: TObject);
var
  gajiDasar, tunjangan, totalGaji: integer;
begin
  // Penentuan Gaji Dasar berdasarkan Jabatan
  case cbJabatan.ItemIndex of
    0: gajiDasar := 5000000;   // Direktur
    1: gajiDasar := 3000000;   // Manager
    2: gajiDasar := 1000000;   // Karyawan
    3: gajiDasar := 2000000;   // Leader
    4: gajiDasar := 2500000;   // Supervisor
    else gajiDasar := 0;      // Tidak ada pilihan
  end;

  // Penentuan Tunjangan berdasarkan Status Pegawai
  if rgStatus.ItemIndex = 0 then
    tunjangan := 1500000   // Tetap
  else if rgStatus.ItemIndex = 1 then
    tunjangan := 500000    // Honorer
  else
    tunjangan := 0;

  // Menghitung total gaji
  totalGaji := gajiDasar + tunjangan;

  // Menampilkan total gaji ke EditTotalGaji
  edtTotalGaji.Text := IntToStr(totalGaji);
end;

end.

