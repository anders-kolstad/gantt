library(ganttrify)
library(ggplot2)
dat <- readxl::read_excel("data/gantt-fripro2024.xlsx")

ganttrify(project = dat,
          alpha_wp = 0,
          font_family = "Roboto Condensed",
          size_text_relative = 1, 
          mark_quarters = F,
          mark_years = T,
          month_breaks = 6,
          show_vertical_lines = FALSE,
          #label_wrap = 32,
          axis_text_align = "left",
          month_number_label = T,
          project_start_date = "2025-01"
          )+
  ggplot2::theme(axis.text.x.bottom =element_blank())

ggsave("output/gantt-fripro2024.jpg",
       width = 2200,
       height = 1000,
       units = "px",
       dpi=300)
