program first_app;
uses GraphABC,ABCObjects,ABCButtons;
var
  a:CircleABC;
  b:RectangleABC;
  c:StarABC;
  s,d,z,e,back:ButtonABC;
procedure p():=a:=new CircleABC(100,300,50,clRed);
procedure p1():=b:=new RectangleABC(50,50,100,100,clGreen);
procedure p2():=c:=new StarABC(300,300,100,250,12,clBlue);
procedure ButtonClick;
begin
  ClearWindow;
  p;
end;
procedure ButtonClick1;
begin
  ClearWindow;
  p1;
end;
procedure ButtonClick2;
begin
  ClearWindow;
  p2;
end;
procedure ButtonClick3;
begin
  CloseWindow;
end;
procedure ButtonClick4;
begin
  ClearWindow;
  d:=new ButtonABC(100,100,300,50,'Круг',clRed);
  d.OnClick:=procedure ->
  begin
    ButtonClick;
    back:=new ButtonABC(0,0,50,50,'<',clOrange);
    back.OnClick:=ButtonClick4;
  end;
  s:=new ButtonABC(100,200,300,50,'Квадрат',clGreen);
  s.OnClick:=procedure ->
  begin
    ButtonClick1;
    back:=new ButtonABC(0,0,50,50,'<',clOrange);
    back.OnClick:=ButtonClick4;
  end;
  z:=new ButtonABC(100,300,300,50,'Звезда',clBlue);
  z.OnClick:=procedure ->
  begin
    ButtonClick2;
    back:=new ButtonABC(0,0,50,50,'<',clOrange);
    back.OnClick:=ButtonClick4;
  end;
  e:=new ButtonABC(100,450,300,50,'Выход',clYellow);
  e.OnClick:=ButtonClick3;
end;
begin
  SetWindowSize(600,600);
  SetWindowTitle('Первое приложение');
  d:=new ButtonABC(100,100,300,50,'Круг',clRed);
  d.OnClick:=procedure ->
  begin
    ButtonClick;
    back:=new ButtonABC(0,0,50,50,'<',clOrange);
    back.OnClick:=ButtonClick4;
  end;
  s:=new ButtonABC(100,200,300,50,'Квадрат',clGreen);
  s.OnClick:=procedure ->
  begin
    back:=new ButtonABC(0,0,50,50,'<',clOrange);
    back.OnClick:=ButtonClick4;
    ButtonClick1;
  end;
  z:=new ButtonABC(100,300,300,50,'Звезда',clBlue);
  z.OnClick:=procedure ->
  begin
    ButtonClick2;
    back:=new ButtonABC(0,0,50,50,'<',clOrange);
    back.OnClick:=ButtonClick4;
  end;
  e:=new ButtonABC(100,450,300,50,'Выход',clYellow);
  e.OnClick:=ButtonClick3;
end.