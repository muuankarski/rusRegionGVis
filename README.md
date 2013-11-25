# Google Vis visualizations of Russian regional data

In this repository you will find animated visualisations of Russian Regional Statistics using [R](http://www.r-project.org/) and [googleVis](http://cran.r-project.org/web/packages/googleVis/index.html)-package. Data for visualisation is extracted and processed using [rustfare](http://markuskainu.fi/rustfare/)-package.

Repository consists of two R-script. `getData.R` extracts and processes the data and `plotGVis.R` generates the visualisation into `rusRegionGVis.html` file.

Folder `data` has file `datPlotWide.csv` that you can directly feed for googleVis's `gvisMotionChart()` -function. You can try that locally with following code:

```
# Download the data
library(RCurl)
GHurl <- getURL("https://raw.github.com/muuankarski/rusRegionGVis/master/data/datPlotWide.csv")
dat <- read.csv(text = GHurl)
# Create the bubble plot
library(googleVis)
print(gvisMotionChart(datPlotWide, idvar="region_en", timevar="year")
```

A fine tuned visualization is [here](https://rawgithub.com/muuankarski/rusRegionGVis/master/rusRegionGVis.html).