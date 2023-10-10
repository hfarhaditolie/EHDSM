# EHDSM
Source codes of the paper entitled "Blind Quality Assessment of Screen Content Images via Edge Histogram Descriptor and Statistical Moments"

---------------------------------------
Run demo.m to extract the EHDSM features for the sample screen content image "im.bmp"
---------------------------------------
To evaluate the model on screen content datasets you need to do the following steps:
    1. Extract the EHDSM features for each image within the dataset using the feature_extractor.p with the recommended parameters in the demo.m
    2. Save the extracted features as a .mat file
    3. Run the evaluate_model.m to get the median performance through 1000 random train and test split of the dataset

If you have any questions, do not hesitate to contact me via: h.farhaditolie@gmail.com
