library(googleVis)
motion_reg <- gvisMotionChart(datPlotWide, idvar="region_en",
                              colorvar="level",
                              timevar="year",
                              xvar="average_percapita_income",
                              yvar="infant_mortality_rate",
                              sizevar="population_total",
                              options=list(height=900, width=1100))

print(motion_reg, file="rusRegionGVis.html")
