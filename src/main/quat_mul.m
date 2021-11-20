function q = quat_mul(q1, q2)
    assert(length(q1) == 4, 'Expected q1 to be a quaternion.');
    assert(length(q2) == 4, 'Expected q2 to be a quaternion.');
    
    u0 = q1(1);
    v0 = q2(1);
    u = q1(2 : 4);
    v = q2(2 : 4);
    q = [u0 * v0 - u * v', u0 * v + v0 * u + cross(u, v)];
end

