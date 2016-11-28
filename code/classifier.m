function op = classifier(maskedImage,ecc)
    I1 = medfilt2(maskedImage);
    SE = strel('disk',5);
%     IM2 = imtophat(I1,SE)
    I1 = im2bw(I1);
%     BW2 = bwareaopen(I1,5);
    if ecc > 0.9
        figure;
        imshow(maskedImage);title('Spiral Segmented')
    else
        figure;
        imshow(maskedImage);title('Elliptical Segmented')
    end
end





