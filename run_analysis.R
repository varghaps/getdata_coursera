##read data
  test<-read.csv("X_test.txt",header = FALSE, sep = "",colClasses="numeric")  
  test_labels<-read.csv("y_test.txt",header = FALSE, colClasses="numeric")
  test_subject<-read.csv("subject_test.txt",header = FALSE, colClasses="numeric")

  train<-read.csv("X_train.txt",header = FALSE, sep = "",colClasses="numeric")  
  train_labels<-read.csv("y_train.txt",header = FALSE, colClasses="numeric")
  train_subject<-read.csv("subject_train.txt",header = FALSE, colClasses="numeric")

  features<-read.csv("features.txt",header = FALSE, sep="")
  activities<-read.csv("activity_labels.txt",header = FALSE, sep="")
  
##bind test and train data
  full_data<-rbind(test,train)
  full_labels<-rbind(test_labels,train_labels)
  full_subject<-rbind(test_subject,train_subject)  
  
##extract only the mean and std measurements from features
  mean_std<-grepl("mean()|std()",features[,2])
  full_data<-full_data[,mean_std]

##give variable names from features  
  sel_features<-as.vector(features[mean_std,2])
  colnames(full_data)<-sel_features

##add activity names&subject codes
  
  #change labels, subjects to numeric from list, otherwise we can not create factors with names
    full_labels<-as.numeric(unlist(full_labels))
    full_subject<-as.numeric(unlist(full_subject))
  
  #add activity factors to full_data
    full_data$activity<-factor(full_labels,labels=activities[,2])
  
  #add subject factors to full_data
  full_data$subject<-factor(full_subject)
  
##create tidy data set with the average of each variable for each activity and each subject
  final_data = aggregate(full_data[,1:79], by=list(activity = full_data$activity, subject=full_data$subject), FUN=mean) 
  
  write.table(final_data, "tidy_data.txt", row.name=FALSE)  