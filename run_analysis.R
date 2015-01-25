## Reading in the required txt files with the read.table command

features<-read.table("features.txt")
Xtrain<-read.table("X_train.txt")
Xtest<-read.table("X_test.txt")
subjecttrain<-read.table('subject_train.txt')
subjecttest<-read.table("subject_test.txt")
ytrain<-read.table("y_train.txt")
ytest<-read.table("y_test.txt")

##Attaching the name to each variable in the test and the train dataset
names(Xtest)<-features[,2]
names(Xtrain)<-features[,2]

##Attaching the subject indexes in the test and the train dataset
Xtrain<-cbind(Xtrain,subjecttrain)
Xtest<-cbind(Xtest,subjecttest)

##Attaching the activity indexes in the test and the train dataset
Xtrain<-cbind(Xtrain,ytrain)
Xtest<-cbind(Xtest,ytest)

##Renaming the last 2 columns
colnames(Xtest)[562]<-"subject"
colnames(Xtest)[563]<-"activity"
colnames(Xtrain)[562]<-"subject"
colnames(Xtrain)[563]<-"activity"

##Merging the train and the test datasets
total<-rbind(Xtrain,Xtest)

##Extracting the mean() and the std() measurement(from the columns) only exact expressions
mindex<-grep("\\bmean()\\b",names(total))
sindex<-grep("\\bstd()\\b",names(total))
total<-total[,c(mindex,sindex,562,563)]

##Uses descriptive activity names to name the activities in the data set
total[,68]<-factor(total[,68],labels=c("WALKING","WALKING_UPSTAIRS","WALKING_DOWNSTAIRS","SITTING","STANDING","LAYING"))
total[,67]<-factor(total[,67])

##creates a second, independent tidy data set with the average of each variable for each activity and each subject
average<-aggregate(total[,1:66], by=list(total$subject,total$activity),FUN=mean)
names(average)[1:2]<-c("subject","activity")

