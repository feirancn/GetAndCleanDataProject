## read the train and test data
 readset <- function(source) {
 	file_features <- "./features.txt"
 	features <- read.table(file_features,stringsAsFactor = FALSE,as.is=TRUE)
 	features <- features[,2]
 	
 	file_labels<- "./activity_labels.txt"
 	labels <- read.table(file_labels,stringsAsFactor = FALSE)
 	names(labels) <-c("V1","Activity")

 	file_set <- paste("./",source,"/x_",source,".txt",sep="")
 	source_set<- read.table(file_set)
 	colnames(source_set)<-features
 	source_set <-source_set[,unique(colnames(source_set))]
 	source_set1 <- select(source_set,matches("mean\\(\\)|std\\(\\)"))
 	
 	file_label <- paste("./",source,"/y_",source,".txt",sep="")
 	source_label <- read.table(file_label)
 	
 	
 	file_subject <- paste("./",source,"/subject_",source,".txt",sep="")
 	source_subject <- read.table(file_subject)
 	colnames(source_subject) <- "Subject"
 	
 	source_l <- cbind(source_subject ,source_label,source_set1)
 	

 	source_l2<-merge(source_l,labels,by.x="V1",by.y="V1",sort=FALSE)
 	source_l2<-select(source_l2,-V1)
 	colnames(source_label1) <-"Activity"
 	
	source <- source_l2 	
 }
 
 	testset<-readset("test")
 	trainset<-readset("train")
 	combined<-rbind(testset,trainset)
 	
 	id <- c("Subject","Activity")
 	msure <- names(testset[,c(2:67)])
 	
 	summary <- melt(combined,id = id,measure.vars<-msure)
 	summary1 <- dcast(summary,Subject+Activity ~ variable, mean)
 	
 	# summary <- ddply(combined1,id,summarise,N=length(combined))
 	
 	# summary <- melt(combined,id = id)
 	# summary1 <- combined %>% group_by(Subject,Activity) %>% summarise_each(funs(mean))
 	
 	write.table(summary1,file="result.txt",row.name=FALSE,sep=",")
 	
