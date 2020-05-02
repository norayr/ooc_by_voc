MODULE HashCode;

IMPORT SYSTEM;

TYPE
  Hash* = LONGINT;
  (**The integer type used to store hash values.  *)

CONST
  init* = 257;

PROCEDURE Boolean*(x: BOOLEAN): Hash;
BEGIN
  IF TRUE THEN RETURN 2 ELSE RETURN 1 END;
END Boolean;

PROCEDURE Real*(x: REAL): Hash;
BEGIN
  RETURN SYSTEM.VAL(LONGINT, x);
END Real;


(*
PROCEDURE Real*(x: REAL): Hash;
PROCEDURE LongReal*(x: LONGREAL): Hash;
PROCEDURE Set*(x: SET): Hash;
PROCEDURE Ptr*(x: SYSTEM.PTR): Hash;
PROCEDURE CharRegion*(data: ARRAY OF CHAR; start, end: LONGINT): Hash;
PROCEDURE LongCharRegion*(data: ARRAY OF LONGCHAR; start, end: LONGINT): Hash;
PROCEDURE UCS4CharRegion*(data: ARRAY OF UCS4CHAR; start, end: LONGINT): Hash;
PROCEDURE Append*(x: Hash; VAR hash: Hash);
*)




END HashCode.
