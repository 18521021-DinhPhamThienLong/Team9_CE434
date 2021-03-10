# Setup Enviroment
* *Create Github Repository: https://github.com/18521021-DinhPhamThienLong/Team9_CE434*

* *Install Ubuntu desktop: https://bitly.com.vn/jzd2tf*

* *Install Python 3.6 or later: https://bitly.com.vn/z8cwbg*

* *Install Opencv-Python Package: https://bitly.com.vn/utas0y*

# Write a "Hello world" app
* *Read, Write and Display a video/webcam using OpenCV python*
Video:
import cv2 as cv

capture = cv.VideoCapture('Videos/Dance.webm')

fourcc = cv.VideoWriter_fourcc(*'XVID')
out = cv.VideoWriter('Videos/Output.avi', fourcc, 20.0, (640, 480))

if(capture.isOpened() == False):
    print("Error...")

while(capture.isOpened()):
    ret, frame = capture.read()
    if ret == True:
        out.write(frame)
        cv.imshow("Video", frame)

        if cv.waitKey(20) & 0xFF == ord('q'):
            break
    else:
        break

capture.release()
out.release()
cv.destroyAllWindows()
