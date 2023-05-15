demo_objects_data <- function(n.objects=NULL){
  df <- data.frame(
    id = seq_len(n.objects),
    square_x = factor(sample(seq_len(9), n.objects, replace = TRUE, prob=c(5:1, 4:1))),
    square_y = factor(sample(seq_len(7),  n.objects, replace = TRUE, prob=7:1)),
    xmin = sample(seq_len(899), n.objects, replace = TRUE),
    xmax = NA,
    ymin = sample(seq_len(699), n.objects, replace = TRUE),
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

  # selection of objects to alterate:
  sample.set <- sample(seq_len(n.objects), n.objects / 5, replace = FALSE)
  
  # alterate X coordinates:
  df[sample.set, ]$xmax <- df[sample.set, ]$xmin + sample(seq_len(100), length(sample.set), replace = TRUE) - 1
  df[which(df$xmax > 899), ]$xmax <- df[which(df$xmax > 899), ]$xmin
  
  # half of the subset will have only 1 coordinate alterated:
  idx <- sample(seq_len(length(sample.set)),  length(sample.set) / 2)
  sample.set[idx] <-  sample.set[idx] + 1
  
  # alterate Y coordinates:
  df[sample.set, ]$ymax <- df[sample.set, ]$ymin + sample(seq_len(100), length(sample.set), replace = TRUE) - 1
  df[which(df$ymax > 699), ]$ymax <- df[which(df$ymax > 699), ]$ymin
  
  # alterate Z coordinate
  df$zmin <- sapply(df$zmin, function(x) { x + sample(seq.int(-90, 90), 1, prob=seq_len(181))} )

  # half of the subset will have only 3 coordinate alterated:
  idx <- sample(seq_len(length(sample.set)),  length(sample.set) / 2)
  sample.set[idx] <-  sample.set[idx] + 1
  
  # alterate 2 coordinates:
  df[sample.set, ]$zmax <- df[sample.set, ]$zmin + sample(seq_len(50), length(sample.set), replace = TRUE) - 1
  df[which(df$zmax > 999), ]$zmax <- df[which(df$zmax > 999), ]$zmin
  
  df$object_lithic_type <- NA
  
  if(nrow(df[df$object_type == "lithic", ]) > 0){
    df[which(df$object_type == "lithic"), ]$object_lithic_type <-
      sample(c("blade", "scraper", "point", "biface"),
             nrow(df[which(df$object_type == "lithic"), ]),
             replace = TRUE)
  }
  
  
  df[complete.cases(df$id),]
}

