program csv
    implicit none

    character(len=20) :: stringlist(3)
    integer           :: i, intlist(4)

    stringlist(1) = '1 2 3 4'
    stringlist(2) = '1  2   3    4'
    stringlist(3) = '     1 2     3   4  '
    do i = 1, size(stringlist)
        print *, stringlist(i)
        read (stringlist(i), *) intlist
        print *, intlist
    end do
end program csv
