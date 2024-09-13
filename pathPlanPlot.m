function y = pathPlanPlot(innerConePosition,outerConePosition,P,DT,TO,xmp,ymp,cIn,cOut,xq,yq) %function to animate the plot
 plot(innerConePosition(:,1),innerConePosition(:,2),'.y','MarkerFaceColor','y')
 hold on
 plot(outerConePosition(:,1),outerConePosition(:,2),'.b','MarkerFaceColor','b')
 plot(P(1,1),P(1,2),'|','MarkerEdgeColor','#77AC30','MarkerSize',15, 'LineWidth',5) 
 grid on
 ax = gca;
 ax.GridColor = [0, 0, 0]; % [R, G, B]
 xlabel('x(m)')
 ylabel('y (m)')
 set(gca,'Color','#EEEEEE')
 hold on
 plot(xmp,ymp,'*k')
 drawnow
 hold on
 triplot(TO,'Color','#0072BD')
 drawnow
 hold on
 plot(DT.Points(cOut',1),DT.Points(cOut',2), ...
 'Color','#7E2F8E','LineWidth',2)
 plot(DT.Points(cIn',1),DT.Points(cIn',2), ...
 'Color','#7E2F8E','LineWidth',2)
 drawnow
 hold on
 plot(xq,yq,'Color','#D95319','LineWidth',3)
 drawnow 
end
