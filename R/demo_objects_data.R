demo_objects_data <- function(n.objects){
  df <- data.frame(
    id = seq_len(n.objects),
    square_x = factor(sample(1:10, n.objects, replace = TRUE, prob=c(5:1, 5:1))),
    square_y = factor(sample(1:8,  n.objects, replace = TRUE, prob=8:1)),
    xmin = sample(1:999, n.objects, replace = TRUE),
    xmax = NA,
    ymin = sample(1:799, n.objects, replace = TRUE),
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

  df$layer <- factor(df$zmin, labels = LETTERS[1:length(unique(df$zmin)) ]  )

  sample.set <- sample(1:n.objects, n.objects / 3, replace = FALSE)
  df[sample.set, ]$xmax <- trunc(jitter(df[sample.set, ]$xmin))
  sample.set <- sample(1:n.objects, n.objects / 3, replace = FALSE)
  df[sample.set, ]$ymax <- trunc(jitter(df[sample.set, ]$ymin))

  df$zmin <- sapply(df$zmin, function(x) x + sample(seq.int(-90, 90), 1, prob=1:181))

  df$object_lithic_type <- NA
  df[df$object_type == "lithic", ]$object_lithic_type <- 
    sample(c("blade", "scraper", "point", "biface"),
           nrow(df[df$object_type == "lithic", ]),
           replace = TRUE)
  df
}
