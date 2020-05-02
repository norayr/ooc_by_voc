MODULE outvoc;
IMPORT Out;

PROCEDURE Real*(r: REAL; n: INTEGER);
BEGIN
  Out.Real(r, 0);
END Real;

PROCEDURE LongReal*(r: LONGREAL; n: INTEGER);
BEGIN
  Out.LongReal(r, 0);
END LongReal;

END outvoc.
