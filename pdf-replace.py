from PyPDF2 import PdfFileReader, PdfFileWriter
from PyPDF2.generic import NameObject 

replacements = [ ("lorem ipsum", "new string") ]

pdf = PdfFileReader(open("uncompressed.pdf", "rb"))
writer = PdfFileWriter() 

for page in pdf.pages:
    contents = page.getContents().getData()
    for (a,b) in replacements:
        contents = contents.replace(a.encode('utf-8'), b.encode('utf-8'))
    ##page.getContents().setData(contents)
    page[NameObject("/Contents")] = contents.decodedSelf
    writer.addPage(page)
    
with open("modified.pdf", "wb") as f:
     writer.write(f)
