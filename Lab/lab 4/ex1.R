#Type Conversion
as.logical(c(1,0,2,0,3,4,1,-1,-19))
as.complex(c(1,0,2,0,3,4,1,-1,-19,0.08,2.5,5.67,-0.23,-3.3))
as.numeric(c(1,2,3,7,9))
as.numeric(c(1.1,2,3,7,9))
as.numeric(c(TRUE,FALSE,1,2,0.33))
as.numeric(c(2+3i,5+4i,0+10i,0.5+2.3i,1+3.34i,5.55-2i,0+0i))
as.logical(c(2+3i,5+4i,0+10i,0.5+2.3i,1+3.34i,5.5-2i,0+0i))

as.character(c(1,0,2,0,3,4,1,-1,-19))
as.character(c(1,0,2,0,3,4,1,-1,-19,0.08,2.5,5.67,-0.23,-3.3))
as.character(c(1,2,3,7,9))
as.character(c(1.1,2,3,7,9))
as.character(c(TRUE,FALSE,1,2,0.33))
as.character(c(2+3i,5+4i,0+10i,0.5+2.3i,1+3.34i,5.55-2i,0+0i))
as.character(c(2+3i,5+4i,0+10i,0.5+2.3i,1+3.34i,5.5-2i,0+0i))

# we also have 
as.integer(1+2i)
as.integer(2.45+3.5i)

as.complex(23)
as.complex(2.67)
