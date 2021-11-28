% Лабораторная работа №1
clc; close all; clear;

%% Задание 1. Произведение кватернионов

number_of_tests = 100;
rand_min = -1000;
rand_max = 1000;
max_error = 0;
for idx = 1 : number_of_tests
    % Создаём "фиктивные" кватернионы и умножаем их
    q1 = rand_min + (rand_max - rand_min) * rand(1, 4);
    q2 = rand_min + (rand_max - rand_min) * rand(1, 4);
    q = quat_mul(q1, q2);
    
    % Создаём "настоящие" кватернионы и умножаем их
    quat1 = quaternion(q1);
    quat2 = quaternion(q2);
    quat = quat1 * quat2;
    
    % Проверка совпадения результатов
    if (quaternion(q) == quat)
        continue;
    end
    
    error = norm(quat - quaternion(q));
    if (error > max_error)
        max_error = error;
    end
end

%% Задание 2. Вращение векторов
% Границы по осям
xmin = -10;
xmax =  10;
ymin = -10;
ymax =  10;
zmin = -10;
zmax =  10;

% Случайные вектор и матрица поворота
vec = [xmin + (xmax - xmin) * rand(1);
       ymin + (ymax - ymin) * rand(1);
       zmin + (zmax - zmin) * rand(1)];  
rotm = quat2rotm(randrot(1));
limits = [xmin, xmax, ymin, ymax, zmin, zmax];

show_rotation(vec, rotm, limits);
