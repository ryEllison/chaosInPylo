'''Dependency check and/or installation'''

#Sys block
import warnings
warnings.simplefilter(action = 'ignore')

#Lib block
import pip._internal
import pandas as pd
import pkg_resources

#List of python dependencies
pkgs = []

#Dependency check/installation
if len(pkgs) == 0:
	print('\nNo dependencies required...\n')

else:
	installedPkgs = pd.DataFrame(i for i in pkg_resources.working_set)
	installedPkgs.columns = ['pkgs']

	for i in range(len(pkgs)):
	    if pkgs[i] not in installedPkgs['pkgs']:
	       pip._internal.main(['install', pkgs[i]])