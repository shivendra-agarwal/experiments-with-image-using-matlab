%This code works perfectly on grayscale images

image=imread("cameraman.tif");
%reading the image (cameraman.tif is preloaded image in the matlab). You can use yours also 

disp(image);
%image imported is automatically converted into 2D matrix

new_image=double(image);
%matrix is converted into matlab's default datatype 'double' for calculation. 

sum=0;

for i=1:size(new_image,1)
    %size(input,dimension) gives dimension on 1 axis which is number of
    %columns in the matrix
    
    for j=1:size(b,2)
        %size(input,dimension) gives dimension on 2 axis which is number of
        %rows in the matrix
        sum=sum+b(i,j);
        %To calculate sumof pixels
    end
end
my_global_mean=sum/(size(new_image,1)*size(new_image,2));
%global mean formula

disp("The global mean is: ")
disp(my_global_mean);
%display the global mean
%end