unit UInfo;

interface
uses Classes, SysUtils;
type
  TKey = record
    FSeria: string;
    FNumber: string;
  end;
  TInfo = class
  private
    FPaspInfo: TKey;
    FFIO: string;
    FAdres: string;
    //FMark: string;
  protected
  public
    constructor Create; overload;
    constructor Create(AFIO: string; AAdres: string; APaspSeria, APaspNumber: string);  overload;
    class procedure ShowTitle(ARow:TStrings);
    class function Hash(AKey: TKey):Integer;
    procedure Show(ARow:TStrings);
    function LoadFromFile(var F:TextFile):Boolean;
    procedure SaveToFile(var F:TextFile);
    function IsEqualKey(Akey: TKey): Boolean;
    property Key:TKey read FPaspInfo;
    property FIO:string read FFIO;
    property Adres:string read FAdres;
  end;
implementation

{ TInfo }
function GetValue (var str : string; var value:string) : boolean;
var i,len:Integer;
begin
  str:=Trim(str);
  len:=Length(str);
  i:=1;
  if len>0 then
    begin
      while (i<=len) and (str[i]<>#9) do inc(i);
      value:=Trim(Copy(str, 1, i-1));
      Result:=True;
      Delete(str,1,i);
    end
  else
    Result:=False;
end;


constructor TInfo.Create;
begin
  FFIO:='';
  FAdres:='';
  FPaspInfo.FSeria:='';
  FPaspInfo.FNumber:='';
  inherited Create;
end;

constructor TInfo.Create(AFIO: string; AAdres: string; APaspSeria, APaspNumber: string);
begin
  inherited Create;
  FFIO:=AFIO;
  //FStudNumber:=AStudNumber;
  //FMark:=AMark;
  FAdres:=AAdres;
  FPaspInfo.FSeria:=APaspSeria;
  FPaspInfo.FNumber:=APaspNumber;
end;

class function TInfo.Hash(AKey: TKey): Integer;
var
  i:Integer;
begin
  Result:=0;
  for i:=1 to Length(AKey.FNumber) do
  Result:=Result+Ord(AKey.FNumber[i]);
end;

function TInfo.IsEqualKey(Akey:TKey): Boolean;
begin
  result:=(AKey.FNumber=FPaspInfo.FNumber);
end;

function TInfo.LoadFromFile(var F: TextFile): Boolean;
var
  tmp:string;
begin
  if Eof(F)
    then Result:=False
    else
      begin
        readln(F,tmp);
        result:=GetValue(tmp, FFIO) and GetValue(tmp, FPaspInfo.FNumber)
          and GetValue(tmp, FPaspInfo.FSeria) and(FFIO<>'');
      end;
end;

const
  Tab = #9;

procedure TInfo.SaveToFile(var F: TextFile);
begin
  Writeln(f, FFIO+#$9+FAdres+#$9+FPaspInfo.FNumber+#$9+FPaspInfo.FSeria);
end;

procedure TInfo.Show(ARow: TStrings);
begin
  ARow[1]:= FFIO;
  ARow[2]:= FAdres;
  ARow[3]:= FPaspInfo.FNumber;
  Arow[4]:= FPaspInfo.FSeria;
end;

class procedure TInfo.ShowTitle(ARow: TStrings);
begin
  ARow[0]:='INFO';
  ARow[1]:='ФИО';
  ARow[2]:='Адрес';
  ARow[3]:='Номер';
  Arow[4]:='Серия'
end;

end.
