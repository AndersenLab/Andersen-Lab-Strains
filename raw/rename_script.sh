rename_strains () {
    echo $1
if [ "$1" -eq 1 ]
    then
        echo "RENAMING"
        find * -type f -name "*.fq.gz" | rename -s paired trim -s CB4851_CGC ECA243
        find * -type f -name "*.fq.gz" | rename -s paired trim -s CB4851_UK ECA244
        find * -type f -name "*.fq.gz" | rename -s paired trim -s CB4853_CGC  ECA245
        find * -type f -name "*.fq.gz" | rename -s paired trim -s CB4853_UK  ECA246
        find * -type f -name "*.fq.gz" | rename -s paired trim -s CB4855_CGC  ECA247
        find * -type f -name "*.fq.gz" | rename -s paired trim -s CB4855_UK  ECA248
        find * -type f -name "*.fq.gz" | rename -s paired trim -s CB4856 CB4856
        find * -type f -name "*.fq.gz" | rename -s paired trim -s CB4856_CGC3 CB4856
        find * -type f -name "*.fq.gz" | rename -s paired trim -s CB4856_CGC_3 CB4856
        find * -type f -name "*.fq.gz" | rename -s paired trim -s CB4857_CGC  ECA249
        find * -type f -name "*.fq.gz" | rename -s paired trim -s CB4857_UK  ECA250
        find * -type f -name "*.fq.gz" | rename -s paired trim -s CB4858_CGC  ECA251
        find * -type f -name "*.fq.gz" | rename -s paired trim -s CB4858_UK  ECA252
        find * -type f -name "*.fq.gz" | rename -s paired trim -s N2_CGC  ECA253
        find * -type f -name "*.fq.gz" | rename -s paired trim -s N2_Baer ECA254
        find * -type f -name "*.fq.gz" | rename -s paired trim -s N2_Baer ECA255
        find * -type f -name "*.fq.gz" | rename -s paired trim -s N2_HRH  N2
        find * -type f -name "*.fq.gz" | rename -s paired trim -s N2_Kammenga ECA257
        find * -type f -name "*.fq.gz" | rename -s paired trim -s PB306_Baer  ECA258
        find * -type f -name "*.fq.gz" | rename -s paired trim -s PB306_CGC  ECA259
        find * -type f -name "*.fq.gz" | rename -s paired trim -s CB4856_Kammenga  ECA260
        find * -type f -name "*.fq.gz" | rename -s paired trim -s PB800_CGC  PB800
        find * -type f -name "*.fq.gz" | rename -s paired trim -s PB800_Baer  ECA261
        find * -type f -name "*.fq.gz" | rename -s paired trim -s HK104_CGC  HK104
        find * -type f -name "*.fq.gz" | rename -s paired trim -s HK104_Baer  ECA262
        find * -type f -name "*.fq.gz" | rename -s paired trim -s HK104_Baird  ECA263
        find * -type f -name "*.fq.gz" | rename -s paired trim -s AF16_CGC  AF16
        find * -type f -name "*.fq.gz" | rename -s paired trim -s AF16_Baird  ECA264
        find * -type f -name "*.fq.gz" | rename -s paired trim -s JU360_2  JU360
    else
        echo "TEST"
        find * -type f -name "*.fq.gz" | rename -n -s paired trim -s CB4851_CGC ECA243
        find * -type f -name "*.fq.gz" | rename -n -s paired trim -s CB4851_UK ECA244
        find * -type f -name "*.fq.gz" | rename -n -s paired trim -s CB4853_CGC  ECA245
        find * -type f -name "*.fq.gz" | rename -n -s paired trim -s CB4853_UK  ECA246
        find * -type f -name "*.fq.gz" | rename -n -s paired trim -s CB4855_CGC  ECA247
        find * -type f -name "*.fq.gz" | rename -n -s paired trim -s CB4855_UK  ECA248
        find * -type f -name "*.fq.gz" | rename -n -s paired trim -s CB4856_CGC CB4856
        find * -type f -name "*.fq.gz" | rename -n -s paired trim -s CB4856_CGC3 CB4856
        find * -type f -name "*.fq.gz" | rename -n -s paired trim -s CB4856_CGC_3 CB4856
        find * -type f -name "*.fq.gz" | rename -n -s paired trim -s CB4857_CGC  ECA249
        find * -type f -name "*.fq.gz" | rename -n -s paired trim -s CB4857_UK  ECA250
        find * -type f -name "*.fq.gz" | rename -n -s paired trim -s CB4858_CGC  ECA251
        find * -type f -name "*.fq.gz" | rename -n -s paired trim -s CB4858_UK  ECA252
        find * -type f -name "*.fq.gz" | rename -n -s paired trim -s N2_CGC  ECA253
        find * -type f -name "*.fq.gz" | rename -n -s paired trim -s N2_Baer ECA254
        find * -type f -name "*.fq.gz" | rename -n -s paired trim -s N2_Baer2 ECA255
        find * -type f -name "*.fq.gz" | rename -n -s paired trim -s N2_HRH  N2
        find * -type f -name "*.fq.gz" | rename -n -s paired trim -s N2_Kammenga ECA257
        find * -type f -name "*.fq.gz" | rename -n -s paired trim -s PB306_Baer  ECA258
        find * -type f -name "*.fq.gz" | rename -n -s paired trim -s PB306_CGC  ECA259
        find * -type f -name "*.fq.gz" | rename -n -s paired trim -s CB4856_Kammenga  ECA260
        find * -type f -name "*.fq.gz" | rename -n -s paired trim -s PB800_CGC  PB800
        find * -type f -name "*.fq.gz" | rename -n -s paired trim -s PB800_Baer  ECA261
        find * -type f -name "*.fq.gz" | rename -n -s paired trim -s HK104_CGC  HK104
        find * -type f -name "*.fq.gz" | rename -n -s paired trim -s HK104_Baer  ECA262
        find * -type f -name "*.fq.gz" | rename -n -s paired trim -s HK104_Baird  ECA263
        find * -type f -name "*.fq.gz" | rename -n -s paired trim -s AF16_CGC  AF16
        find * -type f -name "*.fq.gz" | rename -n -s paired trim -s AF16_Baird  ECA264
        find * -type f -name "*.fq.gz" | rename -n -s paired trim -s JU360_2  JU360
fi
}

# Fix ECA Set 1 strain names
find * -type f -name "Princeton_ECA*ACAGTGA*.fq.gz" | rename  -s ACAGTGA EG4946
find * -type f -name "Princeton_ECA*ACTTGAA*.fq.gz" | rename -n -s ACTTGAA DL238

# Fix MMP libraries
find * -type f -name '*62GECAA_1*.fq.gz' | rename -s 62GECAA_1 ML_1 
find * -type f -name '*7028LAB_5*.fq.gz' | rename -s 7028LAB_5 ML_2 
find * -type f -name '*B00B7AB_3*.fq.gz' | rename -s B00B7AB_3 ML_3 
find * -type f -name '*B00TWAB_3*.fq.gz' | rename -s B00TWAB_3 ML_4 
find * -type f -name '*C02D1AC_1*.fq.gz' | rename -s C02D1AC_1 ML_5 
find * -type f -name '*D09NFAC_4*.fq.gz' | rename -s D09NFAC_4 ML_6 
find * -type f -name '*D0A7EAC_1*.fq.gz' | rename -s D0A7EAC_1 ML_7 

# Rename Princeton Sets; Clean up library names.
find * -type f -name '*81771*.fq.gz' | rename  -s Princeton_ECA Princeton1 -s 81771 PL_1
find * -type f -name '*EA68*.fq.gz' | rename  -s Princeton_ECA Princeton1 -s EA68 PL_2
find * -type f -name '*ECA30_c02hkac*.fq.gz' | rename  -s Princeton_ECA Princeton1 -s ECA30_c02hkac PL_3
find * -type f -name '*ECA30_c03b2ab*.fq.gz' | rename  -s Princeton_ECA Princeton1 -s ECA30_c03b2ab PL_4
find * -type f -name '*ECA31_c02hkac*.fq.gz' | rename  -s Princeton_ECA Princeton1 -s ECA31_c02hkac PL_5
find * -type f -name '*ECA31_c03b2ab*.fq.gz' | rename  -s Princeton_ECA Princeton1 -s ECA31_c03b2ab PL_6
find * -type f -name '*ECA32_c02hkac*.fq.gz' | rename  -s Princeton_ECA Princeton1 -s ECA32_c02hkac PL_7
find * -type f -name '*ECA32_c03b2ab*.fq.gz' | rename  -s Princeton_ECA Princeton1 -s ECA32_c03b2ab PL_8
find * -type f -name '*ECA33_c045gab*.fq.gz' | rename  -s Princeton_ECA Princeton1 -s ECA33_c045gab PL_9
find * -type f -name '*ECA34Pool_c099uac*.fq.gz' | rename  -s Princeton_ECA Princeton1 -s ECA34Pool_c099uac PL_10
find * -type f -name '*ECA34Pool_d0mbhac*.fq.gz' | rename  -s Princeton_ECA Princeton1 -s ECA34Pool_d0mbhac PL_11
find * -type f -name '*ECA34_c045gab*.fq.gz' | rename  -s Princeton_ECA Princeton1 -s ECA34_c045gab PL_12
find * -type f -name '*ECA35_c099uac*.fq.gz' | rename  -s Princeton_ECA Princeton1 -s ECA35_c099uac PL_13
find * -type f -name '*ECA35_d0mbhac*.fq.gz' | rename  -s Princeton_ECA Princeton1 -s ECA35_d0mbhac PL_14
find * -type f -name '*ECA36_c099uac*.fq.gz' | rename  -s Princeton_ECA Princeton1 -s ECA36_c099uac PL_15
find * -type f -name '*ECA36_d0mbhac*.fq.gz' | rename  -s Princeton_ECA Princeton1 -s ECA36_d0mbhac PL_16
find * -type f -name '*ECA37_d0ncdac*.fq.gz' | rename  -s Princeton_ECA Princeton1 -s ECA37_d0ncdac PL_17
find * -type f -name '*ECA38_c099uac*.fq.gz' | rename  -s Princeton_ECA Princeton1 -s ECA38_c099uac PL_18
find * -type f -name '*ECA38_d0mbhac*.fq.gz' | rename  -s Princeton_ECA Princeton1 -s ECA38_d0mbhac PL_19
find * -type f -name '*ECA39_d0ncdac*.fq.gz' | rename  -s Princeton_ECA Princeton1 -s ECA39_d0ncdac PL_20
find * -type f -name '*ECA40_d0ncdac*.fq.gz' | rename  -s Princeton_ECA Princeton1 -s ECA40_d0ncdac PL_21
find * -type f -name '*ECA41_d0ncdac*.fq.gz' | rename  -s Princeton_ECA Princeton1 -s ECA41_d0ncdac PL_22
find * -type f -name '*ECA44_47*.fq.gz' | rename  -s Princeton_ECA Princeton1 -s ECA44_47 PL_23
find * -type f -name '*ECAmp_c0g61ac*.fq.gz' | rename  -s Princeton_ECA Princeton1 -s ECAmp_c0g61ac PL_24
find * -type f -name "Princeton-P-*.fq.gz" | rename -n -s Princeton-P Princeton2-P


# Fix rockman strain names:
find * -type -f -name 'Rockman*QG323*.fq.gz' | rename -s QG323 MY16
find * -type -f -name 'Rockman*QG324*.fq.gz' | rename -s QG324 CB4507
find * -type -f -name 'Rockman*QG325*.fq.gz' | rename -s QG325 JU400
find * -type -f -name 'Rockman*QG326*.fq.gz' | rename -s QG326 CB4855
find * -type -f -name 'Rockman*QG327*.fq.gz' | rename -s QG327 PB306
find * -type -f -name 'Rockman*QG328*.fq.gz' | rename -s QG328 CB4858
find * -type -f -name 'Rockman*QG329*.fq.gz' | rename -s QG329 RC301
find * -type -f -name 'Rockman*QG330*.fq.gz' | rename -s QG330 CB4856
find * -type -f -name 'Rockman*QG331*.fq.gz' | rename -s QG331 CB4852
find * -type -f -name 'Rockman*QG332*.fq.gz' | rename -s QG332 PX179
find * -type -f -name 'Rockman*QG333*.fq.gz' | rename -s QG333 MY1
find * -type -f -name 'Rockman*QG334*.fq.gz' | rename -s QG334 AB1
find * -type -f -name 'Rockman*QG335*.fq.gz' | rename -s QG335 JU319
find * -type -f -name 'Rockman*QG336*.fq.gz' | rename -s QG336 PX174
find * -type -f -name 'Rockman*QG337*.fq.gz' | rename -s QG337 N2
find * -type -f -name 'Rockman*QG338*.fq.gz' | rename -s QG338 JU345
