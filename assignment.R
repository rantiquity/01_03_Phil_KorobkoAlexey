# загружаем нужные пакеты
library(languageR)
library(ggplot2)

# загружаем датасет
meta <- oldFrenchMeta

# допишите ваш код ниже
# постройте в ggplot столбиковую диаграмму (_bar), 
# показывающую распределение произведений по темам; цветом-заливкой закодируйте жанр; 
g <- meta |>
  ggplot(aes(x = Topic, fill = Genre)) +
  geom_bar()

  # уберите названия осей; добавьте заголовок "Old French Data"
g <- g + 
  labs(
  title = "Old French Data",
  x = NULL,
  y = NULL
)

  # поверните координатную ось; 
g <- g +
  coord_flip()

  # поменяйте тему оформления на черно-белую (bw) 
g <- g +
  theme_bw()

g

class(g)
  # !!!! сохраните график как объект в окружении под именем g
  # !!!!вызов class(g) должен возвращать "gg"     "ggplot"
