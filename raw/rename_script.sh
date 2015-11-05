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