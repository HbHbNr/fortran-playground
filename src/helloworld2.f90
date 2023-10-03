module helloworld2
    implicit none
    private

    public :: sayhello
    public :: strtoint

contains

    subroutine sayhello
        implicit none

        character(20) :: message
        integer :: length

        message = 'Hello, world!'
        length = len(message)
        print '(A,a)',message,message
        print '(I4)',length
    end subroutine

    integer function strtoint(string)
        implicit none

        character(20) :: string

        read(string, '(I20)') strtoint  ! return mytoint
    end function strtoint

end module helloworld2
