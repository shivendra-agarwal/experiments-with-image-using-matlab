%This code works perfectly on grayscale images

image=imread("cameraman.tif");
%reading the image (cameraman.tif is preloaded image in the matlab). You can use yours also 

disp(image);
%image imported is automatically converted into 2D matrix

new_image=double(image);
%matrix is converted into matlab's default datatype 'double' for calculation. 

%the image is 2D matrix so we use 2 for loop to access each element of the
%matrix
%suppose, we have 3x4 matrix(3 rows and 4 columns). The size(new_image,1) will give 3 as output
%and size(new_image,2) will give 4 as output. The size() fucntion works on 
%dimensions. 
find_my_pixel=input("Enter pixel number whose freq is required: ")
count=0;
%to store frequency of the given pixel
for i=1:size(new_image,1)
    for j=1:size(new_image,2)
        if new_image(i,j) == find_my_pixel
            count=count+1;
        end
    end
end
disp("Frequency of the given pixel is: ");
disp(count);
%display the frequency of the pixel
%end