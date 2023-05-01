% function to calculate parking rates

function parking2
parking=input('which parking did you use\nPress "1" for long term parking or "2" for short term parking: ');
weeks=input('how many weeks did you park: ');
days=input('how many days did you park: ');
hours=input('how many hours did you park: ');
mins=input('how many minutes did you park: ');
totmins=(weeks*7*24*60)+(days*24*60)+(hours*60)+mins;
if parking==1
    fprintf('you used long term parking lot\n');
    if totmins>0 && totmins<=(6*60)
        bill=(ceil(totmins/60)*1);
    elseif totmins>(6*60) && totmins<=(24*60)
        bill=6;
    elseif totmins>(24*60) && totmins<=(42*60)
        if (totmins/(24*60)-fix(totmins/(24*60)))<0.25
            bill=(fix(totmins/(24*60))*6)+(((totmins/(24*60)-fix(totmins/(24*60)))*24)*1);
        else
            bill=(ceil(totmins/(24*60))*6);
        end
    elseif totmins>(42*60) && totmins<=(7*24*60)
        bill=42;
    elseif totmins>(7*24*60)
        if (totmins/(7*24*60)-fix(totmins/(7*24*60)))<0.25
            bill=(fix(totmins/(7*24*60))*42)+((totmins/(7*24*60)-fix(totmins/(7*24*60)))*42);
        else
            bill=(ceil(totmins/(7*24*60))*42);
        end
    end
elseif parking==2
    if totmins<=30
        bill=0;
    elseif totmins>30 && totmins<=(30+(25*20))
        bill=(ciel((totmins-30)/20)*1);
    elseif totmins>(30+(25*20)) && totmins<=(24*60)
        bill=25;
    elseif totmins>(24*60)
        if ((totmins/(24*60))-fix(totmins/(24*60)))<0.33333333333
        bill=(fix(totmins/(24*60))*25)+(((totmins/(24*60))-fix(totmins/(24*60)))*72);
        else
            bill=(ciel(totmins/(24*60))*25);
        end
    end
end
fprintf('your total bill is: $ %d\n',bill);

            
        
    
       