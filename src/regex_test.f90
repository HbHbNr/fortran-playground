program regex_test
    use regex_module
    implicit none

    character(len=*), parameter :: string = 'Game 1: 3 blue, 4 red; 1 red, 2 green, 6 blue; 2 green'
    character(len=*), parameter :: pattern = '[0-9][0-9]? [rgb]'
    type(regex_pattern)         :: parsed_pattern
    integer                     :: indx, length

    indx = regex(string, pattern, length)
    print '(I2, I2, A, A, A)', indx, length, ' "', string(indx:indx+length-1), '"'

    parsed_pattern = parse_pattern(pattern)
    indx = regex(string, parsed_pattern, length)
    print '(I2, I2, A, A, A)', indx, length, ' "', string(indx:indx+length-1), '"'
end program
