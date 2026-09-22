

clear all
close all

%Shane O'Donnell

%22336731

%Lab Group - n/a

%Task 1

x = [1 2 -2 0 -1 2]; %n2s matlab arrays start at index 1 not 0 like in cpp

%Task 2

t = [0 1 2 3 4 5]; % alt is t = 0:5;

%Task 3

figure(1)
stem(t, x);

%Task 4

title('22336731') % Figure title
xlabel('time')
ylabel('magnitude')


%Task 5
time_lower_bound = min(t) - 1;
time_upper_bound = max(t) + 1;

y_lower_bound = min(x) - 1;
y_upper_bound = max(x) + 1;

xlim([time_lower_bound time_upper_bound]) % increase range of both axees by one 
ylim([y_lower_bound y_upper_bound]) % 

%Task 6

%a = zeros(1,2);
xDelayed = horzcat(zeros(1,2),x);
tDelayed = 0:7;

%Task 7

figure(2) %creates a new figure
stem(t,x)
hold on
stem(tDelayed, xDelayed)


D_upper_bound = max(tDelayed) + 1;
Dy_upper_bound = max(xDelayed) + 1;
xlim([time_lower_bound D_upper_bound])
ylim([y_lower_bound Dy_upper_bound]);


%Task 8


title('Figure 2 ( 22336731 )') % Figure title
xlabel('t')
ylabel('m')
legend('x[n]' , 'x[n + 2]')

%Task 9

x1 = [0 -1 3 0 0];

x2 = [0 3 3 1 -2];

xAddition = x1 + x2;

%Task 10



%Task 11



%Task 12


%Task 13












