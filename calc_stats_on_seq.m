% %%% make sequences of n featuers
function [res] = calc_stats_on_seq(matrix_data, numofchar) 
[subj_no, feat_no] = size(matrix_data);
% Letter pattern kai arithmos emfaniseon
pat_inf{1, 2} = 1; pat_inf{1, 1} = ''; line = 1;

results = col2let(matrix_data);
    for i = 1 : subj_no
        for j = 1: 11
            if ~strcmp(results(i, j), X)
                ne{i, 1}(j) = results(i, j);
            end
        end
    end
%     for i = 1 : subj_no
%         ne{i, 1} = char(results(i, :));
%         ne = strrep(ne,' ','');
%     end

    for no_subj = 1 : subj_no
        for char_no = 1 : size(ne{no_subj}, 2) - (numofchar - 1)
            char_pattern = ne{no_subj}(char_no: char_no + (numofchar - 1));
            [start_ind, end_ind] = regexp(ne, char_pattern, 'match');
            plithos_emf = size(cell2mat(end_ind), 1);
            
             if plithos_emf > 1
                 if isempty(strmatch(char_pattern, pat_inf(:, 1)))
                     pat_inf{line, 2} = plithos_emf;
                     pat_inf{line, 1} = char_pattern;
                     line = line + 1;
                 end
             end
            fprintf('%s\n', char_pattern)
       end
    end
res = pat_inf;    
end
