#!/bin/bash

# 1. 새로운 협업 그룹 projectA 설계
sudo groupadd projectA

# 2. 2명의 신규 팀원 생성 및 그룹 배치
sudo useradd -m -G projectA developer1
sudo useradd -m -G projectA developer2

# 3. /projectA 전용 금고(디렉토리) 생성
sudo mkdir /projectA

# 4. 권한 설정 (Vault 770)
# 소유자는 root(또는 관리자), 그룹은 projectA
sudo chown root:projectA /projectA
# 권한을 770으로 설정 (소유자: 읽기/쓰기/실행, 그룹: 읽기/쓰기/실행, 나머지: 접근 불가)
sudo chmod 770 /projectA

# 5. 증명 (id 및 ls -l)
echo "=== [ID Check for developer1] ==="
id developer1
echo ""
echo "=== [ID Check for developer2] ==="
id developer2
echo ""
echo "=== [Directory Permissions Check] ==="
ls -ld /projectA
