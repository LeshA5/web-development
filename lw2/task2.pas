PROGRAM SarahRevere(INPUT, OUTPUT);
USES
  DOS;
VAR
  QueryString: STRING;
BEGIN
  WRITELN('Content-Type: text/plain');
  WRITELN;
  QueryString := GetEnv('QUERY_STRING');
  IF QueryString = ''
  THEN
    WRITELN('The North church shows only NONE')
  ELSE
    IF QueryString = 'lanterns=2'
    THEN
      WRITELN('The British are coming by sea')
    ELSE
      IF QueryString = 'lanterns=1'
      THEN
        WRITELN('The British are coming by land')
      ELSE
        WRITELN('The North church shows only ', GetEnv('QUERY_STRING'))
END.
