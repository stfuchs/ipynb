% x0 is the base, x1 and x2 are the two joints, and x3 is the end-effector.  xg
% is the goal. 
%
% Renders the base as a larger black dot, the main robot arm, including the
% end-effector, as a sequence of blue links connected at joints by slightly
% larger blue dots. And renders the goal as a large green dot. When the
% end-effector overlaps the goal, the end-effector should render over the top
% of the green dot.
function render_pointwise_planar_manipulator(x0, x1, x2, x3, xg)
  X_all = [x0, x1, x2, x3]';

  figure(1);
  clf;
  hold on
  plot(xg(1), xg(2), '.', 'markersize', 20, 'color', [0, .7, 0]);
  plot(X_all(:,1), X_all(:,2), 'b.-', 'linewidth', 3, 'markersize', 10);
  plot(x0(1), x0(2), '.', 'markersize', 20, 'color', [0, 0, 0]);
  hold off
  axis(4.5*[-1, 1, -1, 1])
  axis equal;
return
