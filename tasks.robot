*** Settings ***
Documentation   Invoices received from various company vendors 
...             must be entered into the Integrated Invoicing Solutions accounting app
Library         MyLibrary
Library         RPA.Browser.Selenium
Library         RPA.HTTP
Library         OperatingSystem
Library         RPA.Archive

*** Keywords ***
Open browse , download and decompression
    Open Available Browser    https://developer.automationanywhere.com/challenges/automationanywherelabs-invoiceentry.html
    #Wait Until Page Contains Element    id:onetrust-policy-text
    #Click Button    id:onetrust-accept-btn-handler  

    #Download    https://s3-us-west-2.amazonaws.com/aai-devportal-media/wp-content/uploads/2021/06/24192822/sample-invoices.zip
    #...    overwrite=True

    #Extract Archive    sample-invoices.zip
*** Keywords ***
Fill in the blank for person
    ${number}    ${date}    ${mounttotal}=    Get data in image    ${CURDIR}${/}Invoice1.tiff
    Input Text    id:invoiceNumber    ${number}
    Input Text    id:invoiceData    ${date}
    Input Text    id:invoiceTotal    ${mounttotal}
    #Sleep    20s   

*** Keywords ***
Upload file
    Choose File    id:fileupload    ${CURDIR}${/}Invoice1.tiff


*** Tasks ***
Work that need to do
    Open browse , download and decompression
    #Upload file
    Fill in the blank for person




