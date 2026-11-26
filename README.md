<div align="center">

<img src="images/logo.svg" alt="HackingTool" width="600">

### AI 가이드 올인원 인가된 보안 테스트 툴킷

**21 개 카테고리에 걸친 219 개 정선 도구** — 정찰, OSINT, 웹, 무선, 피싱,
포렌식, 포스트 익스플로잇 등 — 그리고 **자연어를 올바른 도구와 정확한 명령으로
바꿔 주는 AI 레이어**.

**대상 사용자**: 침투 테스터 · 레드 팀 · 블루 팀/SOC·DFIR 분석가 ·
OSINT 연구자 · 버그 바운티 헌터 · CTF 플레이어 · 보안 연구자와 학생 —
모두 **본인이 소유하거나 테스트 권한을 받은 시스템에서 합법적으로** 작업하는 경우.

<div align="center">
  <sub>Sponsored by</sub><br>
  <a href="https://webvetted.com/hacking-tools?utm_source=github&utm_medium=sponsor&utm_campaign=hacking-tools">
    <img width="800" alt="WebVetted Intelligence - OSINT & Recon Platform" src="https://github.com/user-attachments/assets/75b9480e-52ce-4096-bee9-69a26d7823a1" />
  </a>
  <br><br>
  <i><b>수동 정찰을 넘어서라.</b> WebVetted 는 이메일·전화번호·사용자명을 깊은 OSINT 보강, 유출 인텔, AI 분석, 대화형 신원 그래프가 담긴 완전한 신원 조사로 바꿔 준다.</i><br>
  <br>
  <a href="https://webvetted.com/hacking-tools?utm_source=github&utm_medium=sponsor&utm_campaign=hacking-tools"><b>조사 시작하기 →</b></a>
</div>

<br/><br/>


<a href="https://trendshift.io/repositories/869" target="_blank" rel="noopener noreferrer"><img src="https://trendshift.io/api/badge/repositories/869" alt="Z4nzu/hackingtool | Trendshift" width="250" height="55"/></a> <a href="https://trendshift.io/repositories/869" target="_blank" rel="noopener noreferrer"><img src="https://trendshift.io/api/badge/trendshift/repositories/869/daily?language=Python" alt="Z4nzu/hackingtool | Trendshift daily" width="250" height="55"/></a> <a href="https://trendshift.io/repositories/869" target="_blank" rel="noopener noreferrer"><img src="https://trendshift.io/api/badge/trendshift/repositories/869/weekly" alt="Z4nzu/hackingtool | Trendshift weekly" width="250" height="55"/></a>

<br/>

[![License](https://img.shields.io/github/license/Z4nzu/hackingtool?style=flat-square&labelColor=0D1117&color=7B61FF)](LICENSE) [![Python](https://img.shields.io/badge/Python-3.10+-0D1117?style=flat-square&labelColor=0D1117&logo=python&logoColor=7B61FF)](https://www.python.org/) [![Stars](https://img.shields.io/github/stars/Z4nzu/hackingtool?style=flat-square&labelColor=0D1117&color=7B61FF)](https://github.com/Z4nzu/hackingtool/stargazers) [![Forks](https://img.shields.io/github/forks/Z4nzu/hackingtool?style=flat-square&labelColor=0D1117&color=7B61FF)](https://github.com/Z4nzu/hackingtool/network/members) [![Issues](https://img.shields.io/github/issues/Z4nzu/hackingtool?style=flat-square&labelColor=0D1117&color=7B61FF)](https://github.com/Z4nzu/hackingtool/issues) [![Last Commit](https://img.shields.io/github/last-commit/Z4nzu/hackingtool?style=flat-square&labelColor=0D1117&color=7B61FF)](https://github.com/Z4nzu/hackingtool/commits/master) [![Sponsor](https://img.shields.io/badge/Sponsor-%E2%9D%A4-DB61A2?style=flat-square&labelColor=0D1117&logo=githubsponsors&logoColor=DB61A2)](#support--sponsor)

<br/>

![](https://img.shields.io/badge/21_Categories-7B61FF?style=for-the-badge&labelColor=0D1117) &nbsp;![](https://img.shields.io/badge/219_Tools-7B61FF?style=for-the-badge&labelColor=0D1117) &nbsp;![](https://img.shields.io/badge/63_Tags-7B61FF?style=for-the-badge&labelColor=0D1117) &nbsp;![](https://img.shields.io/badge/AI--Guided-7B61FF?style=for-the-badge&labelColor=0D1117&logo=openai&logoColor=white) &nbsp;![](https://img.shields.io/badge/Linux_%7C_Kali_%7C_Parrot_%7C_macOS-7B61FF?style=for-the-badge&labelColor=0D1117&logo=linux&logoColor=white)

<br/>

<a href="#installation"><img src="https://img.shields.io/badge/Install_Now-7B61FF?style=for-the-badge&logo=rocket&logoColor=white" alt="Install Now"></a>&nbsp; <a href="docs/HOW-TO-USE.md"><img src="https://img.shields.io/badge/How_to_Use-30363D?style=for-the-badge&logo=gnometerminal&logoColor=white" alt="How to Use"></a>&nbsp; <a href="docs/TOOLS.md"><img src="https://img.shields.io/badge/Tool_Catalog-30363D?style=for-the-badge&logo=github&logoColor=white" alt="Tool Catalog"></a>&nbsp; <a href="#support--sponsor"><img src="https://img.shields.io/badge/%E2%9D%A4_Sponsor-DB61A2?style=for-the-badge&logo=githubsponsors&logoColor=white" alt="Sponsor"></a>

</div>

---

## 목차

- [왜 hackingtool 인가](#why-hackingtool)
- [도구 카테고리](#tool-categories)
- [설치](#installation)
  - [pipx 로 소스에서 설치 (권장)](#from-source-with-pipx-recommended)
  - [개발용 설정](#for-development)
  - [Docker](#docker)
  - [선택 런타임](#optional-runtimes)
- [빠른 명령어](#quick-commands)
  - [명령어 참조](#command-reference)
- [기능](#features)
  - [🔎 `/find` — 아직 갖고 있지 않은 필요를 위한 도구](#-find--a-tool-for-a-need-you-dont-have-yet)
  - [🎯 `/goal` — 목표를 세우고 한 단계씩 실행](#-goal--plan-an-objective-run-it-one-step-at-a-time)
  - [🧠 추천 — 원하는 바를 자연어로 말하기](#-recommendations--say-what-you-want-in-plain-english)
  - [🏷 태그와 검색](#-tags-and-search)
  - [▶ 백그라운드 pane (tmux)](#-background-panes-tmux)
  - [⚙ 설정과 AI 레이어](#-settings-and-the-ai-layer)
  - [📋 Headless 교전](#-headless-engagements)
- [문서](#documentation)
- [기여하기](#contributing)
- [후원](#support--sponsor)
- [소셜](#social)

---

## 왜 hackingtool 인가

- **🧠 AI 가이드 워크플로** — 원하는 바를 쓰면("example.com 의 서브도메인 찾아줘")
  의도를 올바른 도구에 매핑하고, 문서화된 정확한 명령을 건네고, 목표를 단계별로
  계획하고, 발견을 요약해 교전 보고서를 초안한다. 본인 API 키를 쓰거나 로컬 모델을
  돌릴 수 있다 — 자동 실행 없고 지어내지 않는다.
- **🗂 219 개 정선 도구, 하나의 대화형 콘솔** — 입력하면 모든 도구를 검색하고,
  Git 저장소를 찾아 헤맬 필요 없이 21 개 카테고리에 걸쳐 설치·실행한다. 고정 태그
  분류(현재 63 개 사용 중)가 모든 도구를 발견 가능하게 한다.
- **🔎 자기가 모르는 것도 안다** — `/find` 는 카탈로그를 먼저 검색하고 그다음
  GitHub API 를 조회해, 각 결과가 왜 상위인지 이유와 함께 유지보수되는 실제
  프로젝트를 보여 준다.
- **🛡 기본으로 안전** — 표준 설치, **`curl | bash` 없음**, 다운로드는 SHA-256
  으로 고정·검증, 리스트 형식 `subprocess`, 강제 `sudo` 없음,
  [SBOM 과 함께 서명된 릴리스](SECURITY.md#verifying-a-release).
- **🎯 전 스펙트럼 대응** — 레드 팀, 블루 팀, OSINT, 버그 바운티, CTF/THM,
  포렌식/IR — 모두 **인가된 대상에만**.

<div align="center">
<img src="images/screenshots/1.png" alt="hackingtool 대화형 TUI: 라이브 도구 수가 있는 카테고리, 입력으로 모든 도구 검색, / 로 명령 팔레트" width="900">
<br/>
<sub>시작 시의 대화형 콘솔 — 카테고리를 탐색하고, 입력으로 모든 도구를 검색하고, <code>/</code> 로 명령 팔레트를 연다.</sub>
</div>

---

## 도구 카테고리

**21 개 카테고리에 걸친 219 개 도구** — 링크와 태그가 포함된 전체 목록은
**[docs/TOOLS.md](docs/TOOLS.md)** 에 있다.

<div align="center">

| # | 카테고리 | 도구 수 | | # | 카테고리 | 도구 수 |
|:---:|---|:---:|---|:---:|---|:---:|
| 1 | 🛡 [익명화 도구](docs/TOOLS.md#-anonymously-hiding-tools) | 5 | | 12 | 🔁 [리버스 엔지니어링 도구](docs/TOOLS.md#-reverse-engineering-tools) | 10 |
| 2 | 🔍 [정보 수집 도구](docs/TOOLS.md#-information-gathering-tools) | 26 | | 13 | ⚡ [DDoS 공격 도구](docs/TOOLS.md#-ddos-attack-tools) | 7 |
| 3 | 📚 [워드리스트 생성기](docs/TOOLS.md#-wordlist-generator) | 8 | | 14 | 🖥 [원격 관리 도구 (RAT)](docs/TOOLS.md#-remote-administrator-tools-rat) | 4 |
| 4 | 📡 [무선 공격 도구](docs/TOOLS.md#-wireless-attack-tools) | 17 | | 15 | 🧪 [XSS 공격 도구](docs/TOOLS.md#-xss-attack-tools) | 6 |
| 5 | 💉 [SQL 인젝션 도구](docs/TOOLS.md#-sql-injection-tools) | 7 | | 16 | 🖼 [스테가노그래피 도구](docs/TOOLS.md#-steganography-tools) | 10 |
| 6 | 🎣 [피싱 공격 도구](docs/TOOLS.md#-phishing-attack-tools) | 13 | | 17 | 🏢 [Active Directory 도구](docs/TOOLS.md#-active-directory-tools) | 10 |
| 7 | 🌐 [웹 공격 도구](docs/TOOLS.md#-web-attack-tools) | 23 | | 18 | ☁ [클라우드 보안 도구](docs/TOOLS.md#-cloud-security-tools) | 7 |
| 8 | 🔧 [포스트 익스플로잇 도구](docs/TOOLS.md#-post-exploitation-tools) | 15 | | 19 | 📱 [모바일 보안 도구](docs/TOOLS.md#-mobile-security-tools) | 6 |
| 9 | 🕵 [포렌식 도구](docs/TOOLS.md#-forensic-tools) | 12 | | 20 | ✨ [기타 도구](docs/TOOLS.md#-other-tools) | 10 |
| 10 | 📦 [페이로드 생성 도구](docs/TOOLS.md#-payload-creation-tools) | 6 | | 21 | 🔑 [비밀번호 / 해시 크래킹](docs/TOOLS.md#-password--hash-cracking) | 7 |
| 11 | 🧰 [익스플로잇 프레임워크](docs/TOOLS.md#-exploit-framework) | 6 | | | | |

</div>

<sub>44 개 항목이 보관됨(유지보수 중단 또는 upstream 소멸)이라 `/config` 로
`show_archived true` 를 설정하기 전엔 숨겨진다. 앱 내 헤더가 22 카테고리 / 219
도구로 세는 이유는 내장 업데이트/제거 메뉴도 함께 세기 때문이다.</sub>

---

## 설치

**Linux 또는 macOS** 에 **Python 3.10 이상** 필요(Kali, Parrot, Debian/Ubuntu,
Arch 등). Windows 는 지원하지 않는다 — 앱이 알리고 종료된다. `curl | bash` 없음:
아래 모든 경로는 표준적이고 검증 가능한 설치다.

### pipx 로 소스에서 설치 (권장)

[pipx](https://pipx.pypa.io) 는 hackingtool 을 격리된 환경에 설치하고 `hackingtool`
명령을 PATH 에 올려, 어떤 디렉터리에서든 실행할 수 있게 한다.

```bash
# 1 — 코드 받기
git clone https://github.com/Z4nzu/hackingtool.git
cd hackingtool

# 2 — PATH 에 설치(격리된 venv, 시스템 Python 은 건드리지 않음)
pipx install .

# 3 — 어디서든 실행
hackingtool
```

pipx 가 아직 없다면:

```bash
# macOS
brew install pipx && pipx ensurepath

# Debian / Ubuntu / Kali
sudo apt install pipx && pipx ensurepath
```

`pipx ensurepath` 후 PATH 변경을 반영하려면 새 셸을 연다.
나중에 업데이트: `git pull && pipx install . --force`. 제거:
`pipx uninstall hackingtool`.

<details>
<summary>대안: <code>uv tool install .</code> (pipx 대신 uv 를 쓰며 결과는 동일)</summary>

```bash
git clone https://github.com/Z4nzu/hackingtool.git
cd hackingtool
uv tool install .        # `hackingtool` 실행 파일을 PATH 에 설치
hackingtool
```
</details>

<details>
<summary>대안: 일반 venv + pip (PATH 변경 없음)</summary>

```bash
git clone https://github.com/Z4nzu/hackingtool.git
cd hackingtool
python3 -m venv .venv && . .venv/bin/activate
pip install .            # 또는: pip install -e .   editable 개발 설치
hackingtool
```

그 venv 가 활성 상태일 때만 명령이 PATH 에 있다.
</details>

### 개발용 설정

[uv](https://docs.astral.sh/uv/) 는 `pyproject.toml` / `uv.lock` 로부터 가상환경을
만들고 모든 것을 한 번에 설치한다:

```bash
git clone https://github.com/Z4nzu/hackingtool.git
cd hackingtool
uv sync
uv run hackingtool
```

uv 가 아직 없다면 `pipx install uv` (또는
[uv 설치 문서](https://docs.astral.sh/uv/getting-started/installation/)).

**기여 중?** `make setup` 이 pre-push 훅을 연결하고 `make check` 가 전체 게이트
(lint + 테스트 + 카탈로그 검증)를 돌린다. [CONTRIBUTING.md](CONTRIBUTING.md) 참고.

### Docker

공개된 이미지를 받아 실행:

```bash
docker run -it --rm hardikzinzu/hackingtool:latest
```

또는 체크아웃에서 로컬 빌드:

```bash
git clone https://github.com/Z4nzu/hackingtool.git && cd hackingtool
docker build -t hackingtool .
docker run -it --rm hackingtool
```

<!-- 배포 채널이 열리기 전까지 숨김. 패키지가 PyPI 에 공개되고 .deb 가 릴리스에
     첨부되면 복원한다.

### PyPI 의 pipx / pip

```bash
pipx install hackingtool
hackingtool
```

```bash
python3 -m venv .venv && . .venv/bin/activate
pip install hackingtool
hackingtool
```

### Debian / Ubuntu / Kali (.deb)

[최신 릴리스](https://github.com/Z4nzu/hackingtool/releases/latest) 에서 `.deb` 를 받는다:

```bash
sudo apt install ./hackingtool_*.deb
hackingtool
```
-->

### 선택 런타임

일부 개별 도구는 설치/실행에 런타임이 필요하다. 코어 앱 자체는 필요 없다.

| 의존성 | 버전 | 쓰이는 곳 |
|---|---|---|
| Go | 1.21+ | nuclei, ffuf, amass, httpx, katana, dalfox, gobuster, subfinder |
| Ruby | 임의 | haiti, evil-winrm |
| tmux | 임의 | 백그라운드 pane (`/run … &`, `/panes`, `/attach`) |
| Docker | 임의 | Mythic, MobSF (선택) |

---

## 빠른 명령어

`hackingtool` 은 **대화형 터미널 UI** 를 연다: 카테고리를 탐색하고, 모든
카테고리를 가로질러 **입력으로 모든 도구를 검색**하고, `↑↓` 로 이동, `Enter` 로 열고,
`←`/`Esc` 로 돌아가고, `/` 로 명령 팔레트(`/config`, `/update`, `/menu`, `/quit`)를
연다. 새 릴리스가 나와 있으면 시작 시 *update available* 줄을 보여 주고, `/update`
는 당신이 hackingtool 을 어떻게 설치했는지 감지해 실행할 정확한 업그레이드 명령을
알려 준다.

키보드 중심 REPL 을 원하면 `hackingtool --classic` 가 세 종류의 입력을 받는다:

| 입력 | 의미 | 예시 |
|---|---|---|
| `/…` | 실행할 명령 | `/search subdomain` |
| `@…` | 이름으로 가리키는 대상 | `@nmap`, `@tag:osint` |
| 그 외 | 자연어로 적는 "하고 싶은 일" | `crack a wifi handshake` |

<div align="center">
<img src="images/screenshots/4.png" alt="hackingtool 콘솔에서 @ 입력 시 도구 이름 자동완성" width="900">
<br/>
<sub><code>@</code> 는 도구 이름을 완성 — <code>@tag:</code> 는 태그를, <code>/</code> 는 명령을 완성한다.</sub>
</div>

### 명령어 참조

| 명령 | 별칭 | 하는 일 |
|---|---|---|
| `/run <tool> [args] [&]` | `/open` | 도구 메뉴를 연다. 끝에 `&` 가 있으면 백그라운드 tmux pane 에서 실행(그때 `args` 가 쓰임) |
| `/search <keyword>` | | 이름·설명·태그로 도구 검색 |
| `/tags` | | 각 태그를 도구 수와 함께 나열 |
| `/ai <goal>` | `/recommend`, `/r` | 목표에 맞는 도구 추천 |
| `/goal <objective>` | | 목표를 AI 로 계획하고 각 단계 확인 후 실행 |
| `/find <need>` | `/discover` | 필요한 도구 찾기 — 카탈로그 먼저, 그다음 GitHub(제안만) |
| `/panes` | `/jobs` | 백그라운드 pane 목록 |
| `/attach` | | 백그라운드 세션에 연결(`Ctrl-b` `d` 로 돌아옴) |
| `/kill <label\|all>` | | 백그라운드 pane 하나 또는 전부 종료 |
| `/config [key value]` | | 설정 조회/변경. `/config test` 는 AI 연결을, `/config github` 는 GitHub 토큰을 확인 |
| `/skill` | | 운영자 플레이북 보기 |
| `/update` · `/uninstall` | `/remove` | 시스템 패키지나 hackingtool 업데이트 · hackingtool 과 그 도구들 제거 |
| `/clear` | `/cls` | 화면 지우기 |
| `/back` | `/b` | 현재 도구에서 나가 돌아감 |
| `/help` | `/?`, `/h` | 빠른 참조 카드 |
| `/quit` | `/q`, `/exit` | 종료 (또한 `q`, `Ctrl-C`, `Ctrl-D`) |
| `@<tool>` | | 도구 열기 (대소문자 무시, 퍼지 매칭 대체) |
| `@tag:<tag>` | | 그 태그가 붙은 도구 목록에서 선택 |

카테고리 안에서: `1–N` 으로 도구 선택 · `97` 미설치된 전부 설치 ·
`98` 보관된 도구 · `99` 뒤로.
도구 안에서: `1` 설치 · `2` 실행 · `c` 목표에 맞는 정확한 명령 묻기 ·
`98` 프로젝트 페이지 · `99` 뒤로.

<div align="center">
<img src="images/screenshots/5.png" alt="hackingtool /help 빠른 참조 카드" width="900">
<br/>
<sub><code>/help</code> — 앱 안의 같은 카드.</sub>
</div>

위 명령 세트는 `--classic` REPL 전용이다. 비대화형 터미널에서는 hackingtool 이
고전 번호 메뉴로 돌아가며, 거기서는 `/` 또는 `s` 가 검색, `t` 가 태그 필터, `r`
또는 `a` 가 추천, `?` 가 도움말, `q` 가 종료.

> **처음인가?** [docs/HOW-TO-USE.md](docs/HOW-TO-USE.md) 가 번호 단계로 이 전부를
> 처음부터 끝까지 안내한다.

---

## 기능

> **지금 어디에 있나.** `/find`, `/goal`, 자연어 추천, `/tags`/`/search` 와
> 백그라운드 pane 은 현재 **`--classic`** REPL 에서 동작한다(`hackingtool
> --classic`). 기본 TUI 는 전체 카탈로그를 탐색·입력 검색하고 도구를 실행한다.
> 이 AI/검색 기능을 기본 TUI 에 연결하는 건 Phase 2 다. 아래 스크린샷의 `/` 명령
> 프롬프트는 `--classic` REPL 이다.

### 🔎 `/find` — 아직 갖고 있지 않은 필요를 위한 도구

219 개 정선 도구를 먼저 검색하고 그다음 GitHub 검색 API 를 조회해 설명 가능한
순위를 매긴다. **제안만** 한다 — 절대 clone·설치·실행하지 않으며 **모델 호출이
0 번**이다.

```
/find crack a wpa handshake

In your toolbox (vetted)
  • aircrack-ng (WiFi security suite)
  • Kismet (wireless detector / WIDS)
  • Reaver (WPS PIN attack)
  • WiGLE (wardriving map & API)
  • hashcat example hashes (WPA mode 22000)

Found on GitHub — NOT vetted by us

  wifiphisher/wifiphisher  14713★  GPL-3.0
    The Rogue Access Point Framework
    14713★ · trusted author (ships in our catalog) · active · matches: security, wifi
    git clone https://github.com/wifiphisher/wifiphisher
  …
```

결과를 보관하려면 `a` 를 누른다: `~/.hackingtool/found.yaml` 의 "Discovered
tools" 항목으로 저장된다 — 제목, 태그, 설명, 링크. **설치/실행 명령은 저장되지
않으므로** 발견된 항목이 아무것도 실행할 수 없다. 다음 실행부터 메뉴와 `/search`
에 나타난다.

범위 밖 요청(재밍, DoS, 대량 표적화, 멀웨어)은 **어떤 네트워크 호출도 하기 전에**
거부되며, 가능한 경우 인가된 대안을 제시한다. 방어/DFIR 표현은 거부되지 않는다.

익명으로 분당 10 번의 GitHub 검색, **scope 와 permission 이 없는** 토큰이면
분당 30 번으로 늘어난다 —
[`/config github`](docs/HOW-TO-USE.md#7-add-a-github-token-for-find-config-github) 참고.

### 🎯 `/goal` — 목표를 세우고 한 단계씩 실행

```
/goal find live subdomains of example.com
```

hackingtool 은 실제 명령의 짧은 계획을 세운다(각 단계에 이유와, 없는 도구에 대한
설치 힌트 포함). 그 뒤 대상에 테스트할 **인가** 가 있는지 확인하고, 각 단계를
`[y]` 실행 · `[s]` 건너뜀 · `[e]` 편집 · `[q]` 중단 으로 진행한다. 모든 단계는
리스트 형식으로 실행되며 — 셸을 거치지 않음 — 각 목표는
`~/.hackingtool/goals/` 아래 타임스탬프가 붙은 작업 공간에 `plan.json`, UTC
타임스탬프의 `run.log`, 각 단계의 원본 출력을 보관한다.

모델은 **계획을 위해 한 번만** 호출된다. 도구 출력은 다시 모델에 공급되지 않는다.
모델이 설정되어 있지 않으면 `/goal` 은 같은 목표에 대한 도구 추천으로 축소된다.

### 🧠 추천 — 원하는 바를 자연어로 말하기

맨 텍스트(또는 `/ai`)가 의도를 도구에 매핑한다. 모델은 **고정된 분류의 태그만**
반환할 수 있고, 카탈로그가 태그 → 도구로 해석하므로 도구가 지어내질 수 없다.
모델에 접근할 수 없으면 stdlib 키워드 매처가 대신 답한다.

<div align="center">
<img src="images/screenshots/3.png" alt="hackingtool /ai — 일반 작업 선택 또는 자기 표현" width="900">
<br/>
<sub><code>/ai</code> — 일반 작업 중 하나를 고르거나 자기 말로 입력한다.</sub>
</div>

### 🏷 태그와 검색

`/tags` 는 사용 중인 모든 태그를 라이브 도구 수와 함께 출력한다. `@tag:<name>` 은
그 태그의 도구들을 연다. `/search <keyword>` 는 이름·설명·태그를 매칭한다.

<div align="center">
<img src="images/screenshots/2.png" alt="hackingtool /tags — 각 태그와 도구 수" width="900">
<br/>
<sub><code>/tags</code> — 사용 중인 63 개 태그 각각의 뒤에 있는 도구 수.</sub>
</div>

### ▶ 백그라운드 pane (tmux)

긴 스캔이 콘솔을 막으면 안 된다. tmux 가 설치되어 있으면 `/run <tool> … &` 가
분리된 `hackingtool` 세션에 라벨이 있는 창을 연다:

```
/run nmap -sV -oA scan 10.0.0.5 &
▶ started 'nmap' in background — /attach to view
```

`/panes` 가 목록을 보고, `/attach` 가 하나를 지켜본다(`Ctrl-b` `d` 로 복귀).
`/kill <label>` 또는 `/kill all` 로 종료하며, 프롬프트 아래 상태 줄에
`▶ N running` 이 표시된다. tmux 가 없나? 그렇다고 알리고 도구를 인라인으로 대신
연다. 완전히 끄려면 `/config background_runner off`.

### ⚙ 설정과 AI 레이어

`/config` 는 검색 가능한 설정 화면을 연다 — 입력으로 필터링, `↑↓` 이동, `Enter`
로 선택 순환 또는 값 편집(자동 저장), `←`/`Esc` 로 돌아감. `--classic` 에서는
전체 화면 편집기이며 `t` 로 AI 연결을 테스트한다. `/config <key> <value>` 는 한
키를 직접 설정한다. 설정은 `~/.hackingtool/config.json` 에 저장된다.

AI 레이어는 **옵트인이고 자기 키를 쓴다**: `ai_base_url` + API 키가 설정되면
OpenAI 호환 엔드포인트, 아니면 로컬 [Ollama](https://ollama.com), 둘 다 아니면
없음 — 모든 기능이 추측하는 대신 결정론적 오프라인 동작으로 축소된다. API 키는
`~/.hackingtool/.env` (mode 600) 에만 쓰이며 `config.json` 에 저장되지도, 되돌려
출력되지도 않는다. `/config test` 는 탐지가 실패하면 실제 실패 원인을 보고한다.

### 📋 Headless 교전

같은 카탈로그가 도구 출력을 하나의 `findings.json` 으로 정규화하는 비대화형
오케스트레이터를 구동한다:

```bash
hackingtool --engagement acme --targets example.com --pipeline recon
hackingtool --engagement acme --report          # 결정론적 Markdown 보고서
hackingtool --engagement acme --ai-summary      # 실제 발견의 옵트인 분류
hackingtool --engagement acme --ai-report       # 옵트인 서술 초안 (report.draft.md)
```

범위 밖 대상은 어떤 실행 전에 표시되고 로그되며, AI 패스는 실재하는 발견만
요약한다.

---

## 문서

| 문서 | 내용 |
|---|---|
| [hackingtool 사용법](docs/HOW-TO-USE.md) | 번호 단계 가이드: 첫 실행, `/find`, `/goal`, `/config`, 백그라운드 pane, headless 모드 |
| [도구 카탈로그](docs/TOOLS.md) | 카테고리별 모든 도구, 링크와 태그 포함 |
| [운영자 플레이북](src/hackingtool/skill/OPERATOR.md) | AI 레이어가 따르는 헌장과 근거 규칙(`/skill` 로도 접근) |
| [SECURITY.md](SECURITY.md) | 공개 정책, 릴리스 검증, 위협 모델 |
| [CONTRIBUTING.md](CONTRIBUTING.md) | 카탈로그 우선 도구 추가, PR 이 통과해야 하는 게이트 |

---

## 기여하기

새 도구, 수정, 문서 모두 환영 — **인가된 보안 테스트** 용도에 한해서.

> **쉬운 경로:** 대부분의 도구는 `src/hackingtool/catalog/` 안의 **YAML 한
> 항목** 뿐이다 — Python 불필요. 태그는 고정 분류에서 오므로 당신의 도구는
> 바로 발견·검색 가능하다.

| 하고 싶은 것 | 하는 방법 |
|---|---|
| 💡 도구 제안 | [Tool Request](.github/ISSUE_TEMPLATE/tool_request.md) 이슈 열기 |
| ➕ 도구 추가 | 카탈로그 항목 추가(또는 커스텀 설치/실행 로직이 필요하면 클래스), 그 다음 [템플릿](.github/PULL_REQUEST_TEMPLATE.md) 으로 PR |
| 🐛 버그 보고 | [Bug report](.github/ISSUE_TEMPLATE/bug_report.md) 이슈 열기 |
| 🔒 취약점 보고 | **비공개로** — 공개 이슈로 열지 말 것. [SECURITY.md](SECURITY.md) 참고 |

PR 을 열기 전 **`make check`** (lint + 테스트 + 카탈로그 검증) 를 돌리고 제목
형식은 `[New Tool] Name — Category` 로 한다. 전체 가이드 — 보안 규칙과 한 항목
카탈로그 둘러보기 — 는 **[CONTRIBUTING.md](CONTRIBUTING.md)** 에 있다.

<sub>📄 [기여](CONTRIBUTING.md) · [보안](SECURITY.md) · [행동 강령](CODE_OF_CONDUCT.md)</sub>

---

<!-- Star History — 나중에 활성화.
     GitHub 가 익명 star-history 데이터를 제한하므로 라이브 차트는 렌더링되지
     않는다. 활성화하려면: https://star-history.com/#Z4nzu/hackingtool&Date 를
     열어(본인 저장소의 GitHub 토큰으로 로그인) 차트 이미지를 내려받고
     images/star-history.png 로 저장한 뒤 아래 블록의 주석을 해제한다.

## Star History

<div align="center">
<a href="https://star-history.com/#Z4nzu/hackingtool&Date"><img src="images/star-history.png" alt="HackingTool Star History Chart" width="640"></a>
</div>

---
-->

## 후원

hackingtool 은 무료이며 오픈 소스다. 교전에서 시간을 아껴 주거나 학습에 도움이
되었다면 후원을 고려해 달라. 자금은 도구 큐레이션, AI 레이어, 그리고 설치를
안전하고 최신으로 유지하는 데 쓰인다.

<a href="https://github.com/sponsors/Z4nzu"><img src="https://img.shields.io/badge/GitHub_Sponsors-EA4AAA?style=for-the-badge&logo=githubsponsors&logoColor=white" alt="Sponsor on GitHub"></a>&nbsp; <a href="https://buymeacoffee.com/hardikzinzu" target="_blank"><img src="https://img.shields.io/badge/Buy_Me_A_Coffee-1F2328?style=for-the-badge&logo=buymeacoffee&logoColor=FFDD00" alt="Buy Me A Coffee"></a>

⭐ 저장소에 별을 주는 것은 무료이며 다른 사람이 프로젝트를 발견하는 데 도움이 된다.

## 소셜

[![Twitter](https://img.shields.io/badge/Twitter-Follow-1DA1F2?style=for-the-badge&logo=twitter&logoColor=white)](https://twitter.com/_Zinzu07) [![GitHub](https://img.shields.io/badge/GitHub-Follow-181717?style=for-the-badge&logo=github&logoColor=white)](https://github.com/Z4nzu/)

> **인가된 보안 테스트 용도에 한함.**
> hackingtool 에 포함된 모든 도구의 원저작자들에게 감사를 전한다.

좋아하는 도구가 목록에 없나? [여기에 제안](https://github.com/Z4nzu/hackingtool/issues/new?template=tool_request.md).
</content>
</invoke>