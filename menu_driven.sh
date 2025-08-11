echo ""
echo "<<<<<<<<< <<<<<   Welcome to Rohh's Worksapce   >>>>> >>>>>>>>>>"
echo ""
echo "I am Here to Assist You Today....!"
echo ""
echo "+++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
echo "+ Aaj aap konsa operation Perform krna chahenge Sir..   +"
echo "+ 1 - Show the Current Path                             +"
echo "+ 2 - Show the List of Files in the current directory   +"
echo "+ 3 - Create a Folder/Directory                         +"
echo "+ 4 - Create a File                                     +"
echo "+ 5 - Copy a File                                       +"
echo "+ 6 - Delete a File                                     +"
echo "+ 7 - Delete a Folder/Directory                         +"
echo "+ 8 - Rename a File                                     +"
echo "+++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
echo ""
read -p "Please Choose Your Option Sir: " chosen

case $chosen in
	1)
		echo "Bilkul Sir.. Aapke samne pesh hai -> Current Path"
		pwd;;
	2)
		echo "Bilkul Sir.. Aapke Request se pesh hai -> List of all the Files or Directories"
		ls;;
	3)
		read -p "Sure Sir!.. Aap kripaya krke apne Folder/Directory ka Naam Btaiye: " dirname
		mkdir "$dirname"
		echo ""
		echo "Aapka order Ready hai Sir"
		echo ""
		echo "Your Folder named $dirname created Successfully.. Hurray!!";;
	4)
		echo "Ok! To Aap ek File Create Karna Chahte Hain..!"
		echo "Got It.."
		echo ""
		read -p "So, Enter the Name of File You Want to Create: " filename
		touch "$filename"
		echo "Lijiye Sir... Aapka Order Taiyaar Hai..."
		echo ""
		echo "Your File named $filename is Created Successfully...!!";;
	5)
		echo "Ok Sir! To Aap File Copy Krna Chahte Hain..!"
		echo "Got It.."
		echo "So... Here is the List of the Files Given Below.."
		ls
		echo ""
		read -p "Now, Enter the Name of the File from Where You want to Copy From: " oldfile
		read -p "Great!.. Now Enter the Name of the file to Where You want to Copy To: " newfile
		cp "$oldfile" "$newfile"
		echo ""
		echo "OK ! Your File got Copied Successfully......";;
	6)
		echo "Sure ! To Aap file Delete Krna Chahte Hain.."
		echo "Ek Baar Pehle Dekh Lijiye... Konse Files Hain Already.."
		echo "Here is the list Sir.."
		ls
		echo ""
		read -p "Now, Enter the proper name of the File You want to Delete: " delfile
		rm "$delifle"
		echo ""
		echo "Yahhooo!!.. Your File Got Deleted..!"
		echo "Work Successfully Done.. Congratulations..!!";;
	7)
		echo "Ok.. First of All, Here is the List of Current Items.."
		ls
		echo ""
		read -p "Enter the Name of the Folder You want to Delete: " delfolder
		rmdir "$delfolder"
		echo "Your Order is Completed Sir..."
		echo ""
		echo "The Directory Has Been Deleted Successfully..!";;
	8)
		echo "Ok.. To Aap File Rename Krna Chahte Hain... Got It..!"
		echo "Here is the List of File.."
		ls
		echo ""
		read -p "Enter the Name of the File You Wanna Rename: " oldname
		read -p "Enter the New Name for the $oldname File: " newname
		mv "$oldname" "$newname"
		echo "" 
		echo "Contratulations..!! File Renamed Successfully...!!";;
	*)
		echo "Aapne Invalid Option Select Kr diya Sir.."
		echo ""
		echo "Quitting this Program......!"
		echo "Agar aap Sach me koi Operation Perform krna chahte hain to Kripaya krke Dubara Program ko Run Karein Aur sehi Option ko Chune...."
		echo "Dhanyabaad...!"
		echo "___________________________"
		echo "Regards"
		echo "Rohhh"
esac
