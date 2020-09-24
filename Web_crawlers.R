# Define the function FindTop()
FindTop        <- function(N){
  MoviePage  <- readLines('https://movie.douban.com/top250', encoding='UTF-8')
  Pattarn    <- '<span class=\"title\">&nbsp;/&nbsp;([^<]*)</span>'
  Lines      <- grep(Pattarn, MoviePage, value=TRUE)
  Lines      <- sub(Pattarn,  '\\1', Lines )
  Names      <- sub('^ *', '', Lines)
  Names      <- sub('&#39;', "'", Names)
  print(Names[1:N])
}
# Call the function with arguement 5 and 10
FindTop(5)
FindTop(10)