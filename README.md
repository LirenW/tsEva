# tsEva #

This MATLAB toolbox contains an implementation of the Transformed-Stationary (TS) methodology for non-stationary EVA as described in Mentaschi et al. (2016). In synthesis this approach consists in (i) transforming a non-stationary time series into a stationary one to which the stationary EVA theory can be applied; and (ii) reverse-transforming the result into a non-stationary extreme value distribution.

This toolbox is free of external dependencies, and contains calls for both the statistical analysis and the graphical rendering of the results.

A version working on MATLAB R2014b is available at the branch 0.1_R2014b of this project, and can be downloaded [here](https://github.com/menta78/tsEva/archive/0.1_R2014b.zip).
Subdirectory "test" in the toolbox contains sample scripts (sampleGenerateSeriesEVAGraphs.m and sampleGenerateSeriesEVAGraphs_ciPercentile.m) which illustrate the features of the toolbox.

## References ##
[Mentaschi, L., Vousdoukas, M., Voukouvalas, E., Sartini, L., Feyen, L., Besio, G., and Alfieri, L.: Non-stationary Extreme Value Analysis: a simplified approach for Earth science applications, Hydrol. Earth Syst. Sci. Discuss., doi:10.5194/hess-2016-65, in review, 2016](http://www.hydrol-earth-syst-sci-discuss.net/hess-2016-65/)
