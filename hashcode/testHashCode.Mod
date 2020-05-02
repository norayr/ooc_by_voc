MODULE testHashCode;
IMPORT HashCode, Out, out := outooc, S := SYSTEM;


VAR
  b : BOOLEAN;
  r : REAL;
  h : HashCode.Hash;

BEGIN
  h := HashCode.Boolean(TRUE);
  Out.String("HashCode.Boolean(TRUE) returns ");
  Out.Int(S.VAL(LONGINT, h) ,0); Out.Ln;

  h := HashCode.Boolean(FALSE);
  Out.String("HashCode.Boolean(FALSE) returns ");
  Out.Int(S.VAL(LONGINT, h) ,0); Out.Ln;
 
  r := 3.14;
  h := HashCode.Real(r);
  Out.String("HashCode.Real("); out.Real(r, 0); Out.String(") returns ");
  Out.Int(S.VAL(LONGINT, h), 0); Out.Ln;
END testHashCode.
