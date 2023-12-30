pacman::p_load(
    tidyverse,
    ggplot2,
    dagitty,
    RColorBrewer,
    gridExtra,
    haven,
    dplyr,
    purrr,
    ggdag
)

# dag code 


dag{
bb="0,0,1,1"
"anemia-cronica" [pos="0.409,0.715"] # nolint
"compartilhar-agulha" [pos="0.396,0.026"]
"droga-ilicita" [pos="0.220,0.310"]
"risky-sex" [exposure,pos="0.295,0.312"]
acidentes [pos="0.282,0.487"]
transfusao [pos="0.485,0.502"]
vhc [outcome,pos="0.503,0.323"]
"anemia-cronica" -> transfusao [pos="0.462,0.628"]
"compartilhar-agulha" -> vhc [pos="0.471,0.092"]
"droga-ilicita" -> "compartilhar-agulha" [pos="0.261,0.089"]
"droga-ilicita" -> "risky-sex"
"droga-ilicita" -> acidentes [pos="0.239,0.414"]
"risky-sex" -> vhc [pos="0.425,0.299"]
acidentes -> transfusao [pos="0.377,0.543"]
transfusao -> vhc [pos="0.507,0.423"]
}



