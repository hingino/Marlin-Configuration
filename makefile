skrminiv3e3-config:
	cp './BIGTREETECH-SKR-mini-E3/firmware/V3.0/Marlin/Ender 3/bltouch-for-z-homing/platformio.ini' ./Marlin/
	cp './Configurations\config\examples\Creality\Ender-3 V2\BigTreeTech SKR Mini E3 v3\MarlinUI\Configuration.h' './Marlin/Marlin/'
	cp './Configurations\config\examples\Creality\Ender-3 V2\BigTreeTech SKR Mini E3 v3\MarlinUI\Configuration_adv.h' './Marlin/Marlin/'
	cp './Configurations\config\examples\Creality\Ender-3 V2\LCD Files\DWIN_SET' './Build'