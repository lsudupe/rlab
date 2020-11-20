sexo <- "mujer"
edad <- 25

if(sexo=="mujer") {
  if(edad<10)
    mc_opt <- "No registrado"
  else
  if(edad<=30)
    mc_opt <- "20-26"
  else
  if(edad<=40)
    mc_opt <- "21-27"
  else
  if(edad<=50)
    mc_opt <- "22-28"
  else
  if(edad<=60)
    mc_opt <- "22-30"
  else
    mc_opt <- "22-31"
} else {
  if(edad<10)
    mc_opt <- "No registrado"
  else
  if(edad<=30)
    mc_opt <- "12-18"
  else
  if(edad<=40)
    mc_opt <- "13-19"
  else
  if(edad<=50)
    mc_opt <- "14-20"
  else
  if(edad<=60)
    mc_opt <- "16-20"
  else
    mc_opt <- "17-21"
}
print(mc_opt)
