import pdfplumber


from transformers import pipeline


get_ipython().getoutput("pwd")


caminho='C:\nuvem\Dropbox\doutoramento\tese\SLRDropout\analysis\selected_articles\final_dataset\files\11391\Hung et al_2006_Applying data mining to telecom churn management.pdf'


pdf=pdfplumber.open("final_dataset/files/11391/Hung et al_2006_Applying data mining to telecom churn management.pdf")


len(pdf.pages)


summarization = pipeline("summarization")


summarization(pdf.pages[8].extract_text())


all_text = ''
for page in pdf.pages:
    page_text = page.extract_text()
    try:
        resumo=summarization(page_text)[0]['summary_text']
        print(page,resumo)
    except:
        print(page,'erro')
    #print(page_text)
    all_text = all_text + '\n' + resumo


pdf=pdfplumber.open("final_dataset/files/11393/Dierkes et al_2011_Estimating the effect of word of mouth on churn and cross-buying in the mobile.pdf")


len(pdf.pages)


summarization = pipeline("summarization")


all_text = ''
for page in pdf.pages:
    page_text = page.extract_text()
    try:
        resumo=summarization(page_text)[0]['summary_text']
        print(page,resumo)
    except:
        print(page,'erro')
    #print(page_text)
    all_text = all_text + '\n' + resumo
