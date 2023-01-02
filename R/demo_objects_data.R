demo_objects_data <- function(n.objects=NULL){
  df <- data.frame(
    id = seq_len(n.objects),
    square_x = factor(sample(seq_len(10), n.objects, replace = TRUE, prob=c(5:1, 5:1))),
    square_y = factor(sample(seq_len(8),  n.objects, replace = TRUE, prob=8:1)),
    xmin = sample(seq_len(999), n.objects, replace = TRUE),
    xmax = NA,
    ymin = sample(seq_len(799), n.objects, replace = TRUE),
    ymax = NA,
    zmin = sample(seq(200, 1000, 200), n.objects, replace = TRUE, prob = c(1, 2, 3, 2, 2)),
    zmax = NA,
    layer = NA,
    object_type = sample(c("bone", "lithic", "shell", "pottery"),
                         n.objects, replace = TRUE, prob=c(1, 4, 2, 3)),
    object_class_size = sample(c("tiny", "small", "medium", "large", "huge"),
                               n.objects, replace = TRUE, prob=c(1, 4, 2, 3, 1)),
    year = sample(seq.int(1980, 2000), n.objects, replace = TRUE),
    stringsAsFactors = FALSE
  )

  df$layer <- factor(df$zmin, labels = LETTERS[seq_len(length(unique(df$zmin)))] )

  sample.set <- sample(seq_len(n.objects), n.objects / 3, replace = FALSE)
  df[sample.set, ]$xmax <- trunc(jitter(df[sample.set, ]$xmin))
  sample.set <- sample(seq_len(n.objects), n.objects / 3, replace = FALSE)
  df[sample.set, ]$ymax <- trunc(jitter(df[sample.set, ]$ymin))

  df$zmin <- sapply(df$zmin, function(x) { x + sample(seq.int(-90, 90), 1, prob=seq_len(181))} )

  df$object_lithic_type <- NA
  df[df$object_type == "lithic", ]$object_lithic_type <- 
    sample(c("blade", "scraper", "point", "biface"),
           nrow(df[df$object_type == "lithic", ]),
           replace = TRUE)
  df
}
