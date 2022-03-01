/* If you need to drop the tables first....

DROP TABLE BC_ACCOUNT CASCADE CONSTRAINTS;
DROP TABLE BC_BICYCLE CASCADE CONSTRAINTS;
DROP TABLE BC_BICYCLE_STATUS CASCADE CONSTRAINTS;
DROP TABLE BC_COUNTRY CASCADE CONSTRAINTS;
DROP TABLE BC_DOCK CASCADE CONSTRAINTS;
DROP TABLE BC_MEMBERSHIP CASCADE CONSTRAINTS;
DROP TABLE BC_PASS CASCADE CONSTRAINTS;
DROP TABLE BC_PROGRAM CASCADE CONSTRAINTS;
DROP TABLE BC_STATION CASCADE CONSTRAINTS;
DROP TABLE BC_TRIP CASCADE CONSTRAINTS;

*/


--------------------------------------------------------
--  DDL for Table BC_COUNTRY
--------------------------------------------------------

  CREATE TABLE "BC_COUNTRY" 
   (	"COUNTRY_CODE" CHAR(2), 
	"COUNTRY_FORMAL_NAME" VARCHAR2(50), 
	"COUNTRY_SHORT_NAME" VARCHAR2(25)
   ) ;
REM INSERTING into BC_COUNTRY
SET DEFINE OFF;
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('AF','Afghanistan','Afghanistan');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('AX','Åland Islands','Åland Islands');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('AL','Albania','Albania');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('DZ','Algeria','Algeria');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('AS','American Samoa','American Samoa');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('AD','Andorra','Andorra');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('AO','Angola','Angola');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('AI','Anguilla','Anguilla');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('AQ','Antarctica','Antarctica');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('AG','Antigua and Barbuda','Antigua and Barbuda');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('AR','Argentina','Argentina');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('AM','Armenia','Armenia');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('AW','Aruba','Aruba');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('AU','Australia','Australia');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('AT','Austria','Austria');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('AZ','Azerbaijan','Azerbaijan');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('BS','Bahamas','Bahamas');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('BH','Bahrain','Bahrain');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('BD','Bangladesh','Bangladesh');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('BB','Barbados','Barbados');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('BY','Belarus','Belarus');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('BE','Belgium','Belgium');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('BZ','Belize','Belize');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('BJ','Benin','Benin');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('BM','Bermuda','Bermuda');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('BT','Bhutan','Bhutan');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('BO','Bolivia, Plurinational State of','Bolivia');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('BQ','Bonaire, Sint Eustatius and Saba','Caribbean Netherlands');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('BA','Bosnia and Herzegovina','Bosnia and Herzegovina');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('BW','Botswana','Botswana');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('BV','Bouvet Island','Bouvet Island');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('BR','Brazil','Brazil');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('IO','British Indian Ocean Territory','BIOT');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('BN','Brunei Darussalam','Brunei');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('BG','Bulgaria','Bulgaria');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('BF','Burkina Faso','Burkina Faso');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('BI','Burundi','Burundi');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('KH','Cambodia','Cambodia');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('CM','Cameroon','Cameroon');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('CA','Canada','Canada');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('CV','Cape Verde','Cape Verde');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('KY','Cayman Islands','Cayman Islands');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('CF','Central African Republic','Central African Republic');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('TD','Chad','Chad');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('CL','Chile','Chile');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('CN','China','China');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('CX','Christmas Island','Christmas Island');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('CC','Cocos (Keeling) Islands','Cocos Islands');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('CO','Colombia','Colombia');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('KM','Comoros','Comoros');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('CG','Congo','Congo');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('CD','Congo, the Democratic Republic of the','Congo');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('CK','Cook Islands','Cook Islands');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('CR','Costa Rica','Costa Rica');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('CI','Côte d''Ivoire','Côte d''Ivoire');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('HR','Croatia','Croatia');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('CU','Cuba','Cuba');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('CW','Curaçao','Curaçao');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('CY','Cyprus','Cyprus');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('CZ','Czech Republic','Czech Republic');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('DK','Denmark','Denmark');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('DJ','Djibouti','Djibouti');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('DM','Dominica','Dominica');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('DO','Dominican Republic','Dominican Republic');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('EC','Ecuador','Ecuador');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('EG','Egypt','Egypt');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('SV','El Salvador','El Salvador');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('GQ','Equatorial Guinea','Equatorial Guinea');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('ER','Eritrea','Eritrea');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('EE','Estonia','Estonia');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('ET','Ethiopia','Ethiopia');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('FK','Falkland Islands (Malvinas)','Falkland Islands');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('FO','Faroe Islands','Faroe Islands');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('FJ','Fiji','Fiji');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('FI','Finland','Finland');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('FR','France','France');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('GF','French Guiana','French Guiana');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('PF','French Polynesia','French Polynesia');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('TF','French Southern Territories','French Southern Lands');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('GA','Gabon','Gabon');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('GM','Gambia','Gambia');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('GE','Georgia','Georgia');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('DE','Germany','Germany');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('GH','Ghana','Ghana');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('GI','Gibraltar','Gibraltar');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('GR','Greece','Greece');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('GL','Greenland','Greenland');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('GD','Grenada','Grenada');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('GP','Guadeloupe','Guadeloupe');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('GU','Guam','Guam');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('GT','Guatemala','Guatemala');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('GG','Guernsey','Guernsey');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('GN','Guinea','Guinea');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('GW','Guinea-Bissau','Guinea-Bissau');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('GY','Guyana','Guyana');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('HT','Haiti','Haiti');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('HM','Heard Island and McDonald Islands','HIMI');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('VA','Holy See (Vatican City State)','Holy See');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('HN','Honduras','Honduras');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('HK','Hong Kong','Hong Kong');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('HU','Hungary','Hungary');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('IS','Iceland','Iceland');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('IN','India','India');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('ID','Indonesia','Indonesia');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('IR','Iran, Islamic Republic of','Iran');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('IQ','Iraq','Iraq');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('IE','Ireland','Ireland');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('IM','Isle of Man','Isle of Man');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('IL','Israel','Israel');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('IT','Italy','Italy');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('JM','Jamaica','Jamaica');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('JP','Japan','Japan');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('JE','Jersey','Jersey');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('JO','Jordan','Jordan');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('KZ','Kazakhstan','Kazakhstan');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('KE','Kenya','Kenya');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('KI','Kiribati','Kiribati');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('KP','Korea, Democratic People''s Republic of','North Korea');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('KR','Korea, Republic of','South Korea');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('KW','Kuwait','Kuwait');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('KG','Kyrgyzstan','Kyrgyzstan');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('LA','Lao People''s Democratic Republic','Laos');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('LV','Latvia','Latvia');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('LB','Lebanon','Lebanon');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('LS','Lesotho','Lesotho');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('LR','Liberia','Liberia');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('LY','Libya','Libya');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('LI','Liechtenstein','Liechtenstein');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('LT','Lithuania','Lithuania');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('LU','Luxembourg','Luxembourg');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('MO','Macao','Macao');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('MK','Macedonia, the Former Yugoslav Republic of','North Macedonia');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('MG','Madagascar','Madagascar');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('MW','Malawi','Malawi');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('MY','Malaysia','Malaysia');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('MV','Maldives','Maldives');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('ML','Mali','Mali');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('MT','Malta','Malta');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('MH','Marshall Islands','Marshall Islands');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('MQ','Martinique','Martinique');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('MR','Mauritania','Mauritania');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('MU','Mauritius','Mauritius');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('YT','Mayotte','Mayotte');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('MX','Mexico','Mexico');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('FM','Micronesia, Federated States of','Micronesia');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('MD','Moldova, Republic of','Moldova');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('MC','Monaco','Monaco');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('MN','Mongolia','Mongolia');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('ME','Montenegro','Montenegro');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('MS','Montserrat','Montserrat');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('MA','Morocco','Morocco');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('MZ','Mozambique','Mozambique');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('MM','Myanmar','Myanmar');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('NA','Namibia','Namibia');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('NR','Nauru','Nauru');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('NP','Nepal','Nepal');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('NL','Netherlands','Netherlands');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('NC','New Caledonia','New Caledonia');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('NZ','New Zealand','New Zealand');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('NI','Nicaragua','Nicaragua');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('NE','Niger','Niger');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('NG','Nigeria','Nigeria');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('NU','Niue','Niue');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('NF','Norfolk Island','Norfolk Island');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('MP','Northern Mariana Islands','Northern Mariana Islands');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('NO','Norway','Norway');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('OM','Oman','Oman');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('PK','Pakistan','Pakistan');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('PW','Palau','Palau');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('PS','Palestine, State of','Palestine');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('PA','Panama','Panama');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('PG','Papua New Guinea','Papua New Guinea');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('PY','Paraguay','Paraguay');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('PE','Peru','Peru');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('PH','Philippines','Philippines');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('PN','Pitcairn','Pitcairn');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('PL','Poland','Poland');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('PT','Portugal','Portugal');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('PR','Puerto Rico','Puerto Rico');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('QA','Qatar','Qatar');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('RE','Réunion','Réunion');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('RO','Romania','Romania');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('RU','Russian Federation','Russia');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('RW','Rwanda','Rwanda');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('BL','Saint-Barthélemy','Saint-Barthélemy');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('SH','Saint Helena, Ascension and Tristan da Cunha','St. Helena');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('KN','Saint Kitts and Nevis','Saint Kitts and Nevis');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('LC','Saint Lucia','Saint Lucia');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('MF','Saint Martin (French part)','Saint Martin');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('PM','Saint Pierre and Miquelon','Saint Pierre and Miquelon');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('VC','Saint Vincent and the Grenadines','Saint Vincent');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('WS','Samoa','Samoa');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('SM','San Marino','San Marino');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('ST','Sao Tome and Principe','Sao Tome and Principe');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('SA','Saudi Arabia','Saudi Arabia');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('SN','Senegal','Senegal');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('RS','Serbia','Serbia');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('SC','Seychelles','Seychelles');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('SL','Sierra Leone','Sierra Leone');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('SG','Singapore','Singapore');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('SX','Sint Maarten (Dutch part)','Sint Maarten');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('SK','Slovakia','Slovakia');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('SI','Slovenia','Slovenia');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('SB','Solomon Islands','Solomon Islands');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('SO','Somalia','Somalia');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('ZA','South Africa','South Africa');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('GS','South Georgia and the South Sandwich Islands','South Georgia');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('SS','South Sudan','South Sudan');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('ES','Spain','Spain');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('LK','Sri Lanka','Sri Lanka');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('SD','Sudan','Sudan');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('SR','Suriname','Suriname');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('SJ','Svalbard and Jan Mayen','Svalbard and Jan Mayen');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('SZ','Swaziland','Swaziland');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('SE','Sweden','Sweden');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('CH','Switzerland','Switzerland');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('SY','Syrian Arab Republic','Syria');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('TW','Taiwan, Province of China','Taiwan');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('TJ','Tajikistan','Tajikistan');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('TZ','Tanzania, United Republic of','Tanzania');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('TH','Thailand','Thailand');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('TL','Timor-Leste','Timor-Leste');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('TG','Togo','Togo');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('TK','Tokelau','Tokelau');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('TO','Tonga','Tonga');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('TT','Trinidad and Tobago','Trinidad and Tobago');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('TN','Tunisia','Tunisia');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('TR','Turkey','Turkey');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('TM','Turkmenistan','Turkmenistan');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('TC','Turks and Caicos Islands','Turks and Caicos Islands');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('TV','Tuvalu','Tuvalu');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('UG','Uganda','Uganda');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('UA','Ukraine','Ukraine');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('AE','United Arab Emirates','UAE');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('GB','United Kingdom','United Kingdom');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('US','United States','USA');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('UM','United States Minor Outlying Islands',null);
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('UY','Uruguay','Uruguay');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('UZ','Uzbekistan','Uzbekistan');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('VU','Vanuatu','Vanuatu');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('VE','Venezuela, Bolivarian Republic of','Venezuela');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('VN','Viet Nam','Viet Nam');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('VG','Virgin Islands, British','British Virgin Islands');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('VI','Virgin Islands, U.S.','US Virgin Islands');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('WF','Wallis and Futuna','Wallis and Futuna');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('EH','Western Sahara','Western Sahara');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('YE','Yemen','Yemen');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('ZM','Zambia','Zambia');
Insert into BC_COUNTRY (COUNTRY_CODE,COUNTRY_FORMAL_NAME,COUNTRY_SHORT_NAME) values ('ZW','Zimbabwe','Zimbabwe');
--------------------------------------------------------
--  DDL for Index COUNTRY_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "COUNTRY_PK" ON "BC_COUNTRY" ("COUNTRY_CODE") 
  ;
--------------------------------------------------------
--  Constraints for Table BC_COUNTRY
--------------------------------------------------------

  ALTER TABLE "BC_COUNTRY" ADD CONSTRAINT "COUNTRY_PK" PRIMARY KEY ("COUNTRY_CODE")
  USING INDEX  ENABLE;
  ALTER TABLE "BC_COUNTRY" MODIFY ("COUNTRY_CODE" NOT NULL ENABLE);
  ALTER TABLE "BC_COUNTRY" MODIFY ("COUNTRY_FORMAL_NAME" NOT NULL ENABLE);
  
  
--------------------------------------------------------
--  DDL for Table BC_PROGRAM
--------------------------------------------------------

  CREATE TABLE "BC_PROGRAM" 
   (	"PROGRAM_ID" VARCHAR2(25), 
	"PROGRAM_LOCATION" VARCHAR2(25), 
	"PROGRAM_NAME" VARCHAR2(50), 
	"PROGRAM_SHORT_NAME" VARCHAR2(25), 
	"PROGRAM_URL" VARCHAR2(100), 
	"PROGRAM_PHONE_NUMBER" VARCHAR2(15), 
	"PROGRAM_EMAIL" VARCHAR2(25), 
	"PROGRAM_TIMEZONE" VARCHAR2(20), 
	"COUNTRY_CODE" CHAR(2)
   ) ;
REM INSERTING into BC_PROGRAM
SET DEFINE OFF;
Insert into BC_PROGRAM (PROGRAM_ID,PROGRAM_LOCATION,PROGRAM_NAME,PROGRAM_SHORT_NAME,PROGRAM_URL,PROGRAM_PHONE_NUMBER,PROGRAM_EMAIL,PROGRAM_TIMEZONE,COUNTRY_CODE) values ('bcycle_heartland','Omaha, NE','Heartland B-cycle',null,'https://heartland.bcycle.com','+1 402-957-2453','info@heartlandbcycle.com','America/Chicago','US');
Insert into BC_PROGRAM (PROGRAM_ID,PROGRAM_LOCATION,PROGRAM_NAME,PROGRAM_SHORT_NAME,PROGRAM_URL,PROGRAM_PHONE_NUMBER,PROGRAM_EMAIL,PROGRAM_TIMEZONE,COUNTRY_CODE) values ('bergen-city-bike','Bergen, NO','Bergen City Bike','BCB','https://bergenbysykkel.no/en','+47 902 59 737','post@bergenbysykkel.no','Europe/Oslo','NO');
--------------------------------------------------------
--  DDL for Index PROGRAM_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "PROGRAM_PK" ON "BC_PROGRAM" ("PROGRAM_ID") 
  ;
--------------------------------------------------------
--  Constraints for Table BC_PROGRAM
--------------------------------------------------------

  ALTER TABLE "BC_PROGRAM" ADD CONSTRAINT "PROGRAM_PK" PRIMARY KEY ("PROGRAM_ID")
  USING INDEX  ENABLE;
  ALTER TABLE "BC_PROGRAM" MODIFY ("PROGRAM_ID" NOT NULL ENABLE);
  ALTER TABLE "BC_PROGRAM" MODIFY ("PROGRAM_NAME" NOT NULL ENABLE);
  ALTER TABLE "BC_PROGRAM" MODIFY ("COUNTRY_CODE" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table BC_PROGRAM
--------------------------------------------------------

  ALTER TABLE "BC_PROGRAM" ADD CONSTRAINT "PROGRAM_COUNTRY_FK" FOREIGN KEY ("COUNTRY_CODE")
	  REFERENCES "BC_COUNTRY" ("COUNTRY_CODE") ENABLE;


--------------------------------------------------------
--  DDL for Table BC_PASS
--------------------------------------------------------

  CREATE TABLE "BC_PASS" 
   (	"PASS_TYPE" VARCHAR2(50), 
	"PASS_COST" NUMBER, 
	"PASS_DESCRIPTION" VARCHAR2(255), 
	"PROGRAM_ID" VARCHAR2(25), 
	"PASS_ID" NUMBER(*,0)
   ) ;
REM INSERTING into BC_PASS
SET DEFINE OFF;
Insert into BC_PASS (PASS_TYPE,PASS_COST,PASS_DESCRIPTION,PROGRAM_ID,PASS_ID) values ('FUN!Pass',12,'Includes unlimited one-hour trips and access to the system for 24 hours.  All trips longer than one hour cost $5 per each additional tour.','bcycle_heartland',1);
Insert into BC_PASS (PASS_TYPE,PASS_COST,PASS_DESCRIPTION,PROGRAM_ID,PASS_ID) values ('Heartland Monthly Pass',20,'Includes unlimited 1-hour trips and access to the system for 31 days.  All trips longer than one hour cost $5 per each additional tour.','bcycle_heartland',2);
Insert into BC_PASS (PASS_TYPE,PASS_COST,PASS_DESCRIPTION,PROGRAM_ID,PASS_ID) values ('Heartland Pass (Annual pay)',156,'Includes unlimited 1-hour trips and access to the system for 365 days.  All trips longer than one hour cost $5 per each additional tour.','bcycle_heartland',3);
--------------------------------------------------------
--  DDL for Index PASS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "PASS_PK" ON "BC_PASS" ("PASS_TYPE") 
  ;
--------------------------------------------------------
--  Constraints for Table BC_PASS
--------------------------------------------------------

  ALTER TABLE "BC_PASS" ADD CONSTRAINT "PASS_PK" PRIMARY KEY ("PASS_TYPE")
  USING INDEX  ENABLE;
  ALTER TABLE "BC_PASS" MODIFY ("PASS_TYPE" NOT NULL ENABLE);
  ALTER TABLE "BC_PASS" MODIFY ("PASS_COST" NOT NULL ENABLE);
  ALTER TABLE "BC_PASS" MODIFY ("PASS_DESCRIPTION" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table BC_PASS
--------------------------------------------------------

  ALTER TABLE "BC_PASS" ADD CONSTRAINT "PASS_PROGRAM_FK" FOREIGN KEY ("PROGRAM_ID")
	  REFERENCES "BC_PROGRAM" ("PROGRAM_ID") ENABLE;

  
--------------------------------------------------------
--  DDL for Table BC_ACCOUNT
--------------------------------------------------------

  CREATE TABLE "BC_ACCOUNT" 
   (	"ACCOUNT_ID" NUMBER(*,0), 
	"ACCOUNT_FIRST_NAME" VARCHAR2(25), 
	"ACCOUNT_LAST_NAME" VARCHAR2(50), 
	"ACCOUNT_EMAIL" VARCHAR2(25), 
	"ACCOUNT_PASSWORD" VARCHAR2(25), 
	"ACCOUNT_MOBILE_PHONE" VARCHAR2(15), 
	"ACCOUNT_STREET" VARCHAR2(50), 
	"ACCOUNT_APARTMENT" VARCHAR2(10), 
	"ACCOUNT_CITY" VARCHAR2(25), 
	"ACCOUNT_STATE_PROVINCE" VARCHAR2(25), 
	"ACCOUNT_POSTAL_CODE" VARCHAR2(15)
   ) ;
REM INSERTING into BC_ACCOUNT
SET DEFINE OFF;
Insert into BC_ACCOUNT (ACCOUNT_ID,ACCOUNT_FIRST_NAME,ACCOUNT_LAST_NAME,ACCOUNT_EMAIL,ACCOUNT_PASSWORD,ACCOUNT_MOBILE_PHONE,ACCOUNT_STREET,ACCOUNT_APARTMENT,ACCOUNT_CITY,ACCOUNT_STATE_PROVINCE,ACCOUNT_POSTAL_CODE) values (10,'Jens','Bratlie','national_legion@mail.com','Yu/#ASHhuu','(402) 872-4056','2381 S. 13th Street',null,'Omaha','NE','68182');
Insert into BC_ACCOUNT (ACCOUNT_ID,ACCOUNT_FIRST_NAME,ACCOUNT_LAST_NAME,ACCOUNT_EMAIL,ACCOUNT_PASSWORD,ACCOUNT_MOBILE_PHONE,ACCOUNT_STREET,ACCOUNT_APARTMENT,ACCOUNT_CITY,ACCOUNT_STATE_PROVINCE,ACCOUNT_POSTAL_CODE) values (11,'Henrik','Michelsen','hmich@gmail.com','tHEb35T','(402) 811-1198','9228 N. 144th Street',null,'Omaha','NE','68144');
Insert into BC_ACCOUNT (ACCOUNT_ID,ACCOUNT_FIRST_NAME,ACCOUNT_LAST_NAME,ACCOUNT_EMAIL,ACCOUNT_PASSWORD,ACCOUNT_MOBILE_PHONE,ACCOUNT_STREET,ACCOUNT_APARTMENT,ACCOUNT_CITY,ACCOUNT_STATE_PROVINCE,ACCOUNT_POSTAL_CODE) values (12,'Kari','Halvorsen','k.halovsen@gmail.com','JetBL*CK','(303) 228-4472','287 Pine Circle','32','Lincoln','NE','68501');
Insert into BC_ACCOUNT (ACCOUNT_ID,ACCOUNT_FIRST_NAME,ACCOUNT_LAST_NAME,ACCOUNT_EMAIL,ACCOUNT_PASSWORD,ACCOUNT_MOBILE_PHONE,ACCOUNT_STREET,ACCOUNT_APARTMENT,ACCOUNT_CITY,ACCOUNT_STATE_PROVINCE,ACCOUNT_POSTAL_CODE) values (13,'Marit','Berge','marit@berge.com','babyBlues$$','(402) 911-2282','23 Long Range Road',null,'Omaha','NE','68133');
--------------------------------------------------------
--  DDL for Index ACCOUNT_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ACCOUNT_PK" ON "BC_ACCOUNT" ("ACCOUNT_ID") 
  ;
--------------------------------------------------------
--  DDL for Index ACCOUNT_EMAIL_UN
--------------------------------------------------------

  CREATE UNIQUE INDEX "ACCOUNT_EMAIL_UN" ON "BC_ACCOUNT" ("ACCOUNT_EMAIL") 
  ;
--------------------------------------------------------
--  Constraints for Table BC_ACCOUNT
--------------------------------------------------------

  ALTER TABLE "BC_ACCOUNT" ADD CONSTRAINT "ACCOUNT_EMAIL_UN" UNIQUE ("ACCOUNT_EMAIL")
  USING INDEX  ENABLE;
  ALTER TABLE "BC_ACCOUNT" ADD CONSTRAINT "ACCOUNT_PK" PRIMARY KEY ("ACCOUNT_ID")
  USING INDEX  ENABLE;
  ALTER TABLE "BC_ACCOUNT" MODIFY ("ACCOUNT_ID" NOT NULL ENABLE);
  ALTER TABLE "BC_ACCOUNT" MODIFY ("ACCOUNT_FIRST_NAME" NOT NULL ENABLE);
  ALTER TABLE "BC_ACCOUNT" MODIFY ("ACCOUNT_LAST_NAME" NOT NULL ENABLE);
  ALTER TABLE "BC_ACCOUNT" MODIFY ("ACCOUNT_EMAIL" NOT NULL ENABLE);
  ALTER TABLE "BC_ACCOUNT" MODIFY ("ACCOUNT_PASSWORD" NOT NULL ENABLE);
  ALTER TABLE "BC_ACCOUNT" MODIFY ("ACCOUNT_MOBILE_PHONE" NOT NULL ENABLE);
  ALTER TABLE "BC_ACCOUNT" MODIFY ("ACCOUNT_STREET" NOT NULL ENABLE);
  ALTER TABLE "BC_ACCOUNT" MODIFY ("ACCOUNT_CITY" NOT NULL ENABLE);
  ALTER TABLE "BC_ACCOUNT" MODIFY ("ACCOUNT_STATE_PROVINCE" NOT NULL ENABLE);
  ALTER TABLE "BC_ACCOUNT" MODIFY ("ACCOUNT_POSTAL_CODE" NOT NULL ENABLE);


--------------------------------------------------------
--  DDL for Table BC_MEMBERSHIP
--------------------------------------------------------

  CREATE TABLE "BC_MEMBERSHIP" 
   (	"MEMBERSHIP_ID" NUMBER(*,0), 
	"MEMBER_PASS_TOTAL" NUMBER, 
	"MEMBER_PASS_START_TIME" DATE, 
	"MEMBER_PASS_END_TIME" DATE, 
	"ACCOUNT_ID" NUMBER(*,0), 
	"PASS_ID" NUMBER(*,0)
   ) ;
REM INSERTING into BC_MEMBERSHIP
SET DEFINE OFF;
Insert into BC_MEMBERSHIP (MEMBERSHIP_ID,MEMBER_PASS_TOTAL,MEMBER_PASS_START_TIME,MEMBER_PASS_END_TIME,ACCOUNT_ID,PASS_ID) values (100,12,TO_DATE('19-JAN-2022 20:15:00', 'DD-MON-YYYY HH24:MI:SS'),TO_DATE('20-JAN-2022 20:15:00', 'DD-MON-YYYY HH24:MI:SS'),10,1);
Insert into BC_MEMBERSHIP (MEMBERSHIP_ID,MEMBER_PASS_TOTAL,MEMBER_PASS_START_TIME,MEMBER_PASS_END_TIME,ACCOUNT_ID,PASS_ID) values (101,12,TO_DATE('15-JAN-2022 20:15:00', 'DD-MON-YYYY HH24:MI:SS'),TO_DATE('16-JAN-2022 20:15:00', 'DD-MON-YYYY HH24:MI:SS'),10,1);
Insert into BC_MEMBERSHIP (MEMBERSHIP_ID,MEMBER_PASS_TOTAL,MEMBER_PASS_START_TIME,MEMBER_PASS_END_TIME,ACCOUNT_ID,PASS_ID) values (102,12,TO_DATE('01-JAN-2022 15:15:00', 'DD-MON-YYYY HH24:MI:SS'),TO_DATE('02-JAN-2022 15:15:00', 'DD-MON-YYYY HH24:MI:SS'),10,1);
Insert into BC_MEMBERSHIP (MEMBERSHIP_ID,MEMBER_PASS_TOTAL,MEMBER_PASS_START_TIME,MEMBER_PASS_END_TIME,ACCOUNT_ID,PASS_ID) values (104,20,TO_DATE('15-JAN-2022 09:15:00', 'DD-MON-YYYY HH24:MI:SS'),TO_DATE('15-FEB-2022 09:15:00', 'DD-MON-YYYY HH24:MI:SS'),11,2);
Insert into BC_MEMBERSHIP (MEMBERSHIP_ID,MEMBER_PASS_TOTAL,MEMBER_PASS_START_TIME,MEMBER_PASS_END_TIME,ACCOUNT_ID,PASS_ID) values (105,20,TO_DATE('10-JAN-2022 13:15:00', 'DD-MON-YYYY HH24:MI:SS'),TO_DATE('10-FEB-2022 13:15:00', 'DD-MON-YYYY HH24:MI:SS'),12,2);
Insert into BC_MEMBERSHIP (MEMBERSHIP_ID,MEMBER_PASS_TOTAL,MEMBER_PASS_START_TIME,MEMBER_PASS_END_TIME,ACCOUNT_ID,PASS_ID) values (106,156,TO_DATE('02-JAN-2022 11:15:00', 'DD-MON-YYYY HH24:MI:SS'),TO_DATE('12-JAN-2023 11:15:00', 'DD-MON-YYYY HH24:MI:SS'),13,3);
--------------------------------------------------------
--  DDL for Index MEMBERSHIP_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "MEMBERSHIP_PK" ON "BC_MEMBERSHIP" ("MEMBERSHIP_ID") 
  ;
--------------------------------------------------------
--  Constraints for Table BC_MEMBERSHIP
--------------------------------------------------------

  ALTER TABLE "BC_MEMBERSHIP" ADD CONSTRAINT "MEMBERSHIP_PK" PRIMARY KEY ("MEMBERSHIP_ID")
  USING INDEX  ENABLE;
  ALTER TABLE "BC_MEMBERSHIP" MODIFY ("MEMBERSHIP_ID" NOT NULL ENABLE);
  ALTER TABLE "BC_MEMBERSHIP" MODIFY ("MEMBER_PASS_TOTAL" NOT NULL ENABLE);
  ALTER TABLE "BC_MEMBERSHIP" MODIFY ("MEMBER_PASS_START_TIME" NOT NULL ENABLE);
  ALTER TABLE "BC_MEMBERSHIP" MODIFY ("MEMBER_PASS_END_TIME" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table BC_MEMBERSHIP
--------------------------------------------------------

  ALTER TABLE "BC_MEMBERSHIP" ADD CONSTRAINT "MEMBERSHIP_ACCOUNT_FK" FOREIGN KEY ("ACCOUNT_ID")
	  REFERENCES "BC_ACCOUNT" ("ACCOUNT_ID") ENABLE;

--------------------------------------------------------
--  DDL for Table BC_STATION
--------------------------------------------------------

  CREATE TABLE "BC_STATION" 
   (	"STATION_ID" VARCHAR2(25), 
	"STATION_NAME" VARCHAR2(50), 
	"STATION_SHORT_NAME" VARCHAR2(25), 
	"STATION_LATITUDE" NUMBER(8,6), 
	"STATION_LONGITUDE" NUMBER(9,6), 
	"STATION_ADDRESS" VARCHAR2(50), 
	"STATION_POSTAL_CODE" VARCHAR2(15), 
	"STATION_CONTACT_PHONE" VARCHAR2(15), 
	"STATION_CAPACITY" NUMBER(*,0), 
	"STATION_VEHICLES_AVAILABLE" NUMBER(*,0), 
	"STATION_DOCKS_AVAILABLE" NUMBER(*,0), 
	"STATION_IS_RENTING" NUMBER, 
	"STATION_IS_RETURNING" NUMBER, 
	"STATION_LAST_REPORTED" DATE, 
	"PROGRAM_ID" VARCHAR2(25)
   ) ;
REM INSERTING into BC_STATION
SET DEFINE OFF;
Insert into BC_STATION (STATION_ID,STATION_NAME,STATION_SHORT_NAME,STATION_LATITUDE,STATION_LONGITUDE,STATION_ADDRESS,STATION_POSTAL_CODE,STATION_CONTACT_PHONE,STATION_CAPACITY,STATION_VEHICLES_AVAILABLE,STATION_DOCKS_AVAILABLE,STATION_IS_RENTING,STATION_IS_RETURNING,STATION_LAST_REPORTED,PROGRAM_ID) values ('bcycle_heartland_1917','67th and Pine',null,41.24497,-96.01573,'1625 S 67th St','68182','+1 402-957-2453',8,5,3,1,1,TO_DATE('19-JAN-2022 10:24:35', 'DD-MON-YYYY HH24:MI:SS'),'bcycle_heartland');
Insert into BC_STATION (STATION_ID,STATION_NAME,STATION_SHORT_NAME,STATION_LATITUDE,STATION_LONGITUDE,STATION_ADDRESS,STATION_POSTAL_CODE,STATION_CONTACT_PHONE,STATION_CAPACITY,STATION_VEHICLES_AVAILABLE,STATION_DOCKS_AVAILABLE,STATION_IS_RENTING,STATION_IS_RETURNING,STATION_LAST_REPORTED,PROGRAM_ID) values ('bcycle_heartland_1916','62nd and Dodge',null,41.25832,-96.00853,'6200 Dodge Street','68182','+1 402-957-2453',8,2,6,1,1,TO_DATE('19-JAN-2022 10:29:35', 'DD-MON-YYYY HH24:MI:SS'),'bcycle_heartland');
Insert into BC_STATION (STATION_ID,STATION_NAME,STATION_SHORT_NAME,STATION_LATITUDE,STATION_LONGITUDE,STATION_ADDRESS,STATION_POSTAL_CODE,STATION_CONTACT_PHONE,STATION_CAPACITY,STATION_VEHICLES_AVAILABLE,STATION_DOCKS_AVAILABLE,STATION_IS_RENTING,STATION_IS_RETURNING,STATION_LAST_REPORTED,PROGRAM_ID) values ('bcycle_heartland_1918','66th and Center',null,41.23811,-96.01334,'6600 Center Street','68181','+1 402-957-2453',8,8,0,1,0,TO_DATE('19-JAN-2022 10:23:35', 'DD-MON-YYYY HH24:MI:SS'),'bcycle_heartland');
Insert into BC_STATION (STATION_ID,STATION_NAME,STATION_SHORT_NAME,STATION_LATITUDE,STATION_LONGITUDE,STATION_ADDRESS,STATION_POSTAL_CODE,STATION_CONTACT_PHONE,STATION_CAPACITY,STATION_VEHICLES_AVAILABLE,STATION_DOCKS_AVAILABLE,STATION_IS_RENTING,STATION_IS_RETURNING,STATION_LAST_REPORTED,PROGRAM_ID) values ('bcycle_heartland_1919','67th and Frances',null,41.23985,-96.01489,'2110 South 67th Street','68181','+1 402-957-2453',8,2,6,1,1,TO_DATE('19-JAN-2022 10:35:35', 'DD-MON-YYYY HH24:MI:SS'),'bcycle_heartland');
Insert into BC_STATION (STATION_ID,STATION_NAME,STATION_SHORT_NAME,STATION_LATITUDE,STATION_LONGITUDE,STATION_ADDRESS,STATION_POSTAL_CODE,STATION_CONTACT_PHONE,STATION_CAPACITY,STATION_VEHICLES_AVAILABLE,STATION_DOCKS_AVAILABLE,STATION_IS_RENTING,STATION_IS_RETURNING,STATION_LAST_REPORTED,PROGRAM_ID) values ('bcycle_heartland_1920','Aksarben Drive',null,41.23985,-96.01489,'Aksarben Drive','68181','+1 402-957-2453',6,0,6,0,1,TO_DATE('19-JAN-2022 10:15:35', 'DD-MON-YYYY HH24:MI:SS'),'bcycle_heartland');
Insert into BC_STATION (STATION_ID,STATION_NAME,STATION_SHORT_NAME,STATION_LATITUDE,STATION_LONGITUDE,STATION_ADDRESS,STATION_POSTAL_CODE,STATION_CONTACT_PHONE,STATION_CAPACITY,STATION_VEHICLES_AVAILABLE,STATION_DOCKS_AVAILABLE,STATION_IS_RENTING,STATION_IS_RETURNING,STATION_LAST_REPORTED,PROGRAM_ID) values ('bergen_bcycle_2322','Høyteknologisenteret','Utenfor hovedinngang',60.38174,5.33169,'Thormøhlensgate 55','5008','+47 902 59 737',25,20,5,1,1,TO_DATE('22-JAN-2022 17:53:45', 'DD-MON-YYYY HH24:MI:SS'),'bergen-city-bike');
Insert into BC_STATION (STATION_ID,STATION_NAME,STATION_SHORT_NAME,STATION_LATITUDE,STATION_LONGITUDE,STATION_ADDRESS,STATION_POSTAL_CODE,STATION_CONTACT_PHONE,STATION_CAPACITY,STATION_VEHICLES_AVAILABLE,STATION_DOCKS_AVAILABLE,STATION_IS_RENTING,STATION_IS_RETURNING,STATION_LAST_REPORTED,PROGRAM_ID) values ('bergen_bcycle_2321','Damsgårdsveien 125','I parkering garasje ',60.38422,5.31148,'Damsgårdsveien 125','5160','+47 902 59 737',19,15,5,1,1,TO_DATE('22-JAN-2022 17:50:23', 'DD-MON-YYYY HH24:MI:SS'),'bergen-city-bike');
Insert into BC_STATION (STATION_ID,STATION_NAME,STATION_SHORT_NAME,STATION_LATITUDE,STATION_LONGITUDE,STATION_ADDRESS,STATION_POSTAL_CODE,STATION_CONTACT_PHONE,STATION_CAPACITY,STATION_VEHICLES_AVAILABLE,STATION_DOCKS_AVAILABLE,STATION_IS_RENTING,STATION_IS_RETURNING,STATION_LAST_REPORTED,PROGRAM_ID) values ('bergen_bcycle_2314','Kalfarveien 31',null,60.38824,5.34094,'Kalfarveien 31','5018','+47 902 59 737',13,5,8,1,1,TO_DATE('22-JAN-2022 17:52:13', 'DD-MON-YYYY HH24:MI:SS'),'bergen-city-bike');
Insert into BC_STATION (STATION_ID,STATION_NAME,STATION_SHORT_NAME,STATION_LATITUDE,STATION_LONGITUDE,STATION_ADDRESS,STATION_POSTAL_CODE,STATION_CONTACT_PHONE,STATION_CAPACITY,STATION_VEHICLES_AVAILABLE,STATION_DOCKS_AVAILABLE,STATION_IS_RENTING,STATION_IS_RETURNING,STATION_LAST_REPORTED,PROGRAM_ID) values ('bergen_bcycle_2313','Solheimsviken','Utenfor Beddingen',60.37708,5.33557,'Solheimsgaten 7D','5058','+47 902 59 737',19,0,19,0,1,TO_DATE('22-JAN-2022 17:51:02', 'DD-MON-YYYY HH24:MI:SS'),'bergen-city-bike');
Insert into BC_STATION (STATION_ID,STATION_NAME,STATION_SHORT_NAME,STATION_LATITUDE,STATION_LONGITUDE,STATION_ADDRESS,STATION_POSTAL_CODE,STATION_CONTACT_PHONE,STATION_CAPACITY,STATION_VEHICLES_AVAILABLE,STATION_DOCKS_AVAILABLE,STATION_IS_RENTING,STATION_IS_RETURNING,STATION_LAST_REPORTED,PROGRAM_ID) values ('bergen_bcycle_1900','Tonningneset',null,60.37957,5.34465,'Møllendalsveien 31','5009','+47 902 59 737',19,0,19,0,1,TO_DATE('22-JAN-2022 17:51:02', 'DD-MON-YYYY HH24:MI:SS'),'bergen-city-bike');
--------------------------------------------------------
--  DDL for Index STATION_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "STATION_PK" ON "BC_STATION" ("STATION_ID") 
  ;
--------------------------------------------------------
--  Constraints for Table BC_STATION
--------------------------------------------------------

  ALTER TABLE "BC_STATION" ADD CONSTRAINT "STATION_PK" PRIMARY KEY ("STATION_ID")
  USING INDEX  ENABLE;
  ALTER TABLE "BC_STATION" MODIFY ("STATION_ID" NOT NULL ENABLE);
  ALTER TABLE "BC_STATION" MODIFY ("STATION_NAME" NOT NULL ENABLE);
  ALTER TABLE "BC_STATION" MODIFY ("STATION_LATITUDE" NOT NULL ENABLE);
  ALTER TABLE "BC_STATION" MODIFY ("STATION_LONGITUDE" NOT NULL ENABLE);
  ALTER TABLE "BC_STATION" MODIFY ("STATION_CAPACITY" NOT NULL ENABLE);
  ALTER TABLE "BC_STATION" MODIFY ("STATION_VEHICLES_AVAILABLE" NOT NULL ENABLE);
  ALTER TABLE "BC_STATION" MODIFY ("STATION_DOCKS_AVAILABLE" NOT NULL ENABLE);
  ALTER TABLE "BC_STATION" MODIFY ("STATION_IS_RENTING" NOT NULL ENABLE);
  ALTER TABLE "BC_STATION" MODIFY ("STATION_IS_RETURNING" NOT NULL ENABLE);
  ALTER TABLE "BC_STATION" MODIFY ("STATION_LAST_REPORTED" NOT NULL ENABLE);
  ALTER TABLE "BC_STATION" MODIFY ("PROGRAM_ID" NOT NULL ENABLE);
  ALTER TABLE "BC_STATION" ADD CHECK ( station_latitude BETWEEN - 90 AND 90 ) ENABLE;
  ALTER TABLE "BC_STATION" ADD CHECK ( station_longitude BETWEEN - 180 AND 180 ) ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table BC_STATION
--------------------------------------------------------

  ALTER TABLE "BC_STATION" ADD CONSTRAINT "STATION_PROGRAM_FK" FOREIGN KEY ("PROGRAM_ID")
	  REFERENCES "BC_PROGRAM" ("PROGRAM_ID") ENABLE;

--------------------------------------------------------
--  DDL for Table BC_BICYCLE
--------------------------------------------------------

  CREATE TABLE "BC_BICYCLE" 
   (	"BICYCLE_ID" NUMBER(*,0), 
	"BICYCLE_TYPE" VARCHAR2(20), 
	"BICYCLE_RIDER_CAPACITY" NUMBER(*,0), 
	"BICYCLE_MAKE" VARCHAR2(25), 
	"BICYCLE_MODEL" VARCHAR2(25), 
	"BICYCLE_COLOR" VARCHAR2(25), 
	"BICYCLE_YEAR_ACQUIRED" NUMBER(*,0), 
	"BICYCLE_STATUS" VARCHAR2(15), 
	"BICYCLE_LATITUDE" NUMBER(8,6), 
	"BICYCLE_LONGITUDE" NUMBER(9,6), 
	"BICYCLE_CURRENT_POWER" NUMBER(4,1), 
	"BICYCLE_CURRENT_RANGE" NUMBER(7,1), 
	"BICYCLE_STATUS_UPDATED" DATE
   ) ;

   COMMENT ON COLUMN "BC_BICYCLE"."BICYCLE_CURRENT_POWER" IS 'The BICYCLE CURRENT POWER  represents the current percentage, expressed from 0 to 1, of fuel or battery power remaining in the vehicle.';
   COMMENT ON COLUMN "BC_BICYCLE"."BICYCLE_CURRENT_RANGE" IS 'The BICYCLE CURRENT RANGE  represents the furthest distance in meters that the vehicle can travel with the vehicle''s current charge or fuel (without recharging or refueling). ';
   COMMENT ON COLUMN "BC_BICYCLE"."BICYCLE_STATUS_UPDATED" IS 'The BICYCLE STATUS UPDATED is the last time this vehicle reported its status to the operator''s backend';
REM INSERTING into BC_BICYCLE
SET DEFINE OFF;
Insert into BC_BICYCLE (BICYCLE_ID,BICYCLE_TYPE,BICYCLE_RIDER_CAPACITY,BICYCLE_MAKE,BICYCLE_MODEL,BICYCLE_COLOR,BICYCLE_YEAR_ACQUIRED,BICYCLE_STATUS,BICYCLE_LATITUDE,BICYCLE_LONGITUDE,BICYCLE_CURRENT_POWER,BICYCLE_CURRENT_RANGE,BICYCLE_STATUS_UPDATED) values (1000,'electric',1,'GCM','Bcycle 2.0','white',2018,'available',41.24497,-96.01573,75,30000,TO_DATE('20-JAN-2022 09:13:45', 'DD-MON-YYYY HH24:MI:SS'));
Insert into BC_BICYCLE (BICYCLE_ID,BICYCLE_TYPE,BICYCLE_RIDER_CAPACITY,BICYCLE_MAKE,BICYCLE_MODEL,BICYCLE_COLOR,BICYCLE_YEAR_ACQUIRED,BICYCLE_STATUS,BICYCLE_LATITUDE,BICYCLE_LONGITUDE,BICYCLE_CURRENT_POWER,BICYCLE_CURRENT_RANGE,BICYCLE_STATUS_UPDATED) values (1001,'electric',1,'GCM','Bcycle 2.0','white',2018,'available',41.24497,-96.01573,50,20000,TO_DATE('19-JAN-2022 09:33:56', 'DD-MON-YYYY HH24:MI:SS'));
Insert into BC_BICYCLE (BICYCLE_ID,BICYCLE_TYPE,BICYCLE_RIDER_CAPACITY,BICYCLE_MAKE,BICYCLE_MODEL,BICYCLE_COLOR,BICYCLE_YEAR_ACQUIRED,BICYCLE_STATUS,BICYCLE_LATITUDE,BICYCLE_LONGITUDE,BICYCLE_CURRENT_POWER,BICYCLE_CURRENT_RANGE,BICYCLE_STATUS_UPDATED) values (1002,'classic',1,'GCM','Bcycle 2.0','white',2017,'available',41.24497,-96.01573,null,null,TO_DATE('18-JAN-2022 10:23:57', 'DD-MON-YYYY HH24:MI:SS'));
Insert into BC_BICYCLE (BICYCLE_ID,BICYCLE_TYPE,BICYCLE_RIDER_CAPACITY,BICYCLE_MAKE,BICYCLE_MODEL,BICYCLE_COLOR,BICYCLE_YEAR_ACQUIRED,BICYCLE_STATUS,BICYCLE_LATITUDE,BICYCLE_LONGITUDE,BICYCLE_CURRENT_POWER,BICYCLE_CURRENT_RANGE,BICYCLE_STATUS_UPDATED) values (1003,'electric',1,'GCM','Bcycle 2.0','white',2020,'available',41.23811,-96.01334,30,10000,TO_DATE('20-JAN-2022 08:45:50', 'DD-MON-YYYY HH24:MI:SS'));
Insert into BC_BICYCLE (BICYCLE_ID,BICYCLE_TYPE,BICYCLE_RIDER_CAPACITY,BICYCLE_MAKE,BICYCLE_MODEL,BICYCLE_COLOR,BICYCLE_YEAR_ACQUIRED,BICYCLE_STATUS,BICYCLE_LATITUDE,BICYCLE_LONGITUDE,BICYCLE_CURRENT_POWER,BICYCLE_CURRENT_RANGE,BICYCLE_STATUS_UPDATED) values (1004,'electric',1,'GCM','Bcycle 2.0','white',2020,'available',41.23811,-96.01334,40,15000,TO_DATE('20-JAN-2022 08:50:50', 'DD-MON-YYYY HH24:MI:SS'));
Insert into BC_BICYCLE (BICYCLE_ID,BICYCLE_TYPE,BICYCLE_RIDER_CAPACITY,BICYCLE_MAKE,BICYCLE_MODEL,BICYCLE_COLOR,BICYCLE_YEAR_ACQUIRED,BICYCLE_STATUS,BICYCLE_LATITUDE,BICYCLE_LONGITUDE,BICYCLE_CURRENT_POWER,BICYCLE_CURRENT_RANGE,BICYCLE_STATUS_UPDATED) values (1005,'electric',1,'GCM','Bcycle 2.0','white',2020,'available',41.23811,-96.01334,50,18000,TO_DATE('20-JAN-2022 10:50:50', 'DD-MON-YYYY HH24:MI:SS'));
Insert into BC_BICYCLE (BICYCLE_ID,BICYCLE_TYPE,BICYCLE_RIDER_CAPACITY,BICYCLE_MAKE,BICYCLE_MODEL,BICYCLE_COLOR,BICYCLE_YEAR_ACQUIRED,BICYCLE_STATUS,BICYCLE_LATITUDE,BICYCLE_LONGITUDE,BICYCLE_CURRENT_POWER,BICYCLE_CURRENT_RANGE,BICYCLE_STATUS_UPDATED) values (1006,'classic',1,'GCM','Bcycle 2.0','white',2020,'available',41.25832,-96.00853,null,null,TO_DATE('19-JAN-2022 12:40:10', 'DD-MON-YYYY HH24:MI:SS'));
Insert into BC_BICYCLE (BICYCLE_ID,BICYCLE_TYPE,BICYCLE_RIDER_CAPACITY,BICYCLE_MAKE,BICYCLE_MODEL,BICYCLE_COLOR,BICYCLE_YEAR_ACQUIRED,BICYCLE_STATUS,BICYCLE_LATITUDE,BICYCLE_LONGITUDE,BICYCLE_CURRENT_POWER,BICYCLE_CURRENT_RANGE,BICYCLE_STATUS_UPDATED) values (1007,'cargo',2,'GCM','Bcycle 2.0','white',2020,'available',41.25832,-96.00853,90,20000,TO_DATE('19-JAN-2022 13:20:10', 'DD-MON-YYYY HH24:MI:SS'));
Insert into BC_BICYCLE (BICYCLE_ID,BICYCLE_TYPE,BICYCLE_RIDER_CAPACITY,BICYCLE_MAKE,BICYCLE_MODEL,BICYCLE_COLOR,BICYCLE_YEAR_ACQUIRED,BICYCLE_STATUS,BICYCLE_LATITUDE,BICYCLE_LONGITUDE,BICYCLE_CURRENT_POWER,BICYCLE_CURRENT_RANGE,BICYCLE_STATUS_UPDATED) values (1008,'electric',1,'GCM','Bcycle 2.0','white',2020,'available',41.25832,-96.00853,85,25000,TO_DATE('19-JAN-2022 15:20:10', 'DD-MON-YYYY HH24:MI:SS'));
Insert into BC_BICYCLE (BICYCLE_ID,BICYCLE_TYPE,BICYCLE_RIDER_CAPACITY,BICYCLE_MAKE,BICYCLE_MODEL,BICYCLE_COLOR,BICYCLE_YEAR_ACQUIRED,BICYCLE_STATUS,BICYCLE_LATITUDE,BICYCLE_LONGITUDE,BICYCLE_CURRENT_POWER,BICYCLE_CURRENT_RANGE,BICYCLE_STATUS_UPDATED) values (1009,'electric',1,'GCM','Bcycle 2.0','white',2020,'available',41.25832,-96.00853,80,22000,TO_DATE('19-JAN-2022 16:20:10', 'DD-MON-YYYY HH24:MI:SS'));
Insert into BC_BICYCLE (BICYCLE_ID,BICYCLE_TYPE,BICYCLE_RIDER_CAPACITY,BICYCLE_MAKE,BICYCLE_MODEL,BICYCLE_COLOR,BICYCLE_YEAR_ACQUIRED,BICYCLE_STATUS,BICYCLE_LATITUDE,BICYCLE_LONGITUDE,BICYCLE_CURRENT_POWER,BICYCLE_CURRENT_RANGE,BICYCLE_STATUS_UPDATED) values (1010,'electric',1,'GCM','Bcycle 2.0','white',2020,'available',41.25832,-96.00853,70,18000,TO_DATE('19-JAN-2022 17:20:10', 'DD-MON-YYYY HH24:MI:SS'));
--------------------------------------------------------
--  DDL for Index BICYCLE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "BICYCLE_PK" ON "BC_BICYCLE" ("BICYCLE_ID") 
  ;
--------------------------------------------------------
--  Constraints for Table BC_BICYCLE
--------------------------------------------------------

  ALTER TABLE "BC_BICYCLE" ADD CONSTRAINT "BICYCLE_PK" PRIMARY KEY ("BICYCLE_ID")
  USING INDEX  ENABLE;
  ALTER TABLE "BC_BICYCLE" MODIFY ("BICYCLE_ID" NOT NULL ENABLE);
  ALTER TABLE "BC_BICYCLE" MODIFY ("BICYCLE_TYPE" NOT NULL ENABLE);
  ALTER TABLE "BC_BICYCLE" MODIFY ("BICYCLE_STATUS" NOT NULL ENABLE);
  ALTER TABLE "BC_BICYCLE" ADD CHECK ( bicycle_type IN ( 'cargo', 'classic', 'electric', 'smart' ) ) ENABLE;
  ALTER TABLE "BC_BICYCLE" ADD CHECK ( bicycle_status IN ( 'available', 'in use', 'not available' ) ) ENABLE;
  ALTER TABLE "BC_BICYCLE" ADD CHECK ( bicycle_latitude BETWEEN - 90 AND 90 ) ENABLE;
  ALTER TABLE "BC_BICYCLE" ADD CHECK ( bicycle_longitude BETWEEN - 180 AND 180 ) ENABLE;
  ALTER TABLE "BC_BICYCLE" ADD CHECK ( bicycle_current_power BETWEEN 0 AND 100 ) ENABLE;

--------------------------------------------------------
--  DDL for Table BC_DOCK
--------------------------------------------------------

  CREATE TABLE "BC_DOCK" 
   (	"STATION_ID" VARCHAR2(25), 
	"DOCK_ID" NUMBER(*,0), 
	"DOCK_STATUS" VARCHAR2(20), 
	"BICYCLE_ID" NUMBER(*,0)
   ) ;
REM INSERTING into BC_DOCK
SET DEFINE OFF;
Insert into BC_DOCK (STATION_ID,DOCK_ID,DOCK_STATUS,BICYCLE_ID) values ('bcycle_heartland_1917',1,'unoccupied',null);
Insert into BC_DOCK (STATION_ID,DOCK_ID,DOCK_STATUS,BICYCLE_ID) values ('bcycle_heartland_1917',2,'out of service',null);
Insert into BC_DOCK (STATION_ID,DOCK_ID,DOCK_STATUS,BICYCLE_ID) values ('bcycle_heartland_1917',3,'occupied',1000);
Insert into BC_DOCK (STATION_ID,DOCK_ID,DOCK_STATUS,BICYCLE_ID) values ('bcycle_heartland_1917',4,'occupied',1001);
Insert into BC_DOCK (STATION_ID,DOCK_ID,DOCK_STATUS,BICYCLE_ID) values ('bcycle_heartland_1917',5,'unoccupied',null);
Insert into BC_DOCK (STATION_ID,DOCK_ID,DOCK_STATUS,BICYCLE_ID) values ('bcycle_heartland_1917',6,'unoccupied',null);
Insert into BC_DOCK (STATION_ID,DOCK_ID,DOCK_STATUS,BICYCLE_ID) values ('bcycle_heartland_1917',7,'occupied',1002);
Insert into BC_DOCK (STATION_ID,DOCK_ID,DOCK_STATUS,BICYCLE_ID) values ('bcycle_heartland_1917',8,'unoccupied',null);
Insert into BC_DOCK (STATION_ID,DOCK_ID,DOCK_STATUS,BICYCLE_ID) values ('bcycle_heartland_1916',1,'occupied',1006);
Insert into BC_DOCK (STATION_ID,DOCK_ID,DOCK_STATUS,BICYCLE_ID) values ('bcycle_heartland_1916',2,'occupied',1007);
Insert into BC_DOCK (STATION_ID,DOCK_ID,DOCK_STATUS,BICYCLE_ID) values ('bcycle_heartland_1916',3,'unoccupied',null);
Insert into BC_DOCK (STATION_ID,DOCK_ID,DOCK_STATUS,BICYCLE_ID) values ('bcycle_heartland_1916',4,'unoccupied',null);
Insert into BC_DOCK (STATION_ID,DOCK_ID,DOCK_STATUS,BICYCLE_ID) values ('bcycle_heartland_1916',5,'occupied',1010);
Insert into BC_DOCK (STATION_ID,DOCK_ID,DOCK_STATUS,BICYCLE_ID) values ('bcycle_heartland_1916',6,'unoccupied',null);
Insert into BC_DOCK (STATION_ID,DOCK_ID,DOCK_STATUS,BICYCLE_ID) values ('bcycle_heartland_1916',7,'occupied',1009);
Insert into BC_DOCK (STATION_ID,DOCK_ID,DOCK_STATUS,BICYCLE_ID) values ('bcycle_heartland_1916',8,'occupied',1008);
Insert into BC_DOCK (STATION_ID,DOCK_ID,DOCK_STATUS,BICYCLE_ID) values ('bcycle_heartland_1918',1,'occupied',1003);
Insert into BC_DOCK (STATION_ID,DOCK_ID,DOCK_STATUS,BICYCLE_ID) values ('bcycle_heartland_1918',2,'unoccupied',null);
Insert into BC_DOCK (STATION_ID,DOCK_ID,DOCK_STATUS,BICYCLE_ID) values ('bcycle_heartland_1918',3,'occupied',1004);
Insert into BC_DOCK (STATION_ID,DOCK_ID,DOCK_STATUS,BICYCLE_ID) values ('bcycle_heartland_1918',4,'occupied',1005);
Insert into BC_DOCK (STATION_ID,DOCK_ID,DOCK_STATUS,BICYCLE_ID) values ('bcycle_heartland_1918',5,'unoccupied',null);
Insert into BC_DOCK (STATION_ID,DOCK_ID,DOCK_STATUS,BICYCLE_ID) values ('bcycle_heartland_1918',6,'unoccupied',null);
Insert into BC_DOCK (STATION_ID,DOCK_ID,DOCK_STATUS,BICYCLE_ID) values ('bcycle_heartland_1918',7,'out of service',null);
Insert into BC_DOCK (STATION_ID,DOCK_ID,DOCK_STATUS,BICYCLE_ID) values ('bcycle_heartland_1918',8,'unoccupied',null);
--------------------------------------------------------
--  DDL for Index DOCK__IDX
--------------------------------------------------------

  CREATE UNIQUE INDEX "DOCK__IDX" ON "BC_DOCK" ("BICYCLE_ID") 
  ;
--------------------------------------------------------
--  DDL for Index DOCK_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "DOCK_PK" ON "BC_DOCK" ("DOCK_ID", "STATION_ID") 
  ;
--------------------------------------------------------
--  Constraints for Table BC_DOCK
--------------------------------------------------------

  ALTER TABLE "BC_DOCK" ADD CONSTRAINT "DOCK_PK" PRIMARY KEY ("DOCK_ID", "STATION_ID")
  USING INDEX  ENABLE;
  ALTER TABLE "BC_DOCK" MODIFY ("STATION_ID" NOT NULL ENABLE);
  ALTER TABLE "BC_DOCK" MODIFY ("DOCK_ID" NOT NULL ENABLE);
  ALTER TABLE "BC_DOCK" MODIFY ("DOCK_STATUS" NOT NULL ENABLE);
  ALTER TABLE "BC_DOCK" ADD CHECK ( dock_status IN ( 'occupied', 'out of service', 'unoccupied' ) ) ENABLE;
  ALTER TABLE "BC_DOCK" ADD UNIQUE ("BICYCLE_ID")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table BC_DOCK
--------------------------------------------------------

  ALTER TABLE "BC_DOCK" ADD CONSTRAINT "DOCK_BICYCLE_FK" FOREIGN KEY ("BICYCLE_ID")
	  REFERENCES "BC_BICYCLE" ("BICYCLE_ID") ENABLE;
  ALTER TABLE "BC_DOCK" ADD CONSTRAINT "DOCK_STATION_FK" FOREIGN KEY ("STATION_ID")
	  REFERENCES "BC_STATION" ("STATION_ID") ENABLE;


--------------------------------------------------------
--  DDL for Table BC_BICYCLE_STATUS
--------------------------------------------------------

  CREATE TABLE "BC_BICYCLE_STATUS" 
   (	"BICYCLE_ID" NUMBER(*,0), 
	"BICYCLE_STATUS_TIMESTAMP" DATE, 
	"BICYCLE_STATUS_LATITUDE" NUMBER(8,6), 
	"BICYCLE_STATUS_LONGITUDE" NUMBER(9,6), 
	"BICYCLE_STATUS_POWER" NUMBER, 
	"BICYCLE_STATUS_RANGE" NUMBER(7,1), 
	"BICYCLE_STATUS" VARCHAR2(15)
   ) ;
REM INSERTING into BC_BICYCLE_STATUS
SET DEFINE OFF;
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 12:09:05', 'DD-MON-YYYY HH24:MI:SS'),41.25476,-96.00938,86,25352,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 12:09:10', 'DD-MON-YYYY HH24:MI:SS'),41.25481,-96.00937,86,25348,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 12:09:15', 'DD-MON-YYYY HH24:MI:SS'),41.25486,-96.00935,86,25343,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 12:09:20', 'DD-MON-YYYY HH24:MI:SS'),41.2549,-96.00934,86,25338,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 12:09:25', 'DD-MON-YYYY HH24:MI:SS'),41.25495,-96.00933,86,25333,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 12:09:30', 'DD-MON-YYYY HH24:MI:SS'),41.255,-96.00932,86,25329,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 12:09:35', 'DD-MON-YYYY HH24:MI:SS'),41.25505,-96.00931,86,25324,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 12:09:40', 'DD-MON-YYYY HH24:MI:SS'),41.2551,-96.0093,86,25319,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 12:09:45', 'DD-MON-YYYY HH24:MI:SS'),41.25514,-96.00929,86,25314,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 12:09:50', 'DD-MON-YYYY HH24:MI:SS'),41.25519,-96.00927,86,25310,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 12:09:55', 'DD-MON-YYYY HH24:MI:SS'),41.25524,-96.00926,86,25305,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 12:10:00', 'DD-MON-YYYY HH24:MI:SS'),41.25529,-96.00925,86,25300,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 12:10:05', 'DD-MON-YYYY HH24:MI:SS'),41.25534,-96.00924,86,25295,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 12:10:10', 'DD-MON-YYYY HH24:MI:SS'),41.25538,-96.00923,86,25290,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 12:10:15', 'DD-MON-YYYY HH24:MI:SS'),41.25543,-96.00922,86,25286,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 12:10:20', 'DD-MON-YYYY HH24:MI:SS'),41.25548,-96.00921,86,25281,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 12:10:25', 'DD-MON-YYYY HH24:MI:SS'),41.25553,-96.00919,86,25276,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 12:10:30', 'DD-MON-YYYY HH24:MI:SS'),41.25558,-96.00918,86,25271,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 12:10:35', 'DD-MON-YYYY HH24:MI:SS'),41.25563,-96.00917,86,25267,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 12:10:40', 'DD-MON-YYYY HH24:MI:SS'),41.25567,-96.00916,86,25262,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 12:10:45', 'DD-MON-YYYY HH24:MI:SS'),41.25572,-96.00915,86,25257,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 12:10:50', 'DD-MON-YYYY HH24:MI:SS'),41.25577,-96.00914,86,25252,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 12:10:55', 'DD-MON-YYYY HH24:MI:SS'),41.25582,-96.00913,86,25248,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 12:11:00', 'DD-MON-YYYY HH24:MI:SS'),41.25587,-96.00911,86,25243,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 12:11:05', 'DD-MON-YYYY HH24:MI:SS'),41.25591,-96.0091,86,25238,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 12:11:10', 'DD-MON-YYYY HH24:MI:SS'),41.25596,-96.00909,86,25233,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 12:11:15', 'DD-MON-YYYY HH24:MI:SS'),41.25601,-96.00908,86,25229,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 12:11:20', 'DD-MON-YYYY HH24:MI:SS'),41.25606,-96.00907,86,25224,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 12:11:25', 'DD-MON-YYYY HH24:MI:SS'),41.25611,-96.00906,86,25219,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 12:11:30', 'DD-MON-YYYY HH24:MI:SS'),41.25615,-96.00905,86,25214,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 12:11:35', 'DD-MON-YYYY HH24:MI:SS'),41.2562,-96.00903,86,25210,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 12:11:40', 'DD-MON-YYYY HH24:MI:SS'),41.25625,-96.00902,86,25205,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 12:11:45', 'DD-MON-YYYY HH24:MI:SS'),41.2563,-96.00901,86,25200,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 12:11:50', 'DD-MON-YYYY HH24:MI:SS'),41.25635,-96.009,85,25195,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 12:11:55', 'DD-MON-YYYY HH24:MI:SS'),41.2564,-96.00899,85,25190,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 12:12:00', 'DD-MON-YYYY HH24:MI:SS'),41.25644,-96.00898,85,25186,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 12:12:05', 'DD-MON-YYYY HH24:MI:SS'),41.25649,-96.00897,85,25181,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 12:12:10', 'DD-MON-YYYY HH24:MI:SS'),41.25654,-96.00895,85,25176,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 12:12:15', 'DD-MON-YYYY HH24:MI:SS'),41.25659,-96.00894,85,25171,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 12:12:20', 'DD-MON-YYYY HH24:MI:SS'),41.25664,-96.00893,85,25167,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 12:12:25', 'DD-MON-YYYY HH24:MI:SS'),41.25668,-96.00892,85,25162,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 12:12:30', 'DD-MON-YYYY HH24:MI:SS'),41.25673,-96.00891,85,25157,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 12:12:35', 'DD-MON-YYYY HH24:MI:SS'),41.25678,-96.0089,85,25152,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 12:12:40', 'DD-MON-YYYY HH24:MI:SS'),41.25683,-96.00889,85,25148,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 12:12:45', 'DD-MON-YYYY HH24:MI:SS'),41.25688,-96.00887,85,25143,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 12:12:50', 'DD-MON-YYYY HH24:MI:SS'),41.25692,-96.00886,85,25138,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 12:12:55', 'DD-MON-YYYY HH24:MI:SS'),41.25697,-96.00885,85,25133,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 12:13:00', 'DD-MON-YYYY HH24:MI:SS'),41.25702,-96.00884,85,25129,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 12:13:05', 'DD-MON-YYYY HH24:MI:SS'),41.25707,-96.00883,85,25124,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 12:13:10', 'DD-MON-YYYY HH24:MI:SS'),41.25712,-96.00882,85,25119,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 12:13:15', 'DD-MON-YYYY HH24:MI:SS'),41.25717,-96.0088,85,25114,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 12:13:20', 'DD-MON-YYYY HH24:MI:SS'),41.25721,-96.00879,85,25110,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 12:13:25', 'DD-MON-YYYY HH24:MI:SS'),41.25726,-96.00878,85,25105,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 12:13:30', 'DD-MON-YYYY HH24:MI:SS'),41.25731,-96.00877,85,25100,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 12:13:35', 'DD-MON-YYYY HH24:MI:SS'),41.25736,-96.00876,85,25095,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 12:13:40', 'DD-MON-YYYY HH24:MI:SS'),41.25741,-96.00875,85,25090,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 12:13:45', 'DD-MON-YYYY HH24:MI:SS'),41.25745,-96.00874,85,25086,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 12:13:50', 'DD-MON-YYYY HH24:MI:SS'),41.2575,-96.00872,85,25081,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 12:13:55', 'DD-MON-YYYY HH24:MI:SS'),41.25755,-96.00871,85,25076,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 12:14:00', 'DD-MON-YYYY HH24:MI:SS'),41.2576,-96.0087,85,25071,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 12:14:05', 'DD-MON-YYYY HH24:MI:SS'),41.25765,-96.00869,85,25067,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 12:14:10', 'DD-MON-YYYY HH24:MI:SS'),41.25769,-96.00868,85,25062,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 12:14:15', 'DD-MON-YYYY HH24:MI:SS'),41.25774,-96.00867,85,25057,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 12:14:20', 'DD-MON-YYYY HH24:MI:SS'),41.25779,-96.00866,85,25052,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 12:14:25', 'DD-MON-YYYY HH24:MI:SS'),41.25784,-96.00864,85,25048,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 12:14:30', 'DD-MON-YYYY HH24:MI:SS'),41.25789,-96.00863,85,25043,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 12:14:35', 'DD-MON-YYYY HH24:MI:SS'),41.25832,-96.00853,85,25038,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 12:14:40', 'DD-MON-YYYY HH24:MI:SS'),41.25832,-96.00853,85,25033,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 12:14:45', 'DD-MON-YYYY HH24:MI:SS'),41.25832,-96.00853,85,25029,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 12:14:50', 'DD-MON-YYYY HH24:MI:SS'),41.25832,-96.00853,85,25024,'available');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 12:14:55', 'DD-MON-YYYY HH24:MI:SS'),41.25832,-96.00853,85,25000,'available');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 12:04:15', 'DD-MON-YYYY HH24:MI:SS'),41.25197,-96.01004,87,25629,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 12:04:40', 'DD-MON-YYYY HH24:MI:SS'),41.25221,-96.00998,87,25605,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 12:05:10', 'DD-MON-YYYY HH24:MI:SS'),41.2525,-96.00992,86,25576,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 12:05:35', 'DD-MON-YYYY HH24:MI:SS'),41.25274,-96.00986,86,25552,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 12:06:05', 'DD-MON-YYYY HH24:MI:SS'),41.25303,-96.00979,86,25524,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 12:06:30', 'DD-MON-YYYY HH24:MI:SS'),41.25327,-96.00973,86,25500,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 12:06:55', 'DD-MON-YYYY HH24:MI:SS'),41.25351,-96.00968,86,25476,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 12:07:25', 'DD-MON-YYYY HH24:MI:SS'),41.2538,-96.00961,86,25448,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 12:07:50', 'DD-MON-YYYY HH24:MI:SS'),41.25404,-96.00955,86,25424,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 12:08:15', 'DD-MON-YYYY HH24:MI:SS'),41.25428,-96.00949,86,25400,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 12:08:45', 'DD-MON-YYYY HH24:MI:SS'),41.25457,-96.00942,86,25371,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:49:40', 'DD-MON-YYYY HH24:MI:SS'),41.24355,-96.01205,89,26462,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:50:10', 'DD-MON-YYYY HH24:MI:SS'),41.24384,-96.01198,89,26433,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:50:35', 'DD-MON-YYYY HH24:MI:SS'),41.24408,-96.01192,89,26410,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:51:05', 'DD-MON-YYYY HH24:MI:SS'),41.24437,-96.01185,88,26381,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:51:30', 'DD-MON-YYYY HH24:MI:SS'),41.24461,-96.01179,88,26357,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:52:00', 'DD-MON-YYYY HH24:MI:SS'),41.24489,-96.01173,88,26329,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:52:25', 'DD-MON-YYYY HH24:MI:SS'),41.24514,-96.01167,88,26305,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:52:50', 'DD-MON-YYYY HH24:MI:SS'),41.24538,-96.01161,88,26281,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:53:20', 'DD-MON-YYYY HH24:MI:SS'),41.24566,-96.01154,88,26252,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:53:45', 'DD-MON-YYYY HH24:MI:SS'),41.24591,-96.01148,88,26229,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:54:15', 'DD-MON-YYYY HH24:MI:SS'),41.24619,-96.01142,88,26200,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:40:00', 'DD-MON-YYYY HH24:MI:SS'),41.23811,-96.01334,90,27000,'available');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:40:05', 'DD-MON-YYYY HH24:MI:SS'),41.23811,-96.01334,90,27000,'available');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:40:10', 'DD-MON-YYYY HH24:MI:SS'),41.23811,-96.01334,90,27000,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:40:15', 'DD-MON-YYYY HH24:MI:SS'),41.23811,-96.01334,90,27000,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:40:20', 'DD-MON-YYYY HH24:MI:SS'),41.23816,-96.01333,90,26995,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:40:25', 'DD-MON-YYYY HH24:MI:SS'),41.23821,-96.01332,90,26990,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:40:30', 'DD-MON-YYYY HH24:MI:SS'),41.23825,-96.01331,90,26986,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:40:35', 'DD-MON-YYYY HH24:MI:SS'),41.2383,-96.01329,90,26981,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:40:40', 'DD-MON-YYYY HH24:MI:SS'),41.23835,-96.01328,90,26976,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:40:45', 'DD-MON-YYYY HH24:MI:SS'),41.2384,-96.01327,90,26971,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:40:50', 'DD-MON-YYYY HH24:MI:SS'),41.23845,-96.01326,90,26967,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:40:55', 'DD-MON-YYYY HH24:MI:SS'),41.23849,-96.01325,90,26962,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:41:00', 'DD-MON-YYYY HH24:MI:SS'),41.23854,-96.01324,90,26957,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:41:05', 'DD-MON-YYYY HH24:MI:SS'),41.23859,-96.01323,90,26952,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:41:10', 'DD-MON-YYYY HH24:MI:SS'),41.23864,-96.01321,90,26948,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:41:15', 'DD-MON-YYYY HH24:MI:SS'),41.23869,-96.0132,90,26943,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:41:20', 'DD-MON-YYYY HH24:MI:SS'),41.23874,-96.01319,90,26938,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:41:25', 'DD-MON-YYYY HH24:MI:SS'),41.23878,-96.01318,90,26933,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:41:30', 'DD-MON-YYYY HH24:MI:SS'),41.23883,-96.01317,90,26929,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:41:35', 'DD-MON-YYYY HH24:MI:SS'),41.23888,-96.01316,90,26924,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:41:40', 'DD-MON-YYYY HH24:MI:SS'),41.23893,-96.01315,90,26919,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:41:45', 'DD-MON-YYYY HH24:MI:SS'),41.23898,-96.01313,90,26914,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:41:50', 'DD-MON-YYYY HH24:MI:SS'),41.23902,-96.01312,90,26910,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:41:55', 'DD-MON-YYYY HH24:MI:SS'),41.23907,-96.01311,90,26905,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:42:00', 'DD-MON-YYYY HH24:MI:SS'),41.23912,-96.0131,90,26900,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:42:05', 'DD-MON-YYYY HH24:MI:SS'),41.23917,-96.01309,90,26895,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:42:10', 'DD-MON-YYYY HH24:MI:SS'),41.23922,-96.01308,90,26890,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:42:15', 'DD-MON-YYYY HH24:MI:SS'),41.23926,-96.01307,90,26886,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:42:20', 'DD-MON-YYYY HH24:MI:SS'),41.23931,-96.01305,90,26881,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:42:25', 'DD-MON-YYYY HH24:MI:SS'),41.23936,-96.01304,90,26876,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:42:30', 'DD-MON-YYYY HH24:MI:SS'),41.23941,-96.01303,90,26871,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:42:35', 'DD-MON-YYYY HH24:MI:SS'),41.23946,-96.01302,90,26867,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:42:40', 'DD-MON-YYYY HH24:MI:SS'),41.23951,-96.01301,90,26862,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:42:45', 'DD-MON-YYYY HH24:MI:SS'),41.23955,-96.013,90,26857,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:42:50', 'DD-MON-YYYY HH24:MI:SS'),41.2396,-96.01298,90,26852,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:42:55', 'DD-MON-YYYY HH24:MI:SS'),41.23965,-96.01297,90,26848,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:43:00', 'DD-MON-YYYY HH24:MI:SS'),41.2397,-96.01296,90,26843,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:43:05', 'DD-MON-YYYY HH24:MI:SS'),41.23975,-96.01295,90,26838,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:43:10', 'DD-MON-YYYY HH24:MI:SS'),41.23979,-96.01294,90,26833,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:43:15', 'DD-MON-YYYY HH24:MI:SS'),41.23984,-96.01293,90,26829,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:43:20', 'DD-MON-YYYY HH24:MI:SS'),41.23989,-96.01292,90,26824,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:43:25', 'DD-MON-YYYY HH24:MI:SS'),41.23994,-96.0129,90,26819,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:43:30', 'DD-MON-YYYY HH24:MI:SS'),41.23999,-96.01289,90,26814,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:43:35', 'DD-MON-YYYY HH24:MI:SS'),41.24003,-96.01288,90,26810,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:43:40', 'DD-MON-YYYY HH24:MI:SS'),41.24008,-96.01287,90,26805,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:43:45', 'DD-MON-YYYY HH24:MI:SS'),41.24013,-96.01286,90,26800,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:43:50', 'DD-MON-YYYY HH24:MI:SS'),41.24018,-96.01285,89,26795,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:43:55', 'DD-MON-YYYY HH24:MI:SS'),41.24023,-96.01284,89,26790,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:44:00', 'DD-MON-YYYY HH24:MI:SS'),41.24028,-96.01282,89,26786,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:44:05', 'DD-MON-YYYY HH24:MI:SS'),41.24032,-96.01281,89,26781,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:44:10', 'DD-MON-YYYY HH24:MI:SS'),41.24037,-96.0128,89,26776,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:44:15', 'DD-MON-YYYY HH24:MI:SS'),41.24042,-96.01279,89,26771,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:44:20', 'DD-MON-YYYY HH24:MI:SS'),41.24047,-96.01278,89,26767,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:44:25', 'DD-MON-YYYY HH24:MI:SS'),41.24052,-96.01277,89,26762,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:44:30', 'DD-MON-YYYY HH24:MI:SS'),41.24056,-96.01276,89,26757,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:44:35', 'DD-MON-YYYY HH24:MI:SS'),41.24061,-96.01274,89,26752,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:44:40', 'DD-MON-YYYY HH24:MI:SS'),41.24066,-96.01273,89,26748,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:44:45', 'DD-MON-YYYY HH24:MI:SS'),41.24071,-96.01272,89,26743,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:44:50', 'DD-MON-YYYY HH24:MI:SS'),41.24076,-96.01271,89,26738,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:44:55', 'DD-MON-YYYY HH24:MI:SS'),41.2408,-96.0127,89,26733,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:45:00', 'DD-MON-YYYY HH24:MI:SS'),41.24085,-96.01269,89,26729,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:45:05', 'DD-MON-YYYY HH24:MI:SS'),41.2409,-96.01268,89,26724,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:45:10', 'DD-MON-YYYY HH24:MI:SS'),41.24095,-96.01266,89,26719,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:45:15', 'DD-MON-YYYY HH24:MI:SS'),41.241,-96.01265,89,26714,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:45:20', 'DD-MON-YYYY HH24:MI:SS'),41.24105,-96.01264,89,26710,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:45:25', 'DD-MON-YYYY HH24:MI:SS'),41.24109,-96.01263,89,26705,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:45:30', 'DD-MON-YYYY HH24:MI:SS'),41.24114,-96.01262,89,26700,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:45:35', 'DD-MON-YYYY HH24:MI:SS'),41.24119,-96.01261,89,26695,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:45:40', 'DD-MON-YYYY HH24:MI:SS'),41.24124,-96.0126,89,26690,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:45:45', 'DD-MON-YYYY HH24:MI:SS'),41.24129,-96.01258,89,26686,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:45:50', 'DD-MON-YYYY HH24:MI:SS'),41.24133,-96.01257,89,26681,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:45:55', 'DD-MON-YYYY HH24:MI:SS'),41.24138,-96.01256,89,26676,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:46:00', 'DD-MON-YYYY HH24:MI:SS'),41.24143,-96.01255,89,26671,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:46:05', 'DD-MON-YYYY HH24:MI:SS'),41.24148,-96.01254,89,26667,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:46:10', 'DD-MON-YYYY HH24:MI:SS'),41.24153,-96.01253,89,26662,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:46:15', 'DD-MON-YYYY HH24:MI:SS'),41.24157,-96.01252,89,26657,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:46:20', 'DD-MON-YYYY HH24:MI:SS'),41.24162,-96.0125,89,26652,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:46:25', 'DD-MON-YYYY HH24:MI:SS'),41.24167,-96.01249,89,26648,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:46:30', 'DD-MON-YYYY HH24:MI:SS'),41.24172,-96.01248,89,26643,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:46:35', 'DD-MON-YYYY HH24:MI:SS'),41.24177,-96.01247,89,26638,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:46:40', 'DD-MON-YYYY HH24:MI:SS'),41.24182,-96.01246,89,26633,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:46:45', 'DD-MON-YYYY HH24:MI:SS'),41.24186,-96.01245,89,26629,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:46:50', 'DD-MON-YYYY HH24:MI:SS'),41.24191,-96.01244,89,26624,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:46:55', 'DD-MON-YYYY HH24:MI:SS'),41.24196,-96.01242,89,26619,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:47:00', 'DD-MON-YYYY HH24:MI:SS'),41.24201,-96.01241,89,26614,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:47:05', 'DD-MON-YYYY HH24:MI:SS'),41.24206,-96.0124,89,26610,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:47:10', 'DD-MON-YYYY HH24:MI:SS'),41.2421,-96.01239,89,26605,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:47:15', 'DD-MON-YYYY HH24:MI:SS'),41.24215,-96.01238,89,26600,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:47:20', 'DD-MON-YYYY HH24:MI:SS'),41.2422,-96.01237,89,26595,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:47:25', 'DD-MON-YYYY HH24:MI:SS'),41.24225,-96.01236,89,26590,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:47:30', 'DD-MON-YYYY HH24:MI:SS'),41.2423,-96.01234,89,26586,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:47:35', 'DD-MON-YYYY HH24:MI:SS'),41.24234,-96.01233,89,26581,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:47:40', 'DD-MON-YYYY HH24:MI:SS'),41.24239,-96.01232,89,26576,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:47:45', 'DD-MON-YYYY HH24:MI:SS'),41.24244,-96.01231,89,26571,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:47:50', 'DD-MON-YYYY HH24:MI:SS'),41.24249,-96.0123,89,26567,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:47:55', 'DD-MON-YYYY HH24:MI:SS'),41.24254,-96.01229,89,26562,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:48:00', 'DD-MON-YYYY HH24:MI:SS'),41.24259,-96.01227,89,26557,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:48:05', 'DD-MON-YYYY HH24:MI:SS'),41.24263,-96.01226,89,26552,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:48:10', 'DD-MON-YYYY HH24:MI:SS'),41.24268,-96.01225,89,26548,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:48:15', 'DD-MON-YYYY HH24:MI:SS'),41.24273,-96.01224,89,26543,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:48:20', 'DD-MON-YYYY HH24:MI:SS'),41.24278,-96.01223,89,26538,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:48:25', 'DD-MON-YYYY HH24:MI:SS'),41.24283,-96.01222,89,26533,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:48:30', 'DD-MON-YYYY HH24:MI:SS'),41.24287,-96.01221,89,26529,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:48:35', 'DD-MON-YYYY HH24:MI:SS'),41.24292,-96.01219,89,26524,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:48:40', 'DD-MON-YYYY HH24:MI:SS'),41.24297,-96.01218,89,26519,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:48:45', 'DD-MON-YYYY HH24:MI:SS'),41.24302,-96.01217,89,26514,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:48:50', 'DD-MON-YYYY HH24:MI:SS'),41.24307,-96.01216,89,26510,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:48:55', 'DD-MON-YYYY HH24:MI:SS'),41.24311,-96.01215,89,26505,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:49:00', 'DD-MON-YYYY HH24:MI:SS'),41.24316,-96.01214,89,26500,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:49:05', 'DD-MON-YYYY HH24:MI:SS'),41.24321,-96.01213,89,26495,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:49:10', 'DD-MON-YYYY HH24:MI:SS'),41.24326,-96.01211,89,26490,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:49:15', 'DD-MON-YYYY HH24:MI:SS'),41.24331,-96.0121,89,26486,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:49:20', 'DD-MON-YYYY HH24:MI:SS'),41.24335,-96.01209,89,26481,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:49:25', 'DD-MON-YYYY HH24:MI:SS'),41.2434,-96.01208,89,26476,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:49:30', 'DD-MON-YYYY HH24:MI:SS'),41.24345,-96.01207,89,26471,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:49:35', 'DD-MON-YYYY HH24:MI:SS'),41.2435,-96.01206,89,26467,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:49:45', 'DD-MON-YYYY HH24:MI:SS'),41.2436,-96.01203,89,26457,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:49:50', 'DD-MON-YYYY HH24:MI:SS'),41.24364,-96.01202,89,26452,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:49:55', 'DD-MON-YYYY HH24:MI:SS'),41.24369,-96.01201,89,26448,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:50:00', 'DD-MON-YYYY HH24:MI:SS'),41.24374,-96.012,89,26443,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:50:05', 'DD-MON-YYYY HH24:MI:SS'),41.24379,-96.01199,89,26438,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:50:15', 'DD-MON-YYYY HH24:MI:SS'),41.24388,-96.01197,89,26429,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:50:20', 'DD-MON-YYYY HH24:MI:SS'),41.24393,-96.01195,89,26424,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:50:25', 'DD-MON-YYYY HH24:MI:SS'),41.24398,-96.01194,89,26419,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:50:30', 'DD-MON-YYYY HH24:MI:SS'),41.24403,-96.01193,89,26414,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:50:40', 'DD-MON-YYYY HH24:MI:SS'),41.24412,-96.01191,89,26405,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:50:45', 'DD-MON-YYYY HH24:MI:SS'),41.24417,-96.0119,89,26400,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:50:50', 'DD-MON-YYYY HH24:MI:SS'),41.24422,-96.01189,88,26395,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:50:55', 'DD-MON-YYYY HH24:MI:SS'),41.24427,-96.01187,88,26390,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:51:00', 'DD-MON-YYYY HH24:MI:SS'),41.24432,-96.01186,88,26386,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:51:10', 'DD-MON-YYYY HH24:MI:SS'),41.24441,-96.01184,88,26376,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:51:15', 'DD-MON-YYYY HH24:MI:SS'),41.24446,-96.01183,88,26371,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:51:20', 'DD-MON-YYYY HH24:MI:SS'),41.24451,-96.01182,88,26367,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:51:25', 'DD-MON-YYYY HH24:MI:SS'),41.24456,-96.01181,88,26362,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:51:35', 'DD-MON-YYYY HH24:MI:SS'),41.24465,-96.01178,88,26352,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:51:40', 'DD-MON-YYYY HH24:MI:SS'),41.2447,-96.01177,88,26348,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:51:45', 'DD-MON-YYYY HH24:MI:SS'),41.24475,-96.01176,88,26343,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:51:50', 'DD-MON-YYYY HH24:MI:SS'),41.2448,-96.01175,88,26338,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:51:55', 'DD-MON-YYYY HH24:MI:SS'),41.24485,-96.01174,88,26333,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:52:05', 'DD-MON-YYYY HH24:MI:SS'),41.24494,-96.01171,88,26324,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:52:10', 'DD-MON-YYYY HH24:MI:SS'),41.24499,-96.0117,88,26319,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:52:15', 'DD-MON-YYYY HH24:MI:SS'),41.24504,-96.01169,88,26314,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:52:20', 'DD-MON-YYYY HH24:MI:SS'),41.24509,-96.01168,88,26310,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:52:30', 'DD-MON-YYYY HH24:MI:SS'),41.24518,-96.01166,88,26300,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:52:35', 'DD-MON-YYYY HH24:MI:SS'),41.24523,-96.01165,88,26295,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:52:40', 'DD-MON-YYYY HH24:MI:SS'),41.24528,-96.01163,88,26290,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:52:45', 'DD-MON-YYYY HH24:MI:SS'),41.24533,-96.01162,88,26286,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:52:55', 'DD-MON-YYYY HH24:MI:SS'),41.24542,-96.0116,88,26276,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:53:00', 'DD-MON-YYYY HH24:MI:SS'),41.24547,-96.01159,88,26271,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:53:05', 'DD-MON-YYYY HH24:MI:SS'),41.24552,-96.01158,88,26267,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:53:10', 'DD-MON-YYYY HH24:MI:SS'),41.24557,-96.01156,88,26262,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:53:15', 'DD-MON-YYYY HH24:MI:SS'),41.24562,-96.01155,88,26257,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:53:25', 'DD-MON-YYYY HH24:MI:SS'),41.24571,-96.01153,88,26248,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:53:30', 'DD-MON-YYYY HH24:MI:SS'),41.24576,-96.01152,88,26243,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:53:35', 'DD-MON-YYYY HH24:MI:SS'),41.24581,-96.01151,88,26238,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:53:40', 'DD-MON-YYYY HH24:MI:SS'),41.24586,-96.0115,88,26233,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:53:50', 'DD-MON-YYYY HH24:MI:SS'),41.24595,-96.01147,88,26224,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:53:55', 'DD-MON-YYYY HH24:MI:SS'),41.246,-96.01146,88,26219,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:54:00', 'DD-MON-YYYY HH24:MI:SS'),41.24605,-96.01145,88,26214,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:54:05', 'DD-MON-YYYY HH24:MI:SS'),41.2461,-96.01144,88,26210,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:54:10', 'DD-MON-YYYY HH24:MI:SS'),41.24615,-96.01143,88,26205,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:54:20', 'DD-MON-YYYY HH24:MI:SS'),41.24624,-96.0114,88,26195,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:54:25', 'DD-MON-YYYY HH24:MI:SS'),41.24629,-96.01139,88,26190,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:54:30', 'DD-MON-YYYY HH24:MI:SS'),41.24634,-96.01138,88,26186,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:54:35', 'DD-MON-YYYY HH24:MI:SS'),41.24639,-96.01137,88,26181,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:54:40', 'DD-MON-YYYY HH24:MI:SS'),41.24643,-96.01136,88,26176,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:54:45', 'DD-MON-YYYY HH24:MI:SS'),41.24648,-96.01135,88,26171,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:54:50', 'DD-MON-YYYY HH24:MI:SS'),41.24653,-96.01134,88,26167,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:54:55', 'DD-MON-YYYY HH24:MI:SS'),41.24658,-96.01132,88,26162,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:55:00', 'DD-MON-YYYY HH24:MI:SS'),41.24663,-96.01131,88,26157,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:55:05', 'DD-MON-YYYY HH24:MI:SS'),41.24668,-96.0113,88,26152,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:55:10', 'DD-MON-YYYY HH24:MI:SS'),41.24672,-96.01129,88,26148,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:55:15', 'DD-MON-YYYY HH24:MI:SS'),41.24677,-96.01128,88,26143,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:55:20', 'DD-MON-YYYY HH24:MI:SS'),41.24682,-96.01127,88,26138,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:55:25', 'DD-MON-YYYY HH24:MI:SS'),41.24687,-96.01126,88,26133,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:55:30', 'DD-MON-YYYY HH24:MI:SS'),41.24692,-96.01124,88,26129,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:55:35', 'DD-MON-YYYY HH24:MI:SS'),41.24696,-96.01123,88,26124,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:55:40', 'DD-MON-YYYY HH24:MI:SS'),41.24701,-96.01122,88,26119,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:55:45', 'DD-MON-YYYY HH24:MI:SS'),41.24706,-96.01121,88,26114,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:55:50', 'DD-MON-YYYY HH24:MI:SS'),41.24711,-96.0112,88,26110,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:55:55', 'DD-MON-YYYY HH24:MI:SS'),41.24716,-96.01119,88,26105,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:56:00', 'DD-MON-YYYY HH24:MI:SS'),41.2472,-96.01118,88,26100,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:56:05', 'DD-MON-YYYY HH24:MI:SS'),41.24725,-96.01116,88,26095,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:56:10', 'DD-MON-YYYY HH24:MI:SS'),41.2473,-96.01115,88,26090,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:56:15', 'DD-MON-YYYY HH24:MI:SS'),41.24735,-96.01114,88,26086,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:56:20', 'DD-MON-YYYY HH24:MI:SS'),41.2474,-96.01113,88,26081,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:56:25', 'DD-MON-YYYY HH24:MI:SS'),41.24745,-96.01112,88,26076,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:56:30', 'DD-MON-YYYY HH24:MI:SS'),41.24749,-96.01111,88,26071,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:56:35', 'DD-MON-YYYY HH24:MI:SS'),41.24754,-96.0111,88,26067,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:56:40', 'DD-MON-YYYY HH24:MI:SS'),41.24759,-96.01108,88,26062,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:56:45', 'DD-MON-YYYY HH24:MI:SS'),41.24764,-96.01107,88,26057,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:56:50', 'DD-MON-YYYY HH24:MI:SS'),41.24769,-96.01106,88,26052,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:56:55', 'DD-MON-YYYY HH24:MI:SS'),41.24773,-96.01105,88,26048,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:57:00', 'DD-MON-YYYY HH24:MI:SS'),41.24778,-96.01104,88,26043,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:57:05', 'DD-MON-YYYY HH24:MI:SS'),41.24783,-96.01103,88,26038,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:57:10', 'DD-MON-YYYY HH24:MI:SS'),41.24788,-96.01102,88,26033,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:57:15', 'DD-MON-YYYY HH24:MI:SS'),41.24793,-96.011,88,26029,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:57:20', 'DD-MON-YYYY HH24:MI:SS'),41.24797,-96.01099,88,26024,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:57:25', 'DD-MON-YYYY HH24:MI:SS'),41.24802,-96.01098,88,26019,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:57:30', 'DD-MON-YYYY HH24:MI:SS'),41.24807,-96.01097,88,26014,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:57:35', 'DD-MON-YYYY HH24:MI:SS'),41.24812,-96.01096,88,26010,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:57:40', 'DD-MON-YYYY HH24:MI:SS'),41.24817,-96.01095,88,26005,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:57:45', 'DD-MON-YYYY HH24:MI:SS'),41.24822,-96.01094,88,26000,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:57:50', 'DD-MON-YYYY HH24:MI:SS'),41.24826,-96.01092,87,25995,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:57:55', 'DD-MON-YYYY HH24:MI:SS'),41.24831,-96.01091,87,25990,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:58:00', 'DD-MON-YYYY HH24:MI:SS'),41.24836,-96.0109,87,25986,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:58:05', 'DD-MON-YYYY HH24:MI:SS'),41.24841,-96.01089,87,25981,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:58:10', 'DD-MON-YYYY HH24:MI:SS'),41.24846,-96.01088,87,25976,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:58:15', 'DD-MON-YYYY HH24:MI:SS'),41.2485,-96.01087,87,25971,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:58:20', 'DD-MON-YYYY HH24:MI:SS'),41.24855,-96.01085,87,25967,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:58:25', 'DD-MON-YYYY HH24:MI:SS'),41.2486,-96.01084,87,25962,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:58:30', 'DD-MON-YYYY HH24:MI:SS'),41.24865,-96.01083,87,25957,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:58:35', 'DD-MON-YYYY HH24:MI:SS'),41.2487,-96.01082,87,25952,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:58:40', 'DD-MON-YYYY HH24:MI:SS'),41.24874,-96.01081,87,25948,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:58:45', 'DD-MON-YYYY HH24:MI:SS'),41.24879,-96.0108,87,25943,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:58:50', 'DD-MON-YYYY HH24:MI:SS'),41.24884,-96.01079,87,25938,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:58:55', 'DD-MON-YYYY HH24:MI:SS'),41.24889,-96.01077,87,25933,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:59:00', 'DD-MON-YYYY HH24:MI:SS'),41.24894,-96.01076,87,25929,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:59:05', 'DD-MON-YYYY HH24:MI:SS'),41.24898,-96.01075,87,25924,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:59:10', 'DD-MON-YYYY HH24:MI:SS'),41.24903,-96.01074,87,25919,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:59:15', 'DD-MON-YYYY HH24:MI:SS'),41.24908,-96.01073,87,25914,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:59:20', 'DD-MON-YYYY HH24:MI:SS'),41.24913,-96.01072,87,25910,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:59:25', 'DD-MON-YYYY HH24:MI:SS'),41.24918,-96.01071,87,25905,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:59:30', 'DD-MON-YYYY HH24:MI:SS'),41.24923,-96.01069,87,25900,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:59:35', 'DD-MON-YYYY HH24:MI:SS'),41.24927,-96.01068,87,25895,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:59:40', 'DD-MON-YYYY HH24:MI:SS'),41.24932,-96.01067,87,25890,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:59:45', 'DD-MON-YYYY HH24:MI:SS'),41.24937,-96.01066,87,25886,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:59:50', 'DD-MON-YYYY HH24:MI:SS'),41.24942,-96.01065,87,25881,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 11:59:55', 'DD-MON-YYYY HH24:MI:SS'),41.24947,-96.01064,87,25876,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 12:00:00', 'DD-MON-YYYY HH24:MI:SS'),41.24951,-96.01063,87,25871,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 12:00:05', 'DD-MON-YYYY HH24:MI:SS'),41.24956,-96.01061,87,25867,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 12:00:10', 'DD-MON-YYYY HH24:MI:SS'),41.24961,-96.0106,87,25862,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 12:00:15', 'DD-MON-YYYY HH24:MI:SS'),41.24966,-96.01059,87,25857,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 12:00:20', 'DD-MON-YYYY HH24:MI:SS'),41.24971,-96.01058,87,25852,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 12:00:25', 'DD-MON-YYYY HH24:MI:SS'),41.24975,-96.01057,87,25848,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 12:00:30', 'DD-MON-YYYY HH24:MI:SS'),41.2498,-96.01056,87,25843,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 12:00:35', 'DD-MON-YYYY HH24:MI:SS'),41.24985,-96.01055,87,25838,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 12:00:40', 'DD-MON-YYYY HH24:MI:SS'),41.2499,-96.01053,87,25833,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 12:00:45', 'DD-MON-YYYY HH24:MI:SS'),41.24995,-96.01052,87,25829,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 12:00:50', 'DD-MON-YYYY HH24:MI:SS'),41.25,-96.01051,87,25824,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 12:00:55', 'DD-MON-YYYY HH24:MI:SS'),41.25004,-96.0105,87,25819,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 12:01:00', 'DD-MON-YYYY HH24:MI:SS'),41.25009,-96.01049,87,25814,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 12:01:05', 'DD-MON-YYYY HH24:MI:SS'),41.25014,-96.01048,87,25810,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 12:01:10', 'DD-MON-YYYY HH24:MI:SS'),41.25019,-96.01047,87,25805,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 12:01:15', 'DD-MON-YYYY HH24:MI:SS'),41.25024,-96.01045,87,25800,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 12:01:20', 'DD-MON-YYYY HH24:MI:SS'),41.25028,-96.01044,87,25795,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 12:01:25', 'DD-MON-YYYY HH24:MI:SS'),41.25033,-96.01043,87,25790,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 12:01:30', 'DD-MON-YYYY HH24:MI:SS'),41.25038,-96.01042,87,25786,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 12:01:35', 'DD-MON-YYYY HH24:MI:SS'),41.25043,-96.01041,87,25781,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 12:01:40', 'DD-MON-YYYY HH24:MI:SS'),41.25048,-96.0104,87,25776,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 12:01:45', 'DD-MON-YYYY HH24:MI:SS'),41.25052,-96.01039,87,25771,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 12:01:50', 'DD-MON-YYYY HH24:MI:SS'),41.25057,-96.01037,87,25767,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 12:01:55', 'DD-MON-YYYY HH24:MI:SS'),41.25062,-96.01036,87,25762,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 12:02:00', 'DD-MON-YYYY HH24:MI:SS'),41.25067,-96.01035,87,25757,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 12:02:05', 'DD-MON-YYYY HH24:MI:SS'),41.25072,-96.01034,87,25752,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 12:02:10', 'DD-MON-YYYY HH24:MI:SS'),41.25077,-96.01033,87,25748,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 12:02:15', 'DD-MON-YYYY HH24:MI:SS'),41.25081,-96.01032,87,25743,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 12:02:20', 'DD-MON-YYYY HH24:MI:SS'),41.25086,-96.01031,87,25738,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 12:02:25', 'DD-MON-YYYY HH24:MI:SS'),41.25091,-96.01029,87,25733,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 12:02:30', 'DD-MON-YYYY HH24:MI:SS'),41.25096,-96.01028,87,25729,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 12:02:35', 'DD-MON-YYYY HH24:MI:SS'),41.25101,-96.01027,87,25724,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 12:02:40', 'DD-MON-YYYY HH24:MI:SS'),41.25105,-96.01026,87,25719,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 12:02:45', 'DD-MON-YYYY HH24:MI:SS'),41.2511,-96.01025,87,25714,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 12:02:50', 'DD-MON-YYYY HH24:MI:SS'),41.25115,-96.01024,87,25710,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 12:02:55', 'DD-MON-YYYY HH24:MI:SS'),41.2512,-96.01022,87,25705,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 12:03:00', 'DD-MON-YYYY HH24:MI:SS'),41.25125,-96.01021,87,25700,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 12:03:05', 'DD-MON-YYYY HH24:MI:SS'),41.25129,-96.0102,87,25695,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 12:03:10', 'DD-MON-YYYY HH24:MI:SS'),41.25134,-96.01019,87,25690,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 12:03:15', 'DD-MON-YYYY HH24:MI:SS'),41.25139,-96.01018,87,25686,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 12:03:20', 'DD-MON-YYYY HH24:MI:SS'),41.25144,-96.01017,87,25681,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 12:03:25', 'DD-MON-YYYY HH24:MI:SS'),41.25149,-96.01016,87,25676,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 12:03:30', 'DD-MON-YYYY HH24:MI:SS'),41.25154,-96.01014,87,25671,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 12:03:35', 'DD-MON-YYYY HH24:MI:SS'),41.25158,-96.01013,87,25667,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 12:03:40', 'DD-MON-YYYY HH24:MI:SS'),41.25163,-96.01012,87,25662,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 12:03:45', 'DD-MON-YYYY HH24:MI:SS'),41.25168,-96.01011,87,25657,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 12:03:50', 'DD-MON-YYYY HH24:MI:SS'),41.25173,-96.0101,87,25652,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 12:03:55', 'DD-MON-YYYY HH24:MI:SS'),41.25178,-96.01009,87,25648,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 12:04:00', 'DD-MON-YYYY HH24:MI:SS'),41.25182,-96.01008,87,25643,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 12:04:05', 'DD-MON-YYYY HH24:MI:SS'),41.25187,-96.01006,87,25638,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 12:04:10', 'DD-MON-YYYY HH24:MI:SS'),41.25192,-96.01005,87,25633,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 12:04:20', 'DD-MON-YYYY HH24:MI:SS'),41.25202,-96.01003,87,25624,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 12:04:25', 'DD-MON-YYYY HH24:MI:SS'),41.25206,-96.01002,87,25619,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 12:04:30', 'DD-MON-YYYY HH24:MI:SS'),41.25211,-96.01001,87,25614,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 12:04:35', 'DD-MON-YYYY HH24:MI:SS'),41.25216,-96.01,87,25610,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 12:04:45', 'DD-MON-YYYY HH24:MI:SS'),41.25226,-96.00997,87,25600,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 12:04:50', 'DD-MON-YYYY HH24:MI:SS'),41.25231,-96.00996,86,25595,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 12:04:55', 'DD-MON-YYYY HH24:MI:SS'),41.25235,-96.00995,86,25590,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 12:05:00', 'DD-MON-YYYY HH24:MI:SS'),41.2524,-96.00994,86,25586,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 12:05:05', 'DD-MON-YYYY HH24:MI:SS'),41.25245,-96.00993,86,25581,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 12:05:15', 'DD-MON-YYYY HH24:MI:SS'),41.25255,-96.0099,86,25571,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 12:05:20', 'DD-MON-YYYY HH24:MI:SS'),41.25259,-96.00989,86,25567,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 12:05:25', 'DD-MON-YYYY HH24:MI:SS'),41.25264,-96.00988,86,25562,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 12:05:30', 'DD-MON-YYYY HH24:MI:SS'),41.25269,-96.00987,86,25557,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 12:05:40', 'DD-MON-YYYY HH24:MI:SS'),41.25279,-96.00985,86,25548,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 12:05:45', 'DD-MON-YYYY HH24:MI:SS'),41.25283,-96.00984,86,25543,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 12:05:50', 'DD-MON-YYYY HH24:MI:SS'),41.25288,-96.00982,86,25538,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 12:05:55', 'DD-MON-YYYY HH24:MI:SS'),41.25293,-96.00981,86,25533,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 12:06:00', 'DD-MON-YYYY HH24:MI:SS'),41.25298,-96.0098,86,25529,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 12:06:10', 'DD-MON-YYYY HH24:MI:SS'),41.25308,-96.00978,86,25519,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 12:06:15', 'DD-MON-YYYY HH24:MI:SS'),41.25312,-96.00977,86,25514,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 12:06:20', 'DD-MON-YYYY HH24:MI:SS'),41.25317,-96.00976,86,25510,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 12:06:25', 'DD-MON-YYYY HH24:MI:SS'),41.25322,-96.00974,86,25505,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 12:06:35', 'DD-MON-YYYY HH24:MI:SS'),41.25332,-96.00972,86,25495,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 12:06:40', 'DD-MON-YYYY HH24:MI:SS'),41.25336,-96.00971,86,25490,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 12:06:45', 'DD-MON-YYYY HH24:MI:SS'),41.25341,-96.0097,86,25486,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 12:06:50', 'DD-MON-YYYY HH24:MI:SS'),41.25346,-96.00969,86,25481,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 12:07:00', 'DD-MON-YYYY HH24:MI:SS'),41.25356,-96.00966,86,25471,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 12:07:05', 'DD-MON-YYYY HH24:MI:SS'),41.2536,-96.00965,86,25467,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 12:07:10', 'DD-MON-YYYY HH24:MI:SS'),41.25365,-96.00964,86,25462,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 12:07:15', 'DD-MON-YYYY HH24:MI:SS'),41.2537,-96.00963,86,25457,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 12:07:20', 'DD-MON-YYYY HH24:MI:SS'),41.25375,-96.00962,86,25452,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 12:07:30', 'DD-MON-YYYY HH24:MI:SS'),41.25384,-96.0096,86,25443,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 12:07:35', 'DD-MON-YYYY HH24:MI:SS'),41.25389,-96.00958,86,25438,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 12:07:40', 'DD-MON-YYYY HH24:MI:SS'),41.25394,-96.00957,86,25433,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 12:07:45', 'DD-MON-YYYY HH24:MI:SS'),41.25399,-96.00956,86,25429,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 12:07:55', 'DD-MON-YYYY HH24:MI:SS'),41.25409,-96.00954,86,25419,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 12:08:00', 'DD-MON-YYYY HH24:MI:SS'),41.25413,-96.00953,86,25414,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 12:08:05', 'DD-MON-YYYY HH24:MI:SS'),41.25418,-96.00951,86,25410,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 12:08:10', 'DD-MON-YYYY HH24:MI:SS'),41.25423,-96.0095,86,25405,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 12:08:20', 'DD-MON-YYYY HH24:MI:SS'),41.25433,-96.00948,86,25395,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 12:08:25', 'DD-MON-YYYY HH24:MI:SS'),41.25437,-96.00947,86,25390,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 12:08:30', 'DD-MON-YYYY HH24:MI:SS'),41.25442,-96.00946,86,25386,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 12:08:35', 'DD-MON-YYYY HH24:MI:SS'),41.25447,-96.00945,86,25381,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 12:08:40', 'DD-MON-YYYY HH24:MI:SS'),41.25452,-96.00943,86,25376,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 12:08:50', 'DD-MON-YYYY HH24:MI:SS'),41.25461,-96.00941,86,25367,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 12:08:55', 'DD-MON-YYYY HH24:MI:SS'),41.25466,-96.0094,86,25362,'in use');
Insert into BC_BICYCLE_STATUS (BICYCLE_ID,BICYCLE_STATUS_TIMESTAMP,BICYCLE_STATUS_LATITUDE,BICYCLE_STATUS_LONGITUDE,BICYCLE_STATUS_POWER,BICYCLE_STATUS_RANGE,BICYCLE_STATUS) values (1008,TO_DATE('19-JAN-2022 12:09:00', 'DD-MON-YYYY HH24:MI:SS'),41.25471,-96.00939,86,25357,'in use');

--------------------------------------------------------
--  DDL for Index BICYCLE_STATUS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "BICYCLE_STATUS_PK" ON "BC_BICYCLE_STATUS" ("BICYCLE_STATUS_TIMESTAMP", "BICYCLE_ID") 
  ;
--------------------------------------------------------
--  Constraints for Table BC_BICYCLE_STATUS
--------------------------------------------------------

  ALTER TABLE "BC_BICYCLE_STATUS" ADD CONSTRAINT "BICYCLE_STATUS_PK" PRIMARY KEY ("BICYCLE_STATUS_TIMESTAMP", "BICYCLE_ID")
  USING INDEX  ENABLE;
  ALTER TABLE "BC_BICYCLE_STATUS" MODIFY ("BICYCLE_ID" NOT NULL ENABLE);
  ALTER TABLE "BC_BICYCLE_STATUS" MODIFY ("BICYCLE_STATUS_TIMESTAMP" NOT NULL ENABLE);
  ALTER TABLE "BC_BICYCLE_STATUS" MODIFY ("BICYCLE_STATUS" NOT NULL ENABLE);
  ALTER TABLE "BC_BICYCLE_STATUS" ADD CHECK ( bicycle_status_latitude BETWEEN - 90 AND 90 ) ENABLE;
  ALTER TABLE "BC_BICYCLE_STATUS" ADD CHECK ( bicycle_status_longitude BETWEEN - 180 AND 180 ) ENABLE;
  ALTER TABLE "BC_BICYCLE_STATUS" ADD CHECK ( bicycle_status IN ( 'available', 'in use', 'not available' ) ) ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table BC_BICYCLE_STATUS
--------------------------------------------------------

  ALTER TABLE "BC_BICYCLE_STATUS" ADD CONSTRAINT "BICYCLE_STATUS_BICYCLE_FK" FOREIGN KEY ("BICYCLE_ID")
	  REFERENCES "BC_BICYCLE" ("BICYCLE_ID") ENABLE;

--------------------------------------------------------
--  DDL for Table BC_TRIP
--------------------------------------------------------

  CREATE TABLE "BC_TRIP" 
   (	"TRIP_ID" NUMBER(*,0), 
	"BICYCLE_ID" NUMBER(*,0), 
	"TRIP_START_TIME" DATE, 
	"TRIP_END_TIME" DATE, 
	"TRIP_DURATION" NUMBER(*,0), 
	"TRIP_DISTANCE" NUMBER(7,1), 
	"TRIP_COST" NUMBER, 
	"START_STATION_ID" VARCHAR2(25), 
	"END_STATION_ID" VARCHAR2(25), 
	"MEMBERSHIP_ID" NUMBER(*,0)
   ) ;

   COMMENT ON COLUMN "BC_TRIP"."TRIP_DURATION" IS 'The TRIP DURATION is the difference, in minutes, between the end time and the start time.';
   COMMENT ON COLUMN "BC_TRIP"."TRIP_DISTANCE" IS 'The TRIP DISTANCE is the distance in meters of the trip.';
REM INSERTING into BC_TRIP
SET DEFINE OFF;
Insert into BC_TRIP (TRIP_ID,BICYCLE_ID,TRIP_START_TIME,TRIP_END_TIME,TRIP_DURATION,TRIP_DISTANCE,TRIP_COST,START_STATION_ID,END_STATION_ID,MEMBERSHIP_ID) values (100,1001,TO_DATE('19-JAN-2022 09:05:32', 'DD-MON-YYYY HH24:MI:SS'),TO_DATE('19-JAN-2022 09:33:56', 'DD-MON-YYYY HH24:MI:SS'),28,3500,1.5,'bcycle_heartland_1918','bcycle_heartland_1917',104);
Insert into BC_TRIP (TRIP_ID,BICYCLE_ID,TRIP_START_TIME,TRIP_END_TIME,TRIP_DURATION,TRIP_DISTANCE,TRIP_COST,START_STATION_ID,END_STATION_ID,MEMBERSHIP_ID) values (99,1001,TO_DATE('19-JAN-2022 07:45:33', 'DD-MON-YYYY HH24:MI:SS'),TO_DATE('19-JAN-2022 08:07:56', 'DD-MON-YYYY HH24:MI:SS'),22,3500,1.5,'bcycle_heartland_1917','bcycle_heartland_1918',104);
Insert into BC_TRIP (TRIP_ID,BICYCLE_ID,TRIP_START_TIME,TRIP_END_TIME,TRIP_DURATION,TRIP_DISTANCE,TRIP_COST,START_STATION_ID,END_STATION_ID,MEMBERSHIP_ID) values (102,1000,TO_DATE('20-JAN-2022 06:40:00', 'DD-MON-YYYY HH24:MI:SS'),TO_DATE('20-JAN-2022 07:10:00', 'DD-MON-YYYY HH24:MI:SS'),30,2500,1.5,'bcycle_heartland_1916','bcycle_heartland_1917',105);
Insert into BC_TRIP (TRIP_ID,BICYCLE_ID,TRIP_START_TIME,TRIP_END_TIME,TRIP_DURATION,TRIP_DISTANCE,TRIP_COST,START_STATION_ID,END_STATION_ID,MEMBERSHIP_ID) values (101,1000,TO_DATE('19-JAN-2022 19:30:00', 'DD-MON-YYYY HH24:MI:SS'),TO_DATE('19-JAN-2022 20:10:00', 'DD-MON-YYYY HH24:MI:SS'),40,3000,2,'bcycle_heartland_1918','bcycle_heartland_1916',100);
Insert into BC_TRIP (TRIP_ID,BICYCLE_ID,TRIP_START_TIME,TRIP_END_TIME,TRIP_DURATION,TRIP_DISTANCE,TRIP_COST,START_STATION_ID,END_STATION_ID,MEMBERSHIP_ID) values (103,1008,TO_DATE('19-JAN-2022 11:40:00', 'DD-MON-YYYY HH24:MI:SS'),TO_DATE('19-JAN-2022 12:15:00', 'DD-MON-YYYY HH24:MI:SS'),35,2000,2,'bcycle_heartland_1918','bcycle_heartland_1916',106);
--------------------------------------------------------
--  DDL for Index TRIP_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "TRIP_PK" ON "BC_TRIP" ("TRIP_ID") 
  ;
--------------------------------------------------------
--  Constraints for Table BC_TRIP
--------------------------------------------------------

  ALTER TABLE "BC_TRIP" MODIFY ("TRIP_ID" NOT NULL ENABLE);
  ALTER TABLE "BC_TRIP" MODIFY ("BICYCLE_ID" NOT NULL ENABLE);
  ALTER TABLE "BC_TRIP" MODIFY ("TRIP_START_TIME" NOT NULL ENABLE);
  ALTER TABLE "BC_TRIP" MODIFY ("START_STATION_ID" NOT NULL ENABLE);
  ALTER TABLE "BC_TRIP" MODIFY ("MEMBERSHIP_ID" NOT NULL ENABLE);
  ALTER TABLE "BC_TRIP" ADD CONSTRAINT "TRIP_PK" PRIMARY KEY ("TRIP_ID")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table BC_TRIP
--------------------------------------------------------

  ALTER TABLE "BC_TRIP" ADD CONSTRAINT "TRIP_BICYCLE_FK" FOREIGN KEY ("BICYCLE_ID")
	  REFERENCES "BC_BICYCLE" ("BICYCLE_ID") ENABLE;
  ALTER TABLE "BC_TRIP" ADD CONSTRAINT "TRIP_END_STATION_FK" FOREIGN KEY ("END_STATION_ID")
	  REFERENCES "BC_STATION" ("STATION_ID") ENABLE;
  ALTER TABLE "BC_TRIP" ADD CONSTRAINT "TRIP_MEMBERSHIP_FK" FOREIGN KEY ("MEMBERSHIP_ID")
	  REFERENCES "BC_MEMBERSHIP" ("MEMBERSHIP_ID") ENABLE;
  ALTER TABLE "BC_TRIP" ADD CONSTRAINT "TRIP_START_STATION_FK" FOREIGN KEY ("START_STATION_ID")
	  REFERENCES "BC_STATION" ("STATION_ID") ENABLE;

COMMIT;