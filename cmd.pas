program ex;
uses crt;
var
ch,ch2,a:string;
f:text;
procedure cmd ();
begin

TextColor(10);
write('UserName : ');
readln(ch);
if length(ch)<> 0 then
clrscr;
repeat
write('['+ch+'@localhost~]# ');
readln(ch2);
if (pos('CF',ch2)<>0) then
begin
a:=copy(ch2,pos('CF',ch2)+3,length(ch2));
mkdir(a);
TextBackground(4);
writeln('Folder created !');
end
else if(pos('CRFILE',ch2)<>0) then
begin
a:=copy(ch2,pos('CRFILE',ch2)+7,length(ch2));
assign(f,a);
rewrite(f);
TextBackground(5);
writeln('File created !');
close(f);
end
else if ch2='CLR' then
clrscr;
until ch2='exit'; 
end;

begin
cmd;
end.