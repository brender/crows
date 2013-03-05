--crows

import Time

--width and height are signals
main = lift4 container Window.width Window.height (constant middle) images


crow1 = constant "crow1.jpg"
crow2 = constant "crow2.jpg"

t = every (second * 2)
t2 = delay second t

crow1Time = sampleOn t crow1
crow2Time = sampleOn t2 crow2

crows = merge crow1Time crow2Time
images = image 600 450 <~ crows