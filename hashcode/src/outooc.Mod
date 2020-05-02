MODULE outooc;
IMPORT Out;

PROCEDURE Real*(r: REAL; n: INTEGER);
BEGIN
  Out.Real(r, n, 0);
END Real;

PROCEDURE LongReal*(r: LONGREAL; n: INTEGER);
BEGIN
  Out.LongReal(r, n, 0);
END LongReal;


END outooc.
