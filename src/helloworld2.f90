subroutine sayhello
    implicit none

    character(20) :: message
    integer :: length

    message = 'Hello, world!'
    length = len(message)
    print '(Aa)',message,message
    print '(I4)',length
end subroutine

integer function strtoint(string)
    implicit none

    character(20) :: string

    read(string, '(I20)') strtoint  ! return mytoint
end function strtoint

program helloworld2
    implicit none

    character(20) :: caloriesstring
    integer :: calories
    integer :: strtoint

    call sayhello

    caloriesstring = '2000'
    calories = strtoint(caloriesstring)
    print '(I4)',calories+1
end program helloworld2
