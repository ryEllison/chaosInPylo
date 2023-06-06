if (FALSE){
	'Dependency check and/or installation'
}

#Sys block
options(warn = -1)

#Atomic vector of R dependencies
libs <- c()

#Dependency check/installation
if (length(libs) == 0){
	cat('No dependencies required...\n')

} else {
	for (i in libs){
		if (i %in% rownames(installed.packages()) == TRUE){
	  		cat('Requirement already satisfied:', i, '\n')
		
		} else {
               install.packages(i, repos = 'http://cran.rstudio.com/')
          
          }
	}
}


