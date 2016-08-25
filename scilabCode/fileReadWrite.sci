//Aim:Read floating point numbers from a formated file and sort it in asending 
//    order and save in another text file
//Software version Scilab 5.5.2

clear;
clc;
//Before runing this program create a new txt file with name text in same directory
// enter some value values such that program can read it after execution of program 
//new txt file will be created with name new.txt
fid=mopen("text.txt","r")                         //reading the file
if(fid==-1)
    error("cannot open file\n")
else
    printf("Scilab can read selected file\n")
end
num_yet=0
done_yet=0
while(done_yet==0)
    [num_read,val(1),val(2),val(3),val(4)]=mfscanf(fid,"%f%f%f%f")
    if(num_yet<=0)
        done_yet=1;
end
end
file("close",fid)
printf("The floating point numbers from a formated file\n")
disp(val)
l=length(val)
printf("Values in assending order copyed in another text file with name newtext in same directory\n")
for i=1:(l-1)
    for j=1:(l-1)
        if(val(j)>val(j+1))
            temp=val(j)
            val(j)=val(j+1)
            val(j+1)=temp
        end
    end
end
disp(val)
fis=mopen('newtext.txt',"w")                      //creating the new file
mfprintf(fis,"%f\n%f\n%f\n%f",val(1),val(2),val(3),val(4))
file("close",fis)
