function [string_mat] = col2let(matrix_data)

string_mat = char(zeros(size(matrix_data)));
    for i = 1 : size(matrix_data, 1)
        for j = 1 : size(matrix_data, 2)
            switch j
                case 1 
                    cor_str = 'a';
                case 2
                    cor_str = 'b';
                case 3
                    cor_str = 'c';
                case 4
                    cor_str = 'd';
                case 5
                    cor_str = 'e';
                case 6
                    cor_str = 'f';
                case 7
                    cor_str = 'g';
                case 8
                    cor_str = 'h';
                case 9
                    cor_str = 'i';
                case 10
                    cor_str = 'j';
                case 11
                    cor_str = 'k';
                case 0
                    cor_str = '0';
            end
            if matrix_data(i, j) ~= 0
                string_mat(i, matrix_data(i, j)) = cor_str;
            end
        end
    end
end
