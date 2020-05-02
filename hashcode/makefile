OO2C =  /opt/oo2c/bin/oo2c 
VOC  =  /opt/voc/bin/voc
VOCBUILD = vocbuild
VOCLIB   = voclib


all:
			$(OO2C) -M testHashCode.Mod
			sed -i 's/outooc/outvoc/' testHashCode.Mod
			mkdir -p $(VOCBUILD)
			cd $(VOCBUILD) && $(VOC) -s ../outvoc.Mod ../$(VOCLIB)/HashCode.Mod ../testHashCode.Mod -m
			cd -
			sed -i 's/outvoc/outooc/' testHashCode.Mod
			bin/testHashCode
			$(VOCBUILD)/testHashCode
