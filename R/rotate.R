.rotate <- function(coords, degrees, pivot = c(0, 0)){
    radians <- - degrees * pi / 180  
    rotated.mat <- matrix(c(cos(radians), -sin(radians), sin(radians), cos(radians)), 
                   byrow = TRUE, ncol = 2)
    t(pivot + rotated.mat %*% (t(as.matrix(coords) ) - pivot))
}
