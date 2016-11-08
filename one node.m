
clc;
figure('color','white');

n=input('Number of steps: ');
x1=randi(100,1,1);
y1=randi(100,1,1);

for i=2:n
    s=round(rand(1));
    sy=round(rand(1));
    a=round(rand(1)*5);
    b=round(rand(1)*5);
    if (s==1)
    x1=x1+a;
    else
    x1=x1-a;
    end
    if sy==1
    y1=y1+b;
    else
    y1=y1-b;
    end
  
 if gt(x1,100)
       x1=x1-200;
   elseif gt(-100,x1)
       x1=200+x1;
 end
   
    if gt(y1,100)
       y1=y1-200;
   elseif gt(-100,y1)
       y1=200+y1;
    end
   
  
    %%sum=sum+sqrt((x(i-1)-x(i))^2+(y(i-1)-y(i))^2);
    plot(x1,y1,'bo',x1,y1,'--r');
   % hold all
    xlim([-100 100]);
    ylim([-100 100]);
    title('Random Walk');
    xlabel('1');
    getframe;
    pause(0.2)

end