>> figure
hold on
set(0, 'DefaultLineLineWidth', 4);
% feet
x = (1:.01:8);
plot(x,-1 .* (x-2).*(x-1),'LineWidth',4.0);
plot(x,-1 .* (x-6).*(x-7),'LineWidth',4.0);
plot(x,-1 .* (x-7).*(x-8),'LineWidth',4.0);
%face
theta = 1.5*pi:.01:1.79*pi;
plot(4*cos(theta)+6.5, 4*sin(theta)+4.25);
theta = 1.25*pi:.01:1.5*pi;
plot(3*cos(theta)+9.5, 3*sin(theta)+5);
theta = .77*pi:.01:1*pi;
plot(4*cos(theta)+10.5, 4*sin(theta)+.25);
% nose
theta = 0:.01:2*pi;
plot(.25*cos(theta)+9.75, .25*sin(theta)+2);
% eye
theta = 0:.01:2*pi;
plot(.15*cos(theta)+7.5, .15*sin(theta)+2.1);
% back curve
theta = (.37:.05 :1)*pi;
xPoints = 4*cos(theta)+5;
yPoints = 3*sin(theta);
for idx = 1:length(theta)
    thetai = theta(idx);
    alpha = (-.5*pi + thetai):.01:(thetai);
    plot(.5*cos(alpha)+xPoints(idx), .5*sin(alpha)+yPoints(idx))
end
xlim([0 10]);
ylim([0,5]);
