function reconstructed_signal = Decoder (encouded_signal , subbands)

%  Constants for upsampling and synthesis filter 

      upsampling_factor = 32; 
      
      synthesis_filter = ones(1, upsampling_factor); 

% Initialized values for  reconstructed signal 
    
      reconstructed_signal = zeros(1,lengh(encouded_signal) * upsampling_factor ) ;

% start itration for each subband to extract the parmeters of DeQuan ; 

    for i = 1:length(subbands)
       num_bits = encoded_signal(i).num_bits;
       max_value = encoded_signal(i).max_value;
       min_value = encoded_signal(i).min_value;
       quantized_levels = encoded_signal(i).quantized_levels;

% Apply DeQuan function on each subband ; 
    
       subbans_components = DeQuan(max_value, min_value, num_bits, quantized_levels) ; 

% upsample these subbans_components 

       upsampled_subband = upsample(subbans_components, upsampling_factor); 

 % Apply synthesis filter to upsampled subband 

       filtered_subband = fiter(synthesis_filter , 1,upsampled_subband) ; 

 % Add the filtered subband to the reconstructed signal
        start_index = (i - 1) * length(encoded_signal(i).quantized_levels) * upsampling_factor + 1;
        end_index = start_index + length(filtered_subband) - 1;
        reconstructed_signal(start_index:end_index) = reconstructed_signal(start_index:end_index) + filtered_subband;
    end
end


    