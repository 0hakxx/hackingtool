# hackingtool 사용법

콘솔을 단계별로 따라가는 안내. 아래의 모든 단계는 당신이 **입력하는 것** 과
돌려받는 **결과** 다 — 코드베이스에 대한 사전 지식은 필요 없다.

> **인가된 대상에만.** 여기 있는 모든 것은 당신이 대상을 소유하거나 테스트 권한을
> 서면으로 받았음을 전제한다. hackingtool 은 먼저 묻지 않고 한 단계도 실행하지
> 않으며 결과를 지어내지 않는다.

> **TUI vs `--classic`.** 기본 `hackingtool` 은 대화형 TUI 다: 카테고리를
> 탐색하고, 입력으로 모든 도구를 검색하며, `↑↓`/`Enter`/`Esc` 로 이동하고 `/`
> 로 명령 팔레트를 연다. 아래에서 가르치는 `/…`, `@…`, 자연어 **문법** (섹션 2,
> 4, 5, 8)은 **`--classic`** REPL 이다 — `hackingtool --classic` 으로 실행한다.
> 이 문법을 기본 TUI 에 이식하는 것은 Phase 2 다.

- [1. 첫 실행](#1-first-run)
- [2. 60 초 안에 문법 익히기](#2-learn-the-grammar-in-60-seconds)
- [3. 도구 열기와 설치](#3-open-and-install-a-tool)
- [4. 카탈로그에 없는 도구 찾기 (`/find`)](#4-find-a-tool-that-isnt-in-the-catalog-find)
- [5. 목표 세우고 실행 (`/goal`)](#5-plan-and-run-an-objective-goal)
- [6. 모델 연결 (`/config`)](#6-connect-a-model-config)
- [7. `/find` 용 GitHub 토큰 추가 (`/config github`)](#7-add-a-github-token-for-find-config-github)
- [8. 백그라운드 pane 에서 도구 실행](#8-run-tools-in-background-panes)
- [9. Headless 모드: 교전, 파이프라인, 보고서](#9-headless-mode-engagements-pipelines-reports)

---

## 1. 첫 실행

1. 설치 ([README](../README.md#installation) 참고). 체크아웃에서 `hackingtool`
   을 PATH 에 올리는 가장 빠른 경로:

   ```bash
   git clone https://github.com/Z4nzu/hackingtool.git
   cd hackingtool
   pipx install .
   ```

2. 실행:

   ```bash
   hackingtool
   ```

3. 첫 실행 시 hackingtool 이 홈 디렉터리를 만든다 — 그 밖에는 아무것도 쓰지 않는다:

   | 경로 | 역할 |
   |---|---|
   | `~/.hackingtool/config.json` | 설정(첫 실행 시 기본값) |
   | `~/.hackingtool/.env` | 주석 처리된 비밀 템플릿, `chmod 600` — 안에 활성 비밀은 없다 |
   | `~/.hackingtool/tools/` | 설치한 도구들이 clone/빌드되는 곳 |
   | `~/.hackingtool/history` | `↑`/`↓` 명령 이력 |

4. 배너와 프롬프트가 뜬다. 헤더 줄이 지금 상태를 알려 준다: OS, IP,
   `22 categories · 219 active · 44 archived` (이 카운트는 내장 업데이트/제거
   메뉴를 포함한다. 도구 카탈로그 자체는
   [21 카테고리 / 219 도구](TOOLS.md)).

5. `/help` 로 명령 카드를 보고, `q` (또는 `/quit`, `Ctrl-D`) 로 나간다.

터미널이 대화형이 아니거나 `prompt_toolkit` 을 쓸 수 없으면 고전 번호 메뉴로
대체된다 — 기능은 같고 명령 대신 숫자를 쓴다. `hackingtool --classic` 으로 언제든
강제할 수 있다.

---

## 2. 60 초 안에 문법 익히기

입력할 수 있는 것은 정확히 세 가지다:

| 입력 | 의미 | 예시 |
|---|---|---|
| `/…` | 실행할 명령 | `/search subdomain` |
| `@…` | 이름으로 가리키는 대상 | `@nmap`, `@tag:osint` |
| 그 외 | 자연어로 적는 "하고 싶은 일" | `crack a wifi handshake` |

순서대로 해 보자:

1. `/tags` — 각 태그를 도구 수와 함께 출력(현재 63 개 사용 중).
2. `@tag:osint` — 그 태그가 붙은 도구들을 나열하고 번호로 하나를 고르게 한다.
3. `@nmap` — 도구를 바로 연다(대소문자 무시 + 퍼지 매칭이라 `@nmpa` 도 찾아 준다).
4. `/search wordlist` — 이름·설명·태그에서 키워드 검색.
5. `crack a wifi handshake` — 슬래시도 @ 도 없음: 추천기가 당신의 말을 읽고
   맞는 도구를 보여 준다.

Tab 은 명령·도구 이름·태그를 완성한다. `↑`/`↓` 가 이력을 돌린다. `Ctrl-C` 는
현재 줄을 지우고 `Ctrl-D` 는 종료한다.

---

## 3. 도구 열기와 설치

1. 연다: `@nuclei` (또는 `/run nuclei`).
2. 도구 카드가 보인다: 설명, 프로젝트 링크, 그리고 — 큐레이션된 경우 — 자주
   쓰는 작업에 대한 실제 명령 치트시트.
3. 번호 메뉴에서 고른다:
   - `1` 도구 설치
   - `2` 실행
   - `c` (또는 `cmd`) 도구에 치트시트가 있을 때 목표에 맞는 정확한 명령을
     묻는다 — 큐레이션된 치트시트에서 먼저 답하고, 일치하는 게 없을 때만
     모델에 묻는다. 아무것도 실행되지 않으며, 읽고 복사할 명령을 돌려받는다.
   - `98` 프로젝트 페이지 열기
   - `99` 뒤로
4. 카테고리 목록 안에서 `97` 은 그 카테고리의 아직 설치되지 않은 모든 도구를
   설치하고 `98` 은 그 카테고리의 보관된 도구를 연다(있다면).

도구가 당신의 배포판(`apt`, `brew`, Kali 메타패키지 등)에서 이미 PATH 에 있다면
hackingtool 은 다시 clone 하지 않고 그 바이너리를 재사용한다.

---

## 4. 카탈로그에 없는 도구 찾기 (`/find`)

`/find` 는 "X 에는 뭘 써야 하지?" 에 답한다 — 219 개 정선 도구에서 먼저 찾고,
그다음 GitHub 검색 API 를 조회해 각 결과의 이유와 함께 순위를 매긴다.
**제안만** 한다: 아무것도 clone·설치·실행하지 않으며 **모델 호출이 0 번**이다.

1. 자연어로 묻는다:

   ```
   /find hidden directories on a website
   ```

2. 두 블록이 나온다:

   - **In your toolbox (vetted)** — 카탈로그에 이미 있는 매칭 도구.
   - **Found on GitHub — NOT vetted by us** — 유지보수되는 저장소 최대 5 개,
     별 수, 라이선스, 한 줄 설명, 각 결과가 상위에 오른 이유
     (`16446★ · trusted author (ships in our catalog) · active · matches: fuzzer, web`),
     그리고 복사할 `git clone …` 줄. 실행 전에 저장소를 읽을 것 — 이 경고가
     있는 이유는 당신을 위해 이들을 검증한 사람이 없기 때문이다.

3. 하나를 보관하려면 프롬프트에서 `a` 를 누르고 결과 번호를 입력한다:

   ```
   [a] add one to your toolbox · [Enter] done: a
   which? 1-5: 2
   Added.  /Users/you/.hackingtool/found.yaml
   ```

4. 그것이 쓰는 것: **`~/.hackingtool/found.yaml`** 의 `Discovered tools`
   카테고리 아래 항목 — 제목, 태그, 설명, 프로젝트 URL. 의도적으로 **설치/실행
   명령은 저장하지 않으므로** 발견된 항목이 아무것도 실행할 수 없다. 즉 다음
   실행에서 메뉴와 `/search` 에 나타나는 북마크다.

5. 범위 밖 요청은 어떤 네트워크 호출도 *하기 전에* 거부되며, 가능한 경우 인가된
   대안을 제시한다:

   ```
   /find build a wifi jammer
   Out of scope: Jamming is a denial-of-service attack and is out of scope. For
   authorized work, wifi AUDITING tools test your own/scoped networks:
   aircrack-ng, hcxtools, wifite (offline WPA/WPA2 handshake cracking).
   ```

   방어/DFIR 표현("SYN flood 감지", "hunt for…", "AV 오탐 분류")은 거부되지 않는다.

토큰 없으면 GitHub 분당 10 번 검색. 분당 30 번으로 늘리려면
[7 단계](#7-add-a-github-token-for-find-config-github) 참고.

---

## 5. 목표 세우고 실행 (`/goal`)

`/goal` 은 하나의 목표를 실제 명령의 짧고 순서가 있는 계획으로 바꾼 뒤, **당신이**
승인한 단계를 하나씩 실행한다.

1. 목표를 적는다:

   ```
   /goal find live subdomains of example.com
   ```

2. hackingtool 이 계획을 세우고(검증된 운영자 방법론에 대해 모델 한 번 호출)
   계획을 출력한다: 각 단계의 도구, 실제로 실행될 argv, 왜 거기 있는지의 이유,
   그리고 — 없는 도구에 대해서는 — 설치 힌트.

3. 인가를 확인한다. `y` 를 답하기 전엔 아무것도 실행되지 않는다:

   ```
   ⚠  This goal will run tools against:  example.com
      Confirm you are AUTHORIZED to test this target? [y/N]
   ```

4. 단계별로 승인한다:

   ```
   ─ step 1/4 ─ subfinder -d example.com -silent
     [y] run  [s] skip  [e] edit  [q] abort  ›
   ```

   - `y` 로 실행(리스트 형식, 셸을 거치지 않음)하고 끝나면 출력을 보여 준다 —
     각 단계는 목표의 작업 공간 디렉터리에서 30 분 상한으로 실행된다
   - `s` 는 건너뛴다
   - `e` 는 명령을 먼저 편집하게 해 준다 — 편집된 명령이 실행되고 **또** 기록된다
   - `q` 는 나머지를 중단한다

   도구가 설치되어 있지 않은 단계는 자동으로 건너뛰어지고 마지막에 계획의 설치
   힌트와 함께 보고된다.

5. 모든 것이 타임스탬프가 붙은 작업 공간에 놓인다:

   ```
   ~/.hackingtool/goals/2026-07-26T18-40-12-123456/
   ├── plan.json          초안 계획
   ├── run.log            UTC 타임스탬프: 인가, 단계별 결정, 결과
   └── step-1-subfinder.txt   당신이 실행한 각 단계의 원본 출력
   ```

알아두면 좋은 두 보증: 모델은 **계획을 위해 한 번만** 호출되고 도구 출력은
**절대** 모델에 공급되지 않는다 — 그래서 대상이 출력한 어떤 것도 다음 단계를
조종할 수 없다. 그리고 한 단계는 오직 인자 리스트일 뿐 절대 셸 문자열이 아니다.

모델이 설정되어 있지 않다면? `/goal` 은 그렇다고 알리고 같은 목표에 대한 일반
도구 추천으로 축소된다.

---

## 6. 모델 연결 (`/config`)

AI 레이어는 옵트인이며 자기 키를 쓴다. 없어도 모든 것이 그대로 작동한다:
추천은 키워드 매처로 축소되고, `/find` 는 애초에 모델이 필요 없으며, 명령은
큐레이션된 치트시트에서 온다.

**옵션 A — 호스팅된 OpenAI 호환 엔드포인트**

1. 설정 편집기를 연다:

   ```
   /config
   ```

   `↑`/`↓` 이동, `←`/`→` 값 변경(즉시 저장), `Enter` 자유 텍스트 행 편집, `t`
   연결 테스트, `Esc` 닫기.

2. `ai_base_url` (예: `https://api.openai.com/v1`) 과 `ai_model` 을 설정한다.
3. `ai_key` 행을 선택하고 `Enter` 누른 뒤 키를 붙여 넣는다. 입력 중 마스킹되며
   `~/.hackingtool/.env` (mode 600) 에만 쓰인다 — **절대** `config.json` 에
   저장되지 않고 되돌려 출력되지 않는다.
4. 테스트:

   ```
   /config test
   ✓ AI connection OK  <your-model> replied 'connected'
   ```

**옵션 B — Ollama 로 로컬 모델**

1. [Ollama](https://ollama.com) 를 설치·시작한 뒤 `ollama pull llama3`.
2. `ai_base_url` 을 비워 두고 `ai_model` 을 당신이 pull 한 모델로 설정한다.
3. `/config test` 로 확인.

어느 키든 한 줄로도 설정 가능, 예: `/config theme cyan`,
`/config show_archived true`, `/config background_runner off`. 환경 변수
(`HACKINGTOOL_AI_BASE_URL`, `HACKINGTOOL_AI_MODEL`, `HACKINGTOOL_AI_KEY`,
`HACKINGTOOL_AI_PROVIDER`)가 `config.json` 보다 항상 우선한다.

---

## 7. `/find` 용 GitHub 토큰 추가 (`/config github`)

선택 사항. 얻는 것 하나: GitHub 검색 속도 제한이 **분당 10 번에서 30 번** 으로
늘어난다. 토큰에는 **아무 scope 도 permission 도 필요 없다** — 절대 어떤 것도
부여하지 말 것.

1. 현재 상태 확인:

   ```
   /config github
   ○ GitHub  no token configured — unauthenticated search is 10 req/min
   ```

   그러면 hackingtool 이 정확한 단계를 출력한다. 요약은:

2. GitHub → 프로필 사진 → **Settings**
3. 왼쪽 사이드바 → **Developer settings**
4. **Personal access tokens → Fine-grained tokens → Generate new token**
5. 이름을 지정하고(예: `hackingtool-find`) 만료일을 고른다.
6. Resource owner: 당신 자신. Repository access: **기본값 그대로 — 저장소를
   하나도 선택하지 말 것.**
7. Permissions: **아무것도 선택하지 말 것.** (GitHub 왈: *"Tokens always include
   read-only access to all public repositories on GitHub."*)
8. 토큰을 생성해 복사한다.
9. `~/.hackingtool/.env` 에 추가한다(파일은 이미 `chmod 600`):

   ```
   HACKINGTOOL_GITHUB_TOKEN=ghp_your-token-here
   ```

10. 확인:

    ```
    /config github
    ✓ GitHub token OK  token OK — search limit 30 req/min
    ```

Classic 토큰도 된다: **Developer settings → Tokens (classic) → Generate new
token → scope 를 하나도 체크하지 말 것.** 환경에서 `GITHUB_TOKEN` / `GH_TOKEN`
도 자동 감지된다. 토큰은 되돌려 출력되지 않으며 오직 `api.github.com` 으로만
전송된다.

---

## 8. 백그라운드 pane 에서 도구 실행

긴 스캔이 콘솔을 막으면 안 된다. **tmux** 가 설치되어 있으면 hackingtool 은
`hackingtool` 이라는 분리된 세션 하나를 유지하고 각 백그라운드 작업에 라벨이
있는 자기 창을 준다.

1. `/run` 끝에 ` &` 를 붙인다:

   ```
   /run nmap -sV -oA scan 10.0.0.5 &
   ▶ started 'nmap' in background — /attach to view
   ```

   `/run nmap &` (아무 인자도 없이)는 도구의 디렉터리로 이미 `cd` 한 셸을 열고,
   도구의 첫 치트시트 명령을 주석으로 입력해 둔다.

2. 뭐가 돌고 있는지 — 프롬프트 아래 상태 줄이 `▶ N running` 을 보여 주며:

   ```
   /panes          (별칭 /jobs)
     nmap (window 0)
   ```

3. 하나를 지켜본다: `/attach` — 당신의 터미널을 tmux 에게 넘긴다. `Ctrl-b` 그
   다음 `d` 로 분리하고 콘솔로 돌아온다.
4. 하나 또는 전부 종료: `/kill nmap` · `/kill all`.

tmux 없나? 아무것도 깨지지 않는다 — hackingtool 이 그렇다고 알리고 대신 도구를
인라인으로 연다. 백그라운드를 완전히 끄려면 `/config background_runner off`.

---

## 9. Headless 모드: 교전, 파이프라인, 보고서

같은 카탈로그가 CI 또는 스크립트 교전을 위한 비대화형 오케스트레이터를
구동한다. 발견은 하나의 `findings.json` 으로 정규화되어 grep·diff 하거나 다른
도구에 입력할 수 있다.

```bash
# 교전을 만들거나 확장하고 기본 recon 파이프라인을 돌린다
hackingtool --engagement acme --targets example.com --pipeline recon

# 한 줄에 한 대상씩 든 파일
hackingtool --engagement acme --targets ./scope.txt --pipeline recon

# 결정론적 Markdown 보고서 (재)생성
hackingtool --engagement acme --report

# 실제 발견에만 수행되는 옵트인 AI 패스
hackingtool --engagement acme --ai-summary
hackingtool --engagement acme --ai-report     # report.draft.md 생성
```

headless 모드에서는 `--engagement` 가 필수다. 범위 밖 대상은 어떤 실행 전에
표시되고 로그된다. `--ai-summary` 와 `--ai-report` 는 실재하는 발견만 요약한다 —
결정론적 `report.md` 는 AI 초안으로 덮어쓰여지지 않는다.

---

## 파일 위치

| 경로 | 내용 |
|---|---|
| `~/.hackingtool/config.json` | 설정 (`/config`) |
| `~/.hackingtool/.env` | API 키 + GitHub 토큰, mode 600 |
| `~/.hackingtool/found.yaml` | `/find` 에서 보관한 도구들 |
| `~/.hackingtool/goals/<utc-timestamp>/` | `/goal` 계획, 실행 로그, 단계 출력 |
| `~/.hackingtool/tools/` | 설치된 도구들 |
| `~/.hackingtool/hackingtool.log` | 명령/감사 로그 |
| `~/.hackingtool/history` | 프롬프트 이력 |

함께 읽을 거리: [전체 도구 카탈로그](TOOLS.md) ·
[운영자 플레이북](../src/hackingtool/skill/OPERATOR.md) (또는 `/skill`) ·
[SECURITY.md](../SECURITY.md) · [CONTRIBUTING.md](../CONTRIBUTING.md)
</content>
</invoke>