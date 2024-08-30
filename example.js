        function calculate() {
              const avogadro = 6.023e23; // avogadro's number
              const mass_U = 238; //Uranium238 mass (1mol)
              const mass_Pu = 239; //Plutonium239 mass (1mol)
              const target_mass = 1;
        
              // 입력 값 가져오기
              const neutron_rate = parseFloat(document.getElementById('neutron_rate').value);
        
              // 계산
              const mol_Pu_per_sec = neutron_rate / avogadro;
              const mass_Pu_per_sec = mol_Pu_per_sec * mass_Pu;
              const time = target_mass / mass_Pu_per_sec;
        
              // 결과 출력
              document.getElementById('result').textContent = `{target_mass}의 Pu-239를 생성하는 데 걸리는 시간: ${time.toFixed(2)} 초 (약 ${time/3600} 시간)`;
    
