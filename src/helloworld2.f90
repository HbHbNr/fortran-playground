integer function mytoint(string)
    implicit none

    character(20) :: string
    read(string, '(I20)') mytoint
    ! integer :: result
    ! result = 666
    ! mytoint = result
end function mytoint

program helloworld2
    implicit none

    character(20) :: message
    integer :: length
    character(20) :: caloriesstring
    integer :: calories
    integer :: mytoint

    message = 'Hello, world!'
    length = len(message)
    print '(Aa)',message,message
    print '(I4)',length

    caloriesstring = '2000'
    calories = mytoint(caloriesstring)
    print '(I4)',calories+1
end program helloworld2
