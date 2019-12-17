#### global_mean.m
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
#### /global_mean.m

#### mean_by_row.m
%This code works perfectly on grayscale images

    image=imread("cameraman.tif");
%reading the image (cameraman.tif is preloaded image in the matlab)
%image imported is automatically converted into 2D matrix

    new_image=double(image);
%matrix is converted into matlab's default datatype 'double' for calculation

    sum=0;
%sum variable will store value by row
%the image is 2D matrix so we use 2 for loop to access each element of the matrix
%suppose, we have 3x4 matrix(3 rows and 4 columns). The size(new_image,1) will give 3 as output
%and size(new_image,2) will give 4 as output. The size() fucntion works on dimensions.

    for i = 1:size(new_image,1)
        for j = 1:size(new_image,2)
            %here, we get new_image[i,j] value
            sum=sum+new_image(i,j);
            %adding values for 1,2,3,4,5....i row
        end
        disp(sum/size(new_image,2));
        %print mean by dividing sum and number of columns(total number of
        %values in a row)
        sum=0;
        %to add and store next row elements.
    end
#### /mean_by_row.m

#### pixel_frequency.m
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
#### /pixel_frequency.m
