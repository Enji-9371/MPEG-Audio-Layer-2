% function [sampled_dequan] = DeQuan(maxi, mini, n_bits, quan)
% 
%     L = 2^n_bits;
%     level_sep =(maxi - mini)/L;
% 
%     level_1 = [0:level_sep: maxi];
% 
%     level_2 = [0-level_sep: -level_sep : mini];
% 
%     levels = [flip(level_2) level_1 ];
% 
% 
%     sampled_dequan = zeros(1,length(quan));
% 
%     % for i = 1:length(quan)
%     %     sampled_dequan(i) = levels(quan(i));
%     % end
%      for i = 1:length(quan)
%         % Print the values for debugging
%         fprintf('Index: %d, quan(i): %d, length(levels): %d\n', i, quan(i), length(levels));
% 
%         % Check if the index is within the valid range
%         if quan(i) >= 1 && quan(i) <= length(levels)
%             sampled_dequan(i) = levels(quan(i));
%         else
%             % Handle the case where the index is out of range
%             fprintf('Warning: Index %d is out of range.\n', quan(i));
%             % You might want to assign a default value or handle it differently
%             sampled_dequan(i) = 0; % Assigning a default value of 0
%         end
% end
% 
% 
% 

%run
% % function [sampled_dequan] = DeQuan(maxi, mini, n_bits, quan)
% % 
% %     % Convert maxi and mini to numeric values if they are characters
% %     maxi = str2double(maxi);
% %     mini = str2double(mini);
% % 
% %     L = 2^n_bits;
% %     level_sep = (maxi - mini) / L;
% % 
% %     if level_sep >= 0
% %         level_2 = [0 - level_sep: -level_sep: mini];
% %     else
% %         level_2 = [0 - level_sep: -level_sep: mini, 0];
% %     end
% % 
% %     level_1 = 0:level_sep:maxi;
% %     levels = [flip(level_2) level_1];
% % 
% %     sampled_dequan = zeros(1, length(quan));
% % 
% %     for i = 1:length(quan)
% %         % Print the values for debugging
% %         fprintf('Index: %d, quan(i): %d, length(levels): %d\n', i, quan(i), length(levels));
% % 
% %         % Check if the index is within the valid range
% %         if quan(i) >= 1 && quan(i) <= length(levels)
% %             sampled_dequan(i) = levels(quan(i));
% %         else
% %             % Handle the case where the index is out of range
% %             fprintf('Warning: Index %d is out of range.\n', quan(i));
% %             % You might want to assign a default value or handle it differently
% %             sampled_dequan(i) = 0; % Assigning a default value of 0
% %         end
% %     end
% % end

function sampled_dequan = DeQuan(maxi, mini, n_bits, quan)

    % Convert maxi and mini to numeric values if they are characters
    maxi = str2double(maxi);
    mini = str2double(mini);

    L = 2^n_bits;
    level_sep = (maxi - mini) / L;
    
    level_1 = 0:level_sep:maxi;
    level_2 = flip(0 - level_sep: -level_sep: mini);
    
    levels = [level_2, level_1];

    % Ensure quan values are within a valid range
    quan = max(1, min(quan, length(levels)));
    
    % Use vectorized indexing for performance
    sampled_dequan = levels(quan);
end

