MODULE testHashCode;
IMPORT HashCode, Out, out := outooc, S := SYSTEM;


VAR
  b : BOOLEAN;
  r : REAL;
  lr: LONGREAL;
  h : HashCode.Hash;
  s : SET;

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
  
  lr := -39.23009;
  h := HashCode.LongReal(lr);
  Out.String("HashCode.LongReal("); out.LongReal(lr, 0); Out.String(") returns ");
  Out.Int(S.VAL(LONGINT, h), 0); Out.Ln;
 
  s := {1, 3, 5, 7};
  h := HashCode.Set(s);
  Out.String("HashCode.Set returns ");
  Out.Int(S.VAL(LONGINT, h), 0); Out.Ln;
 
END testHashCode.
