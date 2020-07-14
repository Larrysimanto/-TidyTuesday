#' -------------------------------------------------------------------------------
#' INPUT THE SUBJECT TITLE OF THE DATASET
#' The data this week comes from [SOURCE_OF_DATA](URL_TO_DATA). 
#' This [ARTICLE_SOURCE](LINK_TO_ARTICLE) talks about SUBJECT TITLE in greater detail.
#' Credit: [John Mutiso](twitter: @johnmutiso_)
#' --------------------------------------------------------------------------------

week_num = 29
#libraries -----------------------------------------------------------------------------
library(tidyverse)
library(extrafont)
loadfonts(device = 'win')

source('read_TT_data.R')
read_TTdata(week = week_num)

# plot
plot <- ggplot()

# save plot
ggsave(
    plot = plot,
    height = 8.8,
    width = 3.5,
    dpi = 500,
    device = 'png',
    filename = paste0('week',week_num,'plot.png'),
    path = paste0('2020/week ', week_num)
)