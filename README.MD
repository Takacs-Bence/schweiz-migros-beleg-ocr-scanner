# Migros Supermarkt Beleg OCR Scanner

### Import photos of your Migros supermarket receipts to automate personal finance tracking

Get a photo of your receipt, and export it to tiff format.

![Receipt](IMG_4231.png)

Have maven, docker, java 8 installed. 

Run the script to build and run the docker image.

`./build.sh`

To see the result print the logs of the container

`docker logs my-ocr-scanner`

Result:

```Warning: Invalid resolution 0 dpi. Using 70 instead.
| ) A
3 MIGROS
Genossenschaft Migros Zürich
8 MM Glattpark
| Tel. 058 561 00 00
) EA
s Unsere Oeffnungszeiten
) Mo-Sa: 08:00-20:00
; Artikelbezeichnung Menge Preis Gespart ‚Total %
; Nestle Nesquik Cereal | 5,00 5.0027 ; }
io Vallniich 3.9%Fett | 2,00 2008 ZGEE
MBud Cottage Cheese ] 4,10 401 VE
La Pizza Capricciosa 1 800° 20002 Ss
; Pizza Panoduro Mozz 1 6,60 6.60. 1
Schaggibrötli 4 1.60 6.40. 1 , )
SE Rustica Gipfel 3 0.95 2200720 ;
| ES ; Karotten 1 2.00 105 4 . Z
; EEE apfel Bragburn 1 300 . 5 4,00 1
Total CHR. 41.30 7
Sn : Mastercard Y 41,30 ;
; Total in EUR 46.40
E Purchase ) 5 =
R DEBIT MASTERCARD Cuntattless”
A . XXXXXYNKANKKOO2U RR .
i 12.02.2024 I ; )
#31531644*x00187530/276895/0000 .
/ 0000002# We S
Tatal-EFT CHF; 41.36 S
$ MUST. -Nunner CHE-105.970.604 MUST
Gr Satz I9ta1 3 MUST }
. 1 2,50 % 41,30 1.05
ANZANL VEREINSBONS FÜR DIESEN EINKAUF: 2
Besten Dank für Ihren Einkauf!
|
Wu UNE |
; | SA
SV rs \
) | x} .
Tı N \
Fin 010101501542601202240106000004130
\liale Bedien. Kr Bon Datum 7a
0150154 0537999 26 VA CE1T
93 60 0106 12.02.2024 13:40:09
A```


You can see it was read, but not very accurately.