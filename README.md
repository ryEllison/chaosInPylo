
<img src="./fts/hex.png" width="25%" height="25%" style="display: block; margin: auto;" />

<!-- # Summary -->
<!-- # Dependencies -->
<!-- ### OS -->
<!-- ##### Windows -->
<!-- * .bat pseudo-executable can be used to satisfy code dependencies (__lib\_init\_.bat__). -->
<!-- ##### Linux flavors -->
<!-- * .bat pseudo-executable is specific to a Windows OS, but Jupyter notebook (i.e., .ipynb files) can be launched in the terminal or within a UI so long as Jupyter ecosystem is configured properly.  -->
<!-- ### Interpreters -->
<!-- * Python 3.7.4 -->
<!-- * R 3.6.2 -->
<!-- ### Simulator -->
<!-- * The Virtual Brain (tvb) Simulator 1.5.8 -->
<!-- NOTE: Within the tvb distribution, a native Python environment exists. A duplication of the python interpreter should be created locally and renamed __pyTVB__.  -->
<!-- ### Environmental variables -->
<!-- For proper .bat executable function, the interpreters' (i.e., python, pyTVB, and R) environmental variables should be configured such that terminal interpreter calls are successful. -->
<!-- ### Packages/Libraries -->
<!-- After proper configuration of environmental variables, installation of dependencies for all computational languages used within the project can be achieved by launching the __installDependencies.bat__ executable. The source code for dependency checks and installation can be found in the __dependencies__ directory. -->
<!-- * Due to the simulator using a native Python environment, currently no Python dependencies are required. The following code chunk is responsible for the Python dependency check and installation, and the Python packages could be found in the pkgs list below.  -->
<!-- ```{r, eval = TRUE, echo = FALSE} -->
<!-- library(reticulate) -->
<!-- ``` -->
<!-- ```{python, python dependencies, eval = FALSE, echo = TRUE} -->
<!-- '''Dependency check and/or installation''' -->
<!-- #Sys block -->
<!-- import warnings -->
<!-- warnings.simplefilter(action = 'ignore',  -->
<!--                      category = FutureWarning) -->
<!-- #Package block -->
<!-- import pip._internal -->
<!-- import pandas as pd -->
<!-- import pkg_resources -->
<!-- #List of python dependencies -->
<!-- pkgs = [] -->
<!-- #Dependency check/installation -->
<!-- if len(pkgs) == 0: -->
<!--    print('No dependencies required...') -->
<!-- else: -->
<!--    installedPkgs = pd.DataFrame(i for i in pkg_resources.working_set) -->
<!--    installedPkgs.columns = ['pkgs'] -->
<!--    for i in range(len(pkgs)): -->
<!--        if pkgs[i] not in installedPkgs['pkgs']: -->
<!--            pip._internal.main(['install', pkgs[i]]) -->
<!-- ``` -->
<!-- * The code chunk below is responsible for the R dependency check and installation. The required libraries can be found in the lib list below.  -->
<!-- ```{R, r dependencies, eval = FALSE, echo = TRUE} -->
<!-- if (FALSE){ -->
<!--    'Dependency check and/or installation' -->
<!-- } -->
<!-- #Sys block -->
<!-- options(warn = -1) -->
<!-- #Atomic vector of R dependencies -->
<!-- libs <- c('igraph', -->
<!--           'dplyr', -->
<!--           'plotly', -->
<!--           'htmlwidgets', -->
<!--           'RColorBrewer', -->
<!--           'ggraph', -->
<!--           'foreach', -->
<!--           'hexSticker', -->
<!--           'showtex', -->
<!--           'knitr', -->
<!--           'reticulate', -->
<!--           'magick', -->
<!--           'ggplot2', -->
<!--           'patchwork', -->
<!--           'doParallel', -->
<!--           'flextable') -->
<!-- #Dependency check/installation -->
<!-- if (length(libs) == 0){ -->
<!--    cat('No dependencies required...\n') -->
<!-- } else{ -->
<!--    for (i in libs){ -->
<!--        if (i %in% rownames(installed.packages()) == TRUE){ -->
<!--            cat('Requirement already satisfied:', i, '\n') -->
<!--        } else{ -->
<!--            install.packages(i, repos = 'http://cran.rstudio.com/') -->
<!--        } -->
<!--    } -->
<!-- } -->
<!-- ``` -->
<!-- # Navigate repo -->
<!-- * __installDependencies.bat__ executable will check and install required dependencies. -->
<!-- * __\_init\_.bat__ executable will simulate, analyze, and visualize the entire works on this project. -->
<!-- * Inside each __\_init\_.bat__ executable pertinent args can be altered. -->
<!-- * __main__ directory contains the source code partitioned into its respective __figure\*__ directories. -->
<!-- * Within each __figure\*__ directory, the **fig\*\_init\_.bat** executable will simulate, analyze, and visualize all work relevant to that figure. -->
<!-- * Source code for the simulation, analysis, and visualization for each figure can be found in __src__ in each __figure\*__ directory. -->
<!-- * __figData__, __figPanels__, and __figFinal__ hold pertinent data, figure panels, and final figures. -->
<!-- NOTE: Each .bat executable automates the organization of data and figures. -->
