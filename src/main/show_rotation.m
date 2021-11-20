function show_rotation(vec, rotm, limits)
    figure('Name', 'Vector Rotation');
    plot3(0, 0, 0, 'k.'); hold on
    text(0, 0, -0.75, '0', 'Interpreter', 'latex', 'FontSize', 12);
    
    plot3([0, limits(2)], [0, 0], [0, 0], 'r-'); hold on
    text(limits(2), 0, -0.5, '$x$', 'Interpreter', 'latex', 'FontSize', 12);
    
    plot3([0, 0], [0, limits(4)], [0, 0], 'g-'); hold on
    text(0, limits(4)-0.5, -0.5, '$y$', 'Interpreter', 'latex', 'FontSize', 12);
    
    plot3([0, 0], [0, 0], [0, limits(6)], 'b-'); hold on
    text(0.25, 0.25, limits(6)-0.5, '$z$', 'Interpreter', 'latex', 'FontSize', 12);

    rvec = rotm * vec;
    
    vec_pos = ['$(', num2str(vec(1), '%.3f'), ', ', ...
                     num2str(vec(2), '%.3f'), ', ', ...
                     num2str(vec(3), '%.3f'), ')$'];
    plot3([0, vec(1)], [0, vec(2)], [0, vec(3)], 'k--'); hold on
    text(vec(1), vec(2), vec(3), vec_pos, 'Interpreter', 'latex', 'FontSize', 10);
    
    rvec_pos = ['$(', num2str(rvec(1), '%.3f'), ', ', ...
                      num2str(rvec(2), '%.3f'), ', ', ...
                      num2str(rvec(3), '%.3f'), ')$'];
    plot3([0, rvec(1)], [0, rvec(2)], [0, rvec(3)], 'k:'); hold on
    text(rvec(1), rvec(2), rvec(3), rvec_pos, 'Interpreter', 'latex', 'FontSize', 10);
    
    grid on;
    axis(limits);
    set(gca, 'FontName', 'Euclid', 'FontSize', 12);
end

