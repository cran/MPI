## ----warning=F, message=F-----------------------------------------------------
library(MPI)
library(kableExtra) 

## -----------------------------------------------------------------------------
data(examplePovertydf)

## ----example, results = 'asis', echo = FALSE----------------------------------
kable(head(examplePovertydf, n = 3), 
      "html", 
      col.names = gsub("[.]", " ", names(examplePovertydf))) %>% 
  kable_styling()

## -----------------------------------------------------------------------------
out_seq <- AF_Seq(examplePovertydf, g = "Region", k = 3)

## ---- echo=FALSE--------------------------------------------------------------
out_seq[[1]]$groupname

## ---- echo=FALSE--------------------------------------------------------------
out_seq[[1]]$total

## ---- echo=FALSE--------------------------------------------------------------
out_seq[[1]]$poors

## ---- echo=FALSE--------------------------------------------------------------
out_seq[[1]]$H

## ---- echo=FALSE--------------------------------------------------------------
out_seq[[1]]$A

## ---- echo=FALSE--------------------------------------------------------------
out_seq[[1]]$M0

## ----outt1, results = 'asis', echo=FALSE--------------------------------------
kable(out_seq[[1]]$DimentionalContribution, 
            "html",
            col.names = gsub("[.]", " ", names(out_seq[[1]]$DimentionalContribution))) %>%
  kable_styling()

## ----outt2, results = 'asis', echo=FALSE--------------------------------------
kable(out_seq[[1]]$pov_df, 
            "html",
            col.names = gsub("[.]", " ", names(out_seq[[1]]$pov_df))) %>%
  kable_styling()

