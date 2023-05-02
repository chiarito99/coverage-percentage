
img = imread('area1.png');
area = imread('Figure_3.png');
img = rgb2gray(img);
img = img < 110;

img = repmat(img, 1, 1, 3);

img = uint8(img).*area;
imshow(img)
img = rgb2gray(img);
% 211 coveraged
% 202->208 remain
remain = 0;
for i = 202:208
    a = sum(img(:) == i);
    remain = remain + a;
end
coverage = sum(img(:)==211);
coverage_Percentage = (100*coverage)/(coverage+remain)
