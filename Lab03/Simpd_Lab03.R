library(ahp)
ahpFile <- system.file("extdata", "camera.ahp", package="ahp")
cameraAhp <- Load(ahpFile)
Calculate(cameraAhp)
AnalyzeTable(cameraAhp)

