-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/2SJJew
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.
--Drop Table "NewAccident" cascade;
--Drop Table "NewPeople" cascade;
--Drop Table "NewVehicle" cascade;

CREATE TABLE "NewAccident" (
    "CASENUM" bigint NOT Null,
    "STRATUMNAME" varchar   NOT NULL,
    "REGION" int   NOT NULL,
    "REGIONNAME" varchar   NOT NULL,
    "PSU" int   NOT NULL,
    "PJ" int   NOT NULL,
    "URBANICITYNAME" varchar   NOT NULL,
    "NUM_INJ" int   NOT NULL,
    "MONTH" varchar   NOT NULL,
    "YEAR" varchar   NOT NULL,
    "DAY_WEEKNAME" varchar   NOT NULL,
    "HOURNAME" varchar   NOT NULL,
    "HARM_EVNAME" varchar   NOT NULL,
    "ALCOHOLNAME" varchar   NOT NULL,
    "MAX_SEVNAME" varchar   NOT NULL,
    "MAN_COLLNAME" varchar   NOT NULL,
    "RELJCT2NAME" varchar   NOT NULL,
    "TYP_INTNAME" varchar   NOT NULL,
    "LGT_CONDNAME" varchar   NOT NULL,
    "WEATHERNAME" varchar   NOT NULL,
    CONSTRAINT "pk_NewAccident" PRIMARY KEY (
        "CASENUM"
     )
);


CREATE TABLE "NewPeople" (
    "CASENUM" bigint,
    "VE_FORMS" int,
    "VEH_NO" int,
    "PER_NO" int,
    "STRATUM" int,
    "REGION" int,
    "REGIONNAME" varchar,
    "PSU" int,
    "PJ" int,
    "URBANICITYNAME" varchar,
    "MONTHNAME" varchar,
    "HOURNAME" varchar,
    "MINUTE" int ,
    "HARM_EVNAME" varchar,
    "MAN_COLLNAME" varchar,
    "MAKENAME" varchar,
    "MAK_MODNAME" varchar,
    "MOD_YEARNAME" varchar,
    "TOW_VEHNAME" varchar,
    "ROLLOVERNAME" varchar,
    "IMPACT1NAME" varchar,
    "AGENAME" varchar,
    "SEXNAME" varchar,
    "PER_TYPNAME" varchar,
    "INJ_SEVNAME" varchar,
    "SEAT_POSNAME" varchar,
    "AIR_BAGNAME" varchar,
    "DRINKINGNAME" varchar,
    "ALC_STATUSNAME" varchar,
    "DRUGSNAME" varchar,
    "HOSPITALNAME" varchar
);

CREATE TABLE "NewVehicle" (
    "CASENUM" bigint,
    "VEH_NO" int,
    "STRATUMNAME" varchar,
    "REGIONNAME" varchar,
    "PSU" int,
    "PJ" int,
    "URBANICITYNAME" varchar,
    "VE_FORMS" int,
    "NUMOCCS" int,
    "MONTHNAME" varchar,
    "HOURNAME" varchar,
    "HARM_EVNAME" varchar,
    "MAN_COLLNAME" varchar,
    "UNITTYPENAME" varchar,
    "HIT_RUNNAME" varchar,
	"MAKENAME" varchar,
    "MAK_MODNAME" varchar,
    "BODY_TYPNAME" varchar,
    "MOD_YEARNAME" varchar,
    "VINNAME" varchar,
    "TOW_VEHNAME" varchar,
    "TRAV_SPNAME" varchar,
    "ROLLOVERNAME" varchar,
    "ROLINLOCNAME" varchar,
    "IMPACT1NAME" varchar,
    "DEFORMEDNAME" varchar,
    "TOWEDNAME" varchar,
    "M_HARMNAME" varchar,
    "VEH_ALCHNAME" varchar,
    "MAX_VSEVNAME" varchar,
    "NUM_INJV" int,
    "FIRE_EXPNAME" varchar,
    "DR_PRESNAME" varchar,
    "DR_ZIPNAME" varchar,
    "SPEEDRELNAME" varchar,
    "VTRAFWAYNAME" varchar,
    "VNUM_LANNAME" varchar,
    "VSPD_LIMNAME" varchar,
    "VALIGNNAME" varchar,
    "VPROFILENAME" varchar,
    "VSURCONDNAME" varchar,
    "VTRAFCONNAME" varchar,
    "VTCONT_FNAME" varchar,
    "ACC_TYPENAME" varchar,
    "WEIGHT" decimal
);

ALTER TABLE "NewPeople" ADD CONSTRAINT "fk_NewPeople_CASENUM" FOREIGN KEY("CASENUM")
REFERENCES "NewAccident" ("CASENUM");

ALTER TABLE "NewVehicle" ADD CONSTRAINT "fk_NewVehicle_CASENUM" FOREIGN KEY("CASENUM")
REFERENCES "NewAccident" ("CASENUM");

select * from "NewPeople"