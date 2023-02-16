################Pre-Processing the Data

#Null check
isTRUE(is.na(artist_list))
isTRUE(is.null(artist_list))

#Data Format check
class(artist_list)
for(i in 1:length(artist_list))
{
  if(class(artist_list[[i]]) == "data.frame")
    next
  else
    print("ith element not a DataFrame")
}
