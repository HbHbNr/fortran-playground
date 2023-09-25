program strings
    ! use stdlib_strings, only : count
    implicit none

    character(len=20) :: string

    string = '1 2 3 4'
    print *, string
    ! print *, count(string, ' ')
end program strings
