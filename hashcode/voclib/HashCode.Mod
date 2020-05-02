MODULE HashCode;

IMPORT SYSTEM;

TYPE
  Hash* = LONGINT;
  (**The integer type used to store hash values.  *)
  harr = ARRAY 2 OF Hash;

CONST
  init* = 257;

PROCEDURE Boolean*(x: BOOLEAN): Hash;
BEGIN
  IF x = TRUE THEN RETURN 2 ELSE RETURN 1 END;
END Boolean;

PROCEDURE Real*(x: REAL): Hash;
BEGIN
  RETURN SYSTEM.VAL(Hash, x);
END Real;

PROCEDURE LongReal*(x: LONGREAL): Hash;
VAR
  ha : harr;
BEGIN
  ha := SYSTEM.VAL(harr, x);
  RETURN SYSTEM.VAL(Hash, (SYSTEM.VAL(SET, ha[0]) / SYSTEM.VAL(SET, ha[1])));
END LongReal;

PROCEDURE Set*(x: SET): Hash;
BEGIN
  RETURN SYSTEM.VAL(Hash, x);
END Set;

PROCEDURE Ptr*(x: SYSTEM.PTR): Hash;
VAR
  ha : harr;
BEGIN
  ha := SYSTEM.VAL(harr, x);
  RETURN SYSTEM.VAL(Hash, (SYSTEM.VAL(SET, ha[0]) / SYSTEM.VAL(SET, ha[1])));
END Ptr;

(*
PROCEDURE CharRegion*(data: ARRAY OF CHAR; start, end: LONGINT): Hash;
PROCEDURE LongCharRegion*(data: ARRAY OF LONGCHAR; start, end: LONGINT): Hash;
PROCEDURE UCS4CharRegion*(data: ARRAY OF UCS4CHAR; start, end: LONGINT): Hash;
PROCEDURE Append*(x: Hash; VAR hash: Hash);
*)




END HashCode.
