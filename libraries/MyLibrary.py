import cv2
import pytesseract
def get_data_in_image(path):
    pytesseract.pytesseract.tesseract_cmd = 'C:\Program Files (x86)\Tesseract-OCR\\tesseract.exe'
    img = cv2.imread(path)
    img_rs = cv2.resize(img,dsize=None,fx=0.8,fy=0.6)
    #Himg , wImg,_ = img_rs.shape
    #print(pytesseract.image_to_boxes(img_rs))
    #img_rss=cv2.rectangle(img_rs,(1158,279),(1216,267),(0,0,0),3)
    #img_rss=cv2.rectangle(img_rs,(1124,322),(1247,210),(0,0,0),1)
    #img_rss=cv2.rectangle(img_rs,(1195,625),(1259,613),(0,0,0),1)

    crop_img1 = img_rs[250:300, 1158:1216]
    crop_img2 = img_rs[300:330, 1124:1247]
    crop_img3 = img_rs[613:630, 1175:1259]

    a=(pytesseract.image_to_string(crop_img1))
    b=print(pytesseract.image_to_string(crop_img2))
    c=print(pytesseract.image_to_string(crop_img3))
    return a,b,c


#cv2.imshow("Anh",crop_img1)
#cv2.waitKey(0)
#cv2.destroyAllWindows()
