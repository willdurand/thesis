$name=$ARGV[0];  # 'ecology';
$file1n="$name.bib";
$file2n="${name}U.bib";
open(file1,"$file1n");
open(file2,">$file2n");
$titleLast=0;
while($line=<file1>){
    if($line=~/(Title|title)/ | $titleLast){
        if($line=~/(Title|title)/ | $line!~/=/){
            $line =~ s/((^\w)|(\s+\w)|(-\w)|(\n\w))/\U$1/xg;
#        $line =~ s/([\w\']+)/\u\L$1/g;  
            # $line=uc($line);
            
            $line =~ s/((A|An|Nor|Or|And|To|With|Of|The|In|For|But|On|By|At|Down|From|Into|Like|Off|Onto|Out|Over|Up|Upon|Et|Al)\s)/\L$1/xg;  
     #       $line =~ s/((A|An|Nor|Or|And|To|With|Of|The|In|For|But|On|By|At|Down|From|Into|Like|Off|Onto|Out|Over|Up|Upon)\})/\L$1/g;  
            $line =~ s/(=\s{0,}\{\w)/\U$1/xg;
            $line =~ s/(:\s+\w)/\U$1/xg; 
            $titleLast=1;
        }
        else {
            $titleLast=0;
        }
    }
    print file2 "$line";
}
close(file1);
close(file2);
