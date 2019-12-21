%This code works perfectly on grayscale images

image=imread("cameraman.tif");
%reading the image (cameraman.tif is preloaded image in the matlab). You can use yours also 

disp(image);
%image imported is automatically converted into 2D matrix

intensity=input('Enter pixel intensity threshold: ');
%store the intensity threshold value

count=0;
%count to store frequency of the pixel less than the given intensity
%the image is 2D matrix so we use 2 for loop to access each element of the
%matrix
%suppose, we have 3x4 matrix(3 rows and 4 columns). The size(new_image,1) will give 3 as output
%and size(new_image,2) will give 4 as output. The size() fucntion works on 
%dimensions. 

for i=1:size(image,1)
    for j=1:size(image,2)
        if image(i,j)<intensity
            count=count+1;
        end
    end
end

%display the frequency
disp('Number of pixels less than the given intensity are: ');
disp(count);
