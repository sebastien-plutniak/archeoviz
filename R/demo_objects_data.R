.demo_objects_data <- function(n.objects){
  df <- data.frame(
    id = 1:n.objects,
    square_x = factor(sample(1:10, n.objects, replace = T, prob=c(5:1, 5:1))),
    square_y = factor(sample(1:8,  n.objects, replace = T, prob=8:1)),
    xmin = sample(1:1000, n.objects, replace = T),
    xmax = NA,
    ymin = sample(1:800, n.objects, replace = T),
    ymax = NA,
    zmin = sample(seq(200, 1000, 200), n.objects, replace = T, prob = c(1, 2, 3, 2, 2)),
    zmax = NA,
    layer = NA,
    object_type = sample(c("bone", "flint", "stone", "pottery"),
                         n.objects, replace = T, prob=c(1, 4, 2, 3)),
    object_class_size = sample(c("tiny", "small", "medium", "large", "huge"),
                               n.objects, replace = T, prob=c(1, 4, 2, 3, 1))
  )

  df$layer <- factor(df$zmin, labels = LETTERS[1:length(unique(df$zmin)) ]  )

  sample.set <- sample(1:n.objects, n.objects / 3, replace = F)
  df[sample.set, ]$xmax <- trunc(jitter(df[sample.set, ]$xmin))
  sample.set <- sample(1:n.objects, n.objects / 3, replace = F)
  df[sample.set, ]$ymax <- trunc(jitter(df[sample.set, ]$ymin))

  df
}
