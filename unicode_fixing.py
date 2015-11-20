# import csv
# import sys
# import ftfy

# THIS IS NOT A WORKING SCRIPT YET

# def main():
#   text_file = sys.argv[1]

#   with open(text_file, 'rU') as tsvin, open(text_file.rpartition('.')[0]+"_new.tsv", 'wb') as tsvout:
#     tsvin = csv.reader(tsvin, delimiter='\t')
#     tsvot = csv.writer(tsvout, delimiter='\t')
#     count = 0

#     for row in tsvin:
#         if count > 0:
#             fixed_row = []
#             for i in range(len(row)):
#               print row[i].decode('unicode-escape')
#               fixed_row += repr(row[i].decode('unicode-escape'))
#               # fixed_row[i] = ftfy.fix_encoding(repr(row[i].decode('unicode-escape')))
#             # print row
#             # print fixed_row
#             # tsvot.writerows([fixed_row])
#         count += 1
#     print "Val daE TMOise".decode('utf-8')
#     print 'aEjardin partageaE'.decode('UTF-8')


# if __name__ == "__main__":
#     main()
