#### draft sccript for trialing SimpleIDK
### 8/6/2019, Brandon Mayer

# SimpleIDK wouldnt work
## Install for SimpleIDK package
# devtools::install_github("SimpleITK/SimpleITKRInstaller")
# library(SimpleITK)

install.packages("imager")
library(imager)
library(devtools)
library(jpeg)

dim(img)
img1 <- load.image("F:/cameratraps/aguachiquita/upland/ACU_03272019_05102019/110EK113/2019-05-02-13-05-10.jpg")
img2 <- load.image("F:/cameratraps/aguachiquita/upland/ACU_03272019_05102019/110EK113/2019-05-02-13-10-10.jpg")

plot(img1)
plot(img2)
subi1i2 <- img1-img2
subi2i1 <- img2-img1
plot(subi1i2)
plot(subi2i1)

subi2i1
(imshift(img2,delta_z=1)-img1) %>% plot(frame=2,main="Difference betw. image 2 and 1")

hist(img1)
hist(img2)
hist(subi1i2)
hist(subi2i1)

