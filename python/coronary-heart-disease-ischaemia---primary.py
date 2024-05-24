# Evangelos Kontopantelis, David Springate, David Reeves, Darren M Ashcroft, Jose M Valderas, Tim Doran, 2024.

import sys, csv, re

codes = [{"code":"G33z400","system":"readv2"},{"code":"Gyu3.00","system":"readv2"},{"code":"G34z.00","system":"readv2"},{"code":"G3z..00","system":"readv2"},{"code":"G31y.00","system":"readv2"},{"code":"G343.00","system":"readv2"},{"code":"G344.00","system":"readv2"},{"code":"G31yz00","system":"readv2"},{"code":"G3...13","system":"readv2"},{"code":"G31..00","system":"readv2"},{"code":"G34y100","system":"readv2"},{"code":"G31y300","system":"readv2"},{"code":"G34..00","system":"readv2"},{"code":"G3...00","system":"readv2"},{"code":"G31y200","system":"readv2"},{"code":"4129","system":"readv2"},{"code":"4119B","system":"readv2"},{"code":"4129AN","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('coronary-heart-disease-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["coronary-heart-disease-ischaemia---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["coronary-heart-disease-ischaemia---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["coronary-heart-disease-ischaemia---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
