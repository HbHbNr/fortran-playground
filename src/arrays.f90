program arrays
    implicit none

    integer, dimension(1:4) :: a = (/ 1, 2, 3, 4 /)
    integer, dimension(1:2) :: b

    print *, a
    b = a(2:3)  ! creates a new array
    print *, b
    b(1) = 5
    print *, b
    print *, a
end program arrays
