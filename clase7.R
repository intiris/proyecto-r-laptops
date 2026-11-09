
#CLASE ?? 6/7??: 31/01/2026

lap <- read.csv("laptop_price.csv", header = TRUE, sep = ",")
library(ggstatsplot)
library(ggplot2)

p <- ggscatterstats(
  data = lap,
  x = Price_euros,        
  y = Inches,           
  type = "parametric",      # Tipo de prueba estadística
  bayesian = FALSE,
  conf.level = 0.95,        # Nivel de confianza del 95%
  results.subtitle = FALSE, # Elimina el subtítulo con las anotaciones estadísticas
  title = "",               # Sin título principal
  point.label.args = list(size = 2, color = "#7499cf"), # Tamaño y color de los puntos 
  ggplot.component = ggplot2::theme_bw()             # Estilo de fondo blanco y negro
)

# Mostrar el gráfico limpio 
p
#------------------------------------------------------------------------------------
#Mostrar el coeficiente de correlación 

cor.test(lap$Price_euros, lap$Inches, method = "pearson")


#NOPARAMETRIC--------------------------------------------------------------------
p1 <- ggscatterstats(
  data = lap,
  x = Price_euros,        
  y = Inches,           
  type = "nonparametric",      
  bayesian = FALSE,
  conf.level = 0.95,        
  results.subtitle = FALSE,
  paste(x_col, "vs", y_col),             
  point.label.args = list(size = 2, color = "#7499cf"), # Tamaño y color de los puntos 
  ggplot.component = ggplot2::theme_bw() 
) 


#---------------------------------------------------------------------

p1 + facet_wrap(~ Company)  #Mostrar p1 pero agrupado por compañias 



p2 <- grouped_ggscatterstats(
  data = lap,
  x = Price_euros,          
  y = Inches, 
  grouping.var = Company, 
  type = "nonparametric",      # Prueba no paramétrica
  bayesian = FALSE,
  conf.level = 0.95, 
  point.label.args = list(size = 2, color = "#BCEE68"), 
  ggplot.component = ggplot2::theme_bw()
)

p2

lap[,1]


#BOXPLOT
    # 
p3 <- ggplot(lap, aes(x = Company, y = Price_euros)) +
  geom_boxplot(fill = "lightblue", color = "black") +
  labs(x = "Compañía", y = "Precio (Euros)", title = "") +
  theme_bw() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))

p3
