# Stocks

Quantnet provides data for companies listed on the NYSE and NASDAQ. The data can be divided into three groups:
- General information about tickers
- Market data
- Fundamental data

## Available instuments
Let's download financial data on stocks.
<p class = "tip"> We recommend using data from 2015. Market share prices available since 2000 </p>

```python
import qnt.data    as qndata
import datetime    as dt
data = qndata.load_data(tail = dt.timedelta(days = 4*365),
                        forward_order = True)
```

```python
print(data.asset)
```
> 1002 financial instruments are available:

```python
<xarray.DataArray 'asset' (asset: 953)>
array(['AMEX:APT', 'AMEX:IBIO', 'AMEX:IGC', ..., 'NYSE:ZBH', 'NYSE:ZEN',
       'NYSE:ZTS'], dtype='<U12')
Coordinates:
  * asset    (asset) <U12 'AMEX:APT' 'AMEX:IBIO' ... 'NYSE:ZEN' 'NYSE:ZTS'
```

```python
data.asset.to_pandas().to_list()
```
> List of financial instruments
```python
['AMEX:APT',
 'AMEX:IBIO',
 'AMEX:IGC',
 'AMEX:LNG',
 'NASDAQ:AAL',
 'NASDAQ:AAOI',
 'NASDAQ:AAPL',
 'NASDAQ:AAXN',
 'NASDAQ:ABMD',
 'NASDAQ:ABUS',
 'NASDAQ:ACAD',
 'NASDAQ:ACHC',
 'NASDAQ:ACIA',
 'NASDAQ:ADBE',
 'NASDAQ:ADI',
 'NASDAQ:ADP',
 'NASDAQ:ADSK',
 'NASDAQ:AERI',
 'NASDAQ:AIMC',
 'NASDAQ:AKAM',
 'NASDAQ:AKRX',
 'NASDAQ:ALDR',
 'NASDAQ:ALGN',
 'NASDAQ:ALKS',
 'NASDAQ:ALLK',
 'NASDAQ:ALNY',
 'NASDAQ:ALT',
 'NASDAQ:ALXN',
 'NASDAQ:AMAT',
 'NASDAQ:AMBA',
 'NASDAQ:AMD',
 'NASDAQ:AMGN',
 'NASDAQ:AMTD',
 'NASDAQ:AMZN',
 'NASDAQ:ANSS',
 'NASDAQ:APA',
 'NASDAQ:APHA',
 'NASDAQ:APLS',
 'NASDAQ:ARQL',
 'NASDAQ:ARWR',
 'NASDAQ:ATVI',
 'NASDAQ:AUPH',
 'NASDAQ:AVGO',
 'NASDAQ:AXSM',
 'NASDAQ:AYRO',
 'NASDAQ:BBBY',
 'NASDAQ:BHF',
 'NASDAQ:BIIB',
 'NASDAQ:BKNG',
 'NASDAQ:BLUE',
 'NASDAQ:BMRN',
 'NASDAQ:BOLD',
 'NASDAQ:BOXL',
 'NASDAQ:BPTH',
 'NASDAQ:BYND',
 'NASDAQ:CACC',
 'NASDAQ:CAR',
 'NASDAQ:CASY',
 'NASDAQ:CBOE',
 'NASDAQ:CDNS',
 'NASDAQ:CDW',
 'NASDAQ:CELG',
 'NASDAQ:CERN',
 'NASDAQ:CGNX',
 'NASDAQ:CHKP',
 'NASDAQ:CHNG',
 'NASDAQ:CHRW',
 'NASDAQ:CHTR',
 'NASDAQ:CINF',
 'NASDAQ:CLVS',
 'NASDAQ:CMCSA',
 'NASDAQ:CME',
 'NASDAQ:CNDT',
 'NASDAQ:CODX',
 'NASDAQ:COHR',
 'NASDAQ:COMM',
 'NASDAQ:COST',
 'NASDAQ:COUP',
 'NASDAQ:CPRT',
 'NASDAQ:CREE',
 'NASDAQ:CRON',
 'NASDAQ:CRSP',
 'NASDAQ:CRUS',
 'NASDAQ:CRWD',
 'NASDAQ:CSCO',
 'NASDAQ:CSGP',
 'NASDAQ:CSX',
 'NASDAQ:CTAS',
 'NASDAQ:CTSH',
 'NASDAQ:CTXS',
 'NASDAQ:CVET',
 'NASDAQ:CY',
 'NASDAQ:CYBR',
 'NASDAQ:CZR',
 'NASDAQ:CZR~1',
 'NASDAQ:DBX',
 'NASDAQ:DDOG',
 'NASDAQ:DISCA',
 'NASDAQ:DISCK',
 'NASDAQ:DISH',
 'NASDAQ:DLTR',
 'NASDAQ:DNKN',
 'NASDAQ:DOCU',
 'NASDAQ:DRYS',
 'NASDAQ:DXCM',
 'NASDAQ:EA',
 'NASDAQ:EBAY',
 'NASDAQ:EEFT',
 'NASDAQ:EHTH',
 'NASDAQ:ENDP',
 'NASDAQ:ENPH',
 'NASDAQ:ENTG',
 'NASDAQ:EQ',
 'NASDAQ:ESPR',
 'NASDAQ:ETFC',
 'NASDAQ:ETSY',
 'NASDAQ:EVBG',
 'NASDAQ:EXAS',
 'NASDAQ:EXC',
 'NASDAQ:EXEL',
 'NASDAQ:EXPD',
 'NASDAQ:EXPE',
 'NASDAQ:FANG',
 'NASDAQ:FAST',
 'NASDAQ:FB',
 'NASDAQ:FEYE',
 'NASDAQ:FFIV',
 'NASDAQ:FISV',
 'NASDAQ:FITB',
 'NASDAQ:FIVE',
 'NASDAQ:FIVN',
 'NASDAQ:FLEX',
 'NASDAQ:FLIR',
 'NASDAQ:FNSR',
 'NASDAQ:FOXA',
 'NASDAQ:FSCT',
 'NASDAQ:FSLR',
 'NASDAQ:FTNT',
 'NASDAQ:FTR',
 'NASDAQ:FTSV',
 'NASDAQ:GBT',
 'NASDAQ:GH',
 'NASDAQ:GILD',
 'NASDAQ:GNUS',
 'NASDAQ:GOOG',
 'NASDAQ:GOOGL',
 'NASDAQ:GPOR',
 'NASDAQ:GPRO',
 'NASDAQ:GRMN',
 'NASDAQ:GT',
 'NASDAQ:HAIN',
 'NASDAQ:HAS',
 'NASDAQ:HBAN',
 'NASDAQ:HDS',
 'NASDAQ:HOLX',
 'NASDAQ:HQY',
 'NASDAQ:HSIC',
 'NASDAQ:HTBX',
 'NASDAQ:HZNP',
 'NASDAQ:IAC',
 'NASDAQ:ICPT',
 'NASDAQ:IDEX',
 'NASDAQ:IDXX',
 'NASDAQ:IIVI',
 'NASDAQ:ILMN',
 'NASDAQ:IMMU',
 'NASDAQ:INCY',
 'NASDAQ:INGN',
 'NASDAQ:INO',
 'NASDAQ:INSM',
 'NASDAQ:INTC',
 'NASDAQ:INTU',
 'NASDAQ:IONS',
 'NASDAQ:IPGP',
 'NASDAQ:IRBT',
 'NASDAQ:ISRG',
 'NASDAQ:ITCI',
 'NASDAQ:JAZZ',
 'NASDAQ:JBHT',
 'NASDAQ:JBLU',
 'NASDAQ:JKHY',
 'NASDAQ:KHC',
 'NASDAQ:KLAC',
 'NASDAQ:KRTX',
 'NASDAQ:LBRDK',
 'NASDAQ:LBTYA',
 'NASDAQ:LBTYK',
 'NASDAQ:LGND',
 'NASDAQ:LITE',
 'NASDAQ:LKQ',
 'NASDAQ:LNT',
 'NASDAQ:LOGM',
 'NASDAQ:LOPE',
 'NASDAQ:LRCX',
 'NASDAQ:LULU',
 'NASDAQ:LUMO',
 'NASDAQ:LVGO',
 'NASDAQ:LYFT',
 'NASDAQ:MARK',
 'NASDAQ:MASI',
 'NASDAQ:MAT',
 'NASDAQ:MCHP',
 'NASDAQ:MDB',
 'NASDAQ:MDCO',
 'NASDAQ:MDGL',
 'NASDAQ:MDLZ',
 'NASDAQ:MDSO',
 'NASDAQ:MELI',
 'NASDAQ:MGNX',
 'NASDAQ:MIDD',
 'NASDAQ:MIST',
 'NASDAQ:MKSI',
 'NASDAQ:MKTX',
 'NASDAQ:MLNX',
 'NASDAQ:MNKD',
 'NASDAQ:MNST',
 'NASDAQ:MRNA',
 'NASDAQ:MRTX',
 'NASDAQ:MRVL',
 'NASDAQ:MSFT',
 'NASDAQ:MTCH',
 'NASDAQ:MU',
 'NASDAQ:MXIM',
 'NASDAQ:MYL',
 'NASDAQ:MYOK',
 'NASDAQ:NBEV',
 'NASDAQ:NBIX',
 'NASDAQ:NBL',
 'NASDAQ:NDAQ',
 'NASDAQ:NFLX',
 'NASDAQ:NGHC',
 'NASDAQ:NKLA',
 'NASDAQ:NKTR',
 'NASDAQ:NLOK',
 'NASDAQ:NTAP',
 'NASDAQ:NTNX',
 'NASDAQ:NTRS',
 'NASDAQ:NUVA',
 'NASDAQ:NVAX',
 'NASDAQ:NVDA',
 'NASDAQ:NWL',
 'NASDAQ:NXPI',
 'NASDAQ:OAS',
 'NASDAQ:ODFL',
 'NASDAQ:OKTA',
 'NASDAQ:OLED',
 'NASDAQ:OLLI',
 'NASDAQ:ON',
 'NASDAQ:ONCE',
 'NASDAQ:OPK',
 'NASDAQ:ORLY',
 'NASDAQ:OSTK',
 'NASDAQ:OZK',
 'NASDAQ:PAAS',
 'NASDAQ:PAYX',
 'NASDAQ:PBCT',
 'NASDAQ:PBYI',
 'NASDAQ:PCAR',
 'NASDAQ:PCTY',
 'NASDAQ:PDCE',
 'NASDAQ:PDCO',
 'NASDAQ:PENN',
 'NASDAQ:PEP',
 'NASDAQ:PFG',
 'NASDAQ:PFPT',
 'NASDAQ:PLAY',
 'NASDAQ:PLCE',
 'NASDAQ:PLUG',
 'NASDAQ:PODD',
 'NASDAQ:PTC',
 'NASDAQ:PTEN',
 'NASDAQ:PTLA',
 'NASDAQ:PTON',
 'NASDAQ:PYPL',
 'NASDAQ:PZZA',
 'NASDAQ:QCOM',
 'NASDAQ:QDEL',
 'NASDAQ:QRVO',
 'NASDAQ:RARX',
 'NASDAQ:REGN',
 'NASDAQ:RETA',
 'NASDAQ:RGLD',
 'NASDAQ:RIOT',
 'NASDAQ:ROKU',
 'NASDAQ:ROST',
 'NASDAQ:RUN',
 'NASDAQ:SABR',
 'NASDAQ:SAFM',
 'NASDAQ:SAGE',
 'NASDAQ:SBGI',
 'NASDAQ:SBNY',
 'NASDAQ:SBUX',
 'NASDAQ:SDC',
 'NASDAQ:SEDG',
 'NASDAQ:SFIX',
 'NASDAQ:SFM',
 'NASDAQ:SGEN',
 'NASDAQ:SINA',
 'NASDAQ:SIRI',
 'NASDAQ:SIVB',
 'NASDAQ:SNPS',
 'NASDAQ:SOLO',
 'NASDAQ:SPLK',
 'NASDAQ:SRCL',
 'NASDAQ:SRNE',
 'NASDAQ:SRPT',
 'NASDAQ:SSNC',
 'NASDAQ:STLD',
 'NASDAQ:STMP',
 'NASDAQ:STNE',
 'NASDAQ:STX',
 'NASDAQ:SWKS',
 'NASDAQ:TEAM',
 'NASDAQ:TECD',
 'NASDAQ:TER',
 'NASDAQ:TLRY',
 'NASDAQ:TMUS',
 'NASDAQ:TNDM',
 'NASDAQ:TREE',
 'NASDAQ:TRIP',
 'NASDAQ:TROW',
 'NASDAQ:TSCO',
 'NASDAQ:TSG',
 'NASDAQ:TSLA',
 'NASDAQ:TTD',
 'NASDAQ:TW',
 'NASDAQ:TXN',
 'NASDAQ:UAL',
 'NASDAQ:ULTA',
 'NASDAQ:UONE',
 'NASDAQ:URBN',
 'NASDAQ:UTHR',
 'NASDAQ:VC',
 'NASDAQ:VIAB',
 'NASDAQ:VIAC',
 'NASDAQ:VKTX',
 'NASDAQ:VRSK',
 'NASDAQ:VRSN',
 'NASDAQ:VRTX',
 'NASDAQ:WATT',
 'NASDAQ:WBA',
 'NASDAQ:WDAY',
 'NASDAQ:WDC',
 'NASDAQ:WIX',
 'NASDAQ:WKHS',
 'NASDAQ:WLTW',
 'NASDAQ:WMGI',
 'NASDAQ:WW',
 'NASDAQ:WYNN',
 'NASDAQ:XEL',
 'NASDAQ:XLNX',
 'NASDAQ:XP',
 'NASDAQ:XRAY',
 'NASDAQ:YNDX',
 'NASDAQ:Z',
 'NASDAQ:ZBRA',
 'NASDAQ:ZM',
 'NASDAQ:ZNGA',
 'NASDAQ:ZS',
 'NYSE:A',
 'NYSE:AA',
 'NYSE:AAP',
 'NYSE:ABBV',
 'NYSE:ABC',
 'NYSE:ABT',
 'NYSE:ACB',
 'NYSE:ACN',
 'NYSE:ADM',
 'NYSE:ADNT',
 'NYSE:ADS',
 'NYSE:AEE',
 'NYSE:AEM',
 'NYSE:AEO',
 'NYSE:AEP',
 'NYSE:AER',
 'NYSE:AES',
 'NYSE:AFL',
 'NYSE:AG',
 'NYSE:AGN',
 'NYSE:AIG',
 'NYSE:AIZ',
 'NYSE:AJG',
 'NYSE:AKS',
 'NYSE:ALB',
 'NYSE:ALC',
 'NYSE:ALK',
 'NYSE:ALL',
 'NYSE:ALLE',
 'NYSE:ALLY',
 'NYSE:ALV',
 'NYSE:AMCR',
 'NYSE:AME',
 'NYSE:AMG',
 'NYSE:AMP',
 'NYSE:AN',
 'NYSE:ANET',
 'NYSE:ANF',
 'NYSE:ANTM',
 'NYSE:AON',
 'NYSE:AON~1',
 'NYSE:AOS',
 'NYSE:APD',
 'NYSE:APH',
 'NYSE:APO',
 'NYSE:APTV',
 'NYSE:AR',
 'NYSE:ARMK',
 'NYSE:ASH',
 'NYSE:ATH',
 'NYSE:ATO',
 'NYSE:ATUS',
 'NYSE:AUY',
 'NYSE:AVLR',
 'NYSE:AWK',
 'NYSE:AXP',
 'NYSE:AXTA',
 'NYSE:AYI',
 'NYSE:AYX',
 'NYSE:AZO',
 'NYSE:BA',
 'NYSE:BAC',
 'NYSE:BAH',
 'NYSE:BAM',
 'NYSE:BAP',
 'NYSE:BAX',
 'NYSE:BB',
 'NYSE:BBY',
 'NYSE:BDX',
 'NYSE:BEN',
 'NYSE:BERY',
 'NYSE:BG',
 'NYSE:BHC',
 'NYSE:BIG',
 'NYSE:BILL',
 'NYSE:BIO',
 'NYSE:BJ',
 'NYSE:BK',
 'NYSE:BKD',
 'NYSE:BKI',
 'NYSE:BKR',
 'NYSE:BLK',
 'NYSE:BLL',
 'NYSE:BMY',
 'NYSE:BOX',
 'NYSE:BR',
 'NYSE:BSX',
 'NYSE:BURL',
 'NYSE:BWA',
 'NYSE:BX',
 'NYSE:C',
 'NYSE:CABO',
 'NYSE:CAG',
 'NYSE:CAH',
 'NYSE:CARR',
 'NYSE:CARS',
 'NYSE:CAT',
 'NYSE:CB',
 'NYSE:CBRE',
 'NYSE:CC',
 'NYSE:CCEP',
 'NYSE:CCK',
 'NYSE:CCL',
 'NYSE:CDAY',
 'NYSE:CDE',
 'NYSE:CE',
 'NYSE:CF',
 'NYSE:CFG',
 'NYSE:CGC',
 'NYSE:CHD',
 'NYSE:CHE',
 'NYSE:CHGG',
 'NYSE:CHK',
 'NYSE:CHWY',
 'NYSE:CHX',
 'NYSE:CI',
 'NYSE:CIEN',
 'NYSE:CIT',
 'NYSE:CL',
 'NYSE:CLB',
 'NYSE:CLDR',
 'NYSE:CLF',
 'NYSE:CLGX',
 'NYSE:CLR',
 'NYSE:CLX',
 'NYSE:CM',
 'NYSE:CMA',
 'NYSE:CMG',
 'NYSE:CMI',
 'NYSE:CMS',
 'NYSE:CNC',
 'NYSE:CNP',
 'NYSE:CNQ',
 'NYSE:CNX',
 'NYSE:COF',
 'NYSE:COG',
 'NYSE:COO',
 'NYSE:COP',
 'NYSE:COTY',
 'NYSE:CP',
 'NYSE:CPB',
 'NYSE:CPE',
 'NYSE:CPRI',
 'NYSE:CRI',
 'NYSE:CRM',
 'NYSE:CTL',
 'NYSE:CTLT',
 'NYSE:CTVA',
 'NYSE:CVNA',
 'NYSE:CVS',
 'NYSE:CVX',
 'NYSE:CXO',
 'NYSE:D',
 'NYSE:DAL',
 'NYSE:DB',
 'NYSE:DD',
 'NYSE:DDD',
 'NYSE:DDS',
 'NYSE:DE',
 'NYSE:DECK',
 'NYSE:DELL',
 'NYSE:DFS',
 'NYSE:DG',
 'NYSE:DGX',
 'NYSE:DHI',
 'NYSE:DHR',
 'NYSE:DIS',
 'NYSE:DK',
 'NYSE:DKS',
 'NYSE:DLPH',
 'NYSE:DO',
 'NYSE:DOV',
 'NYSE:DOW',
 'NYSE:DPZ',
 'NYSE:DRI',
 'NYSE:DT',
 'NYSE:DTE',
 'NYSE:DUK',
 'NYSE:DVA',
 'NYSE:DVN',
 'NYSE:DXC',
 'NYSE:DY',
 'NYSE:EAT',
 'NYSE:EBS',
 'NYSE:ECL',
 'NYSE:ED',
 'NYSE:EFX',
 'NYSE:EIX',
 'NYSE:EL',
 'NYSE:ELAN',
 'NYSE:EMN',
 'NYSE:EMR',
 'NYSE:ENB',
 'NYSE:EOG',
 'NYSE:EPAM',
 'NYSE:EQH',
 'NYSE:EQT',
 'NYSE:ES',
 'NYSE:ESTC',
 'NYSE:ETM',
 'NYSE:ETN',
 'NYSE:ETR',
 'NYSE:EVRG',
 'NYSE:EW',
 'NYSE:F',
 'NYSE:FBHS',
 'NYSE:FCAU',
 'NYSE:FCX',
 'NYSE:FDS',
 'NYSE:FDX',
 'NYSE:FE',
 'NYSE:FHN',
 'NYSE:FICO',
 'NYSE:FIS',
 'NYSE:FIT',
 'NYSE:FL',
 'NYSE:FLR',
 'NYSE:FLS',
 'NYSE:FLT',
 'NYSE:FMC',
 'NYSE:FNF',
 'NYSE:FNV',
 'NYSE:FRC',
 'NYSE:FSLY',
 'NYSE:FTCH',
 'NYSE:FTI',
 'NYSE:FTV',
 'NYSE:GD',
 'NYSE:GDDY',
 'NYSE:GE',
 'NYSE:GIS',
 'NYSE:GLW',
 'NYSE:GM',
 'NYSE:GME',
 'NYSE:GNRC',
 'NYSE:GOOS',
 'NYSE:GPC',
 'NYSE:GPN',
 'NYSE:GPS',
 'NYSE:GRUB',
 'NYSE:GS',
 'NYSE:GWR',
 'NYSE:GWRE',
 'NYSE:GWW',
 'NYSE:H',
 'NYSE:HAE',
 'NYSE:HAL',
 'NYSE:HBI',
 'NYSE:HCA',
 'NYSE:HD',
 'NYSE:HEI',
 'NYSE:HES',
 'NYSE:HFC',
 'NYSE:HII',
 'NYSE:HL',
 'NYSE:HLF',
 'NYSE:HLT',
 'NYSE:HOG',
 'NYSE:HON',
 'NYSE:HP',
 'NYSE:HPE',
 'NYSE:HPQ',
 'NYSE:HRB',
 'NYSE:HRL',
 'NYSE:HSY',
 'NYSE:HTZ',
 'NYSE:HUBS',
 'NYSE:HUM',
 'NYSE:HUN',
 'NYSE:HWM',
 'NYSE:HXL',
 'NYSE:I',
 'NYSE:IAA',
 'NYSE:IBM',
 'NYSE:ICE',
 'NYSE:IEX',
 'NYSE:INFO',
 'NYSE:INGR',
 'NYSE:INXN',
 'NYSE:IP',
 'NYSE:IPG',
 'NYSE:IPHI',
 'NYSE:IQV',
 'NYSE:IR',
 'NYSE:IT',
 'NYSE:ITW',
 'NYSE:IVZ',
 'NYSE:J',
 'NYSE:JBL',
 'NYSE:JCI',
 'NYSE:JCP',
 'NYSE:JEF',
 'NYSE:JNJ',
 'NYSE:JNPR',
 'NYSE:JPM',
 'NYSE:JWN',
 'NYSE:K',
 'NYSE:KAR',
 'NYSE:KBH',
 'NYSE:KDP',
 'NYSE:KEY',
 'NYSE:KEYS',
 'NYSE:KGC',
 'NYSE:KKR',
 'NYSE:KL',
 'NYSE:KMB',
 'NYSE:KMI',
 'NYSE:KMX',
 'NYSE:KNX',
 'NYSE:KO',
 'NYSE:KODK',
 'NYSE:KR',
 'NYSE:KSS',
 'NYSE:KSU',
 'NYSE:LB',
 'NYSE:LDOS',
 'NYSE:LEA',
 'NYSE:LEN',
 'NYSE:LHX',
 'NYSE:LII',
 'NYSE:LIN',
 'NYSE:LLY',
 'NYSE:LM',
 'NYSE:LMT',
 'NYSE:LNC',
 'NYSE:LOW',
 'NYSE:LRN',
 'NYSE:LUV',
 'NYSE:LVS',
 'NYSE:LW',
 'NYSE:LYB',
 'NYSE:LYV',
 'NYSE:M',
 'NYSE:MA',
 'NYSE:MAN',
 'NYSE:MAS',
 'NYSE:MCD',
 'NYSE:MCK',
 'NYSE:MCO',
 'NYSE:MD',
 'NYSE:MDT',
 'NYSE:MET',
 'NYSE:MGM',
 'NYSE:MHK',
 'NYSE:MIC',
 'NYSE:MKC',
 'NYSE:MLM',
 'NYSE:MMC',
 'NYSE:MMM',
 'NYSE:MNK',
 'NYSE:MO',
 'NYSE:MOH',
 'NYSE:MOS',
 'NYSE:MPC',
 'NYSE:MRK',
 'NYSE:MRO',
 'NYSE:MS',
 'NYSE:MSCI',
 'NYSE:MSI',
 'NYSE:MSM',
 'NYSE:MTB',
 'NYSE:MTD',
 'NYSE:MTN',
 'NYSE:MTZ',
 'NYSE:MUR',
 'NYSE:NAT',
 'NYSE:NBR',
 'NYSE:NCLH',
 'NYSE:NE',
 'NYSE:NEE',
 'NYSE:NEM',
 'NYSE:NET',
 'NYSE:NEWR',
 'NYSE:NI',
 'NYSE:NKE',
 'NYSE:NLSN',
 'NYSE:NOC',
 'NYSE:NOV',
 'NYSE:NOW',
 'NYSE:NRG',
 'NYSE:NSC',
 'NYSE:NTR',
 'NYSE:NUE',
 'NYSE:NVR',
 'NYSE:NVRO',
 'NYSE:NVST',
 'NYSE:NVT',
 'NYSE:NYCB',
 'NYSE:OC',
 'NYSE:OKE',
 'NYSE:OMC',
 'NYSE:ORCL',
 'NYSE:OVV',
 'NYSE:OXY',
 'NYSE:PAGS',
 'NYSE:PANW',
 'NYSE:PAYC',
 'NYSE:PBF',
 'NYSE:PBI',
 'NYSE:PCG',
 'NYSE:PE',
 'NYSE:PEG',
 'NYSE:PEN',
 'NYSE:PFE',
 'NYSE:PG',
 'NYSE:PGR',
 'NYSE:PH',
 'NYSE:PHM',
 'NYSE:PII',
 'NYSE:PINS',
 'NYSE:PKG',
 'NYSE:PKI',
 'NYSE:PLAN',
 'NYSE:PLNT',
 'NYSE:PM',
 'NYSE:PNC',
 'NYSE:PNR',
 'NYSE:PNW',
 'NYSE:POST',
 'NYSE:PPG',
 'NYSE:PPL',
 'NYSE:PRGO',
 'NYSE:PRSP',
 'NYSE:PRU',
 'NYSE:PSTG',
 'NYSE:PSX',
 'NYSE:PVH',
 'NYSE:PVTL',
 'NYSE:PXD',
 'NYSE:PYX',
 'NYSE:QEP',
 'NYSE:QGEN',
 'NYSE:QSR',
 'NYSE:RACE',
 'NYSE:RAD',
 'NYSE:RAMP',
 'NYSE:RCL',
 'NYSE:RE',
 'NYSE:RF',
 'NYSE:RH',
 'NYSE:RIG',
 'NYSE:RJF',
 'NYSE:RL',
 'NYSE:RMD',
 'NYSE:RNG',
 'NYSE:RNR',
 'NYSE:ROK',
 'NYSE:ROL',
 'NYSE:ROP',
 'NYSE:RPM',
 'NYSE:RRC',
 'NYSE:RSG',
 'NYSE:RTN',
 'NYSE:RTX',
 'NYSE:RVLV',
 'NYSE:RY',
 'NYSE:S',
 'NYSE:SAM',
 'NYSE:SAVE',
 'NYSE:SBH',
 'NYSE:SEAS',
 'NYSE:SEE',
 'NYSE:SERV',
 'NYSE:SHAK',
 'NYSE:SHLL',
 'NYSE:SHOP',
 'NYSE:SHW',
 'NYSE:SIG',
 'NYSE:SIX',
 'NYSE:SJM',
 'NYSE:SKX',
 'NYSE:SLB',
 'NYSE:SLCA',
 'NYSE:SM',
 'NYSE:SMAR',
 'NYSE:SNA',
 'NYSE:SNAP',
 'NYSE:SNV',
 'NYSE:SO',
 'NYSE:SPAQ',
 'NYSE:SPCE',
 'NYSE:SPGI',
 'NYSE:SPOT',
 'NYSE:SPR',
 'NYSE:SQ',
 'NYSE:SRE',
 'NYSE:STE',
 'NYSE:STI',
 'NYSE:STT',
 'NYSE:STZ',
 'NYSE:SU',
 'NYSE:SWK',
 'NYSE:SWN',
 'NYSE:SYF',
 'NYSE:SYK',
 'NYSE:SYY',
 'NYSE:T',
 'NYSE:TAP',
 'NYSE:TD',
 'NYSE:TDG',
 'NYSE:TDOC',
 'NYSE:TDY',
 'NYSE:TECK',
 'NYSE:TEL',
 'NYSE:TFC',
 'NYSE:TFX',
 'NYSE:TGE',
 'NYSE:TGNA',
 'NYSE:TGT',
 'NYSE:THC',
 'NYSE:THO',
 'NYSE:THS',
 'NYSE:TIF',
 'NYSE:TJX',
 'NYSE:TMHC',
 'NYSE:TMO',
 'NYSE:TOL',
 'NYSE:TPR',
 'NYSE:TPX',
 'NYSE:TREX',
 'NYSE:TRGP',
 'NYSE:TRI',
 'NYSE:TRP',
 'NYSE:TRU',
 'NYSE:TRV',
 'NYSE:TSN',
 'NYSE:TT',
 'NYSE:TWLO',
 'NYSE:TWTR',
 'NYSE:TXT',
 'NYSE:TYL',
 'NYSE:UA',
 'NYSE:UAA',
 'NYSE:UBER',
 'NYSE:UGI',
 'NYSE:UHS',
 'NYSE:UI',
 'NYSE:UNH',
 'NYSE:UNM',
 'NYSE:UNP',
 'NYSE:UPS',
 'NYSE:URI',
 'NYSE:USB',
 'NYSE:USFD',
 'NYSE:V',
 'NYSE:VAL',
 'NYSE:VAR',
 'NYSE:VEEV',
 'NYSE:VLO',
 'NYSE:VMC',
 'NYSE:VMW',
 'NYSE:VOYA',
 'NYSE:VSH',
 'NYSE:VSM',
 'NYSE:VST',
 'NYSE:VZ',
 'NYSE:W',
 'NYSE:WAB',
 'NYSE:WAT',
 'NYSE:WBC',
 'NYSE:WCG',
 'NYSE:WCN',
 'NYSE:WEC',
 'NYSE:WEX',
 'NYSE:WFC',
 'NYSE:WH',
 'NYSE:WHR',
 'NYSE:WLK',
 'NYSE:WLL',
 'NYSE:WM',
 'NYSE:WMB',
 'NYSE:WMT',
 'NYSE:WORK',
 'NYSE:WPM',
 'NYSE:WPX',
 'NYSE:WRB',
 'NYSE:WRK',
 'NYSE:WSM',
 'NYSE:WST',
 'NYSE:WTRG',
 'NYSE:WU',
 'NYSE:WWE',
 'NYSE:X',
 'NYSE:XEC',
 'NYSE:XOM',
 'NYSE:XPO',
 'NYSE:XYL',
 'NYSE:YELP',
 'NYSE:YUM',
 'NYSE:YUMC',
 'NYSE:ZAYO',
 'NYSE:ZBH',
 'NYSE:ZEN',
 'NYSE:ZTS']
```