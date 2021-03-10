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

