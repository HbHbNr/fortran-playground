program allocation
    implicit none

    integer, parameter            :: linecount = 10
    character(len=8), allocatable :: line
    character(len=8), allocatable :: lines(:)
    integer                       :: i

    allocate(line, source='A')
    allocate(lines(linecount), source='BB')
    lines(linecount / 2) = 'CCC'
    print *, '"', line, '"'
    do i = 1, linecount
        print *, '"', lines(i), '"'
    end do
end program allocation
