program io
    use iso_fortran_env, only : output_unit, error_unit
    implicit none

    write (error_unit, *) 'write to stderr'
    write (output_unit, *) 'write to stdout'
end program io
