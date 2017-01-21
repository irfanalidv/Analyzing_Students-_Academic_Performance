St.Data %>% 
  # tables get automatically converted to a data.frame
  tauchart() %>%
  tau_bar( 
    c( "VisITedResources","gender" )
    , c( "StageID" , "NationalITy")
    , "Topic"
  ) %>%
  tau_legend()
