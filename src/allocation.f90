program allocation
    implicit none

    integer, parameter            :: linecount = 10
    character(len=8), allocatable :: line
    character(len=8), allocatable :: lines(:)
    integer                       :: i

    allocate(line, source='A')
    allocate(lines(linecount), source='BB')
    lines(linecount / 2) = 'CCC'
    call setlast(lines)
    print *, '"', line, '"'
    do i = 1, linecount
        print *, '"', lines(i), '"'
    end do
end program allocation

subroutine setlast(lines)
    implicit none

    character(len=*), intent(inout) :: lines(10)

    lines(ubound(lines)) = 'ZZZ'
end subroutine
