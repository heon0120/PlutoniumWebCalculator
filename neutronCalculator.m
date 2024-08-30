
      % 변수 정의
neutron_rate = 1e15; % 초당 흡수되는 중성자 수
avogadro = 6.023e23; % 아보가드로 수
mass_U = 238; % U-238의 몰 질량 (g/mol)
mass_Pu = 239; % Pu-239의 몰 질량 (g/mol)
target_mass = 1; % 생성하고자 하는 Pu-239의 질량 (g)
 
% 계산
% 1초에 생성되는 $ Pu-239 $의 몰 수
mol_Pu_per_sec = neutron_rate / avogadro;
 
% 1초에 생성되는 Pu-239의 질량
mass_Pu_per_sec = mol_Pu_per_sec * mass_Pu;
 
% target_mass g의 Pu-239를 생성하는 데 걸리는 시간
time = target_mass / mass_Pu_per_sec;
 
% 결과 출력
fprintf('1g의 Pu-239를 생성하는 데 걸리는 시간: %.2f 초 (약 %.2f 시간)\n', time, time/3600);