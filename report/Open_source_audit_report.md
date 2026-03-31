# The Open Source Audit  
## Capstone Project for OSS NGMC Course

**Course:** Open Source Software  
**Unit Coverage:** 1 to 5  
**Max Marks:** 100  

**Student Name:** Abeer Saxena  
**Registration Number:** 24BCE10987  
**Slot:** A13  
**Date of Submission:** 31st March 2026  
**Chosen Software:** Apache HTTP Server  

---

## Introduction

Open-source software is more than a development model. It is also a way of sharing knowledge, responsibility, and control. In proprietary software, access to the code, decisions about updates, and repair rights usually remain with one company. In open-source software, those powers are spread across maintainers, contributors, users, institutions, and communities that work together around shared infrastructure.

For this audit, I selected Apache HTTP Server because it occupies an important place in the history of the web. It is one of the clearest examples of community-driven software becoming critical infrastructure at a global level. Apache also teaches an important lesson about open source: when an older project slows down or stops evolving, a community can organize, patch, improve, and build something stronger.

This report studies Apache from four major viewpoints. First, it explores the origin of Apache and the philosophical ideas behind it. Second, it examines how Apache appears and behaves on a Linux system. Third, it looks at the wider free and open-source ecosystem connected to Apache. Fourth, it compares Apache with a proprietary alternative, Microsoft IIS. The final part documents five shell scripts that demonstrate Linux and Bash fundamentals in a practical open-source context.

---

## Part A - Origin and Philosophy (Units 1 and 2)

### A1. The problem Apache was created to solve

In the early days of the web, websites were growing quickly, but web server software was not evolving at the same speed. NCSA HTTPd was one of the most widely used servers at that time, but active development slowed down. System administrators still needed security fixes, better stability, and more features, so many of them began maintaining their own local patches.

A group of developers and webmasters started exchanging those patches and coordinating improvements. Rather than waiting for a single central authority to update the server, they built a collaborative process for merging fixes and improvements. This group later became known as the Apache Group. The famous joke that Apache was “a patchy server” reflects this very practical origin: Apache came out of real operational problems, not out of branding or commercial planning.

The main issue Apache solved was control and reliability for web administrators. Before Apache, teams had fewer ways to shape server behaviour according to their own needs. Apache introduced modularity, open source access, and community maintenance. If a bug appeared, people could inspect the source code directly. If a feature was missing, modules could be added. If performance or security needed improvement, contributors could propose fixes instead of waiting passively.

Another important question is why the software was shared openly. At that stage, the growth of the internet depended more on interoperability than on vendor lock-in. The web could not scale properly if essential infrastructure remained closed and fragmented. Apache provided a practical, standards-based server that universities, businesses, public institutions, and individuals could use without licensing barriers.

From a software history perspective, Apache represents a shift from scattered patching practices to a mature model of open governance. It demonstrated that distributed contributors, including both volunteers and organizations, could create infrastructure software trusted by millions of systems worldwide.

### A2. The license - what it actually means

Apache HTTP Server is released under the **Apache License 2.0**. This is a permissive free and open-source license. It allows broad reuse while also including an explicit patent grant and clear rules for redistribution.

#### The four freedoms and Apache License 2.0

The classic four freedoms of free software are:

1. The freedom to run the program for any purpose.  
2. The freedom to study how the program works and modify it.  
3. The freedom to redistribute copies.  
4. The freedom to distribute modified versions.  

In practice, Apache License 2.0 supports all of these freedoms. A user can run Apache, inspect the source code, modify it, and share either the original or modified versions. The license mainly requires preservation of notices, disclaimers, and license text. It also contains patent-related terms that protect downstream users from certain patent risks.

#### Can a company modify Apache and sell it without sharing its changes?

Yes. A company can modify Apache and include it in a commercial product without releasing its modified source code to the public. Apache 2.0 is a **permissive** license, not a **copyleft** license. The company must still follow the license conditions, such as keeping notices intact, but it is not forced to publish private changes.

This is one of the major differences between Apache-style licenses and GPL-style licenses. Apache prioritizes adoption and flexibility, especially in commercial environments, while GPL emphasizes reciprocity and keeping derivative work open.

#### GPL vs MIT, and which one I would choose

GPL and MIT are both important open-source licenses, but they encourage different kinds of software ecosystems.

- **GPL** is a strong copyleft license. If someone distributes a modified GPL-based program, they usually have to share the source code under the same license conditions.  
- **MIT** is very permissive. It mainly requires preservation of copyright and license notices. Modified code can later become part of a closed-source product.  

If I were building a project where long-term community contribution was the highest priority, such as an educational platform or a core security tool, I would prefer GPL or another strong copyleft license. It helps ensure that improvements continue flowing back into the community.

If I were building a toolkit, SDK, or infrastructure component where wide adoption mattered most, I would choose MIT or Apache 2.0. For a web server used by many organizations in mixed environments, Apache 2.0 feels like a balanced choice because it encourages both collaboration and commercial adoption.

#### “Free beer” vs “freedom”

“Free as in free beer” means zero monetary cost.  
“Free as in freedom” means user rights and control.

Apache is often free in both senses, but the deeper value is freedom. Even when organizations pay for hosting, support, or managed services around Apache, they still benefit from an open implementation that can be audited, forked, or self-hosted. That ability to move away from a vendor without losing technical control is a question of freedom, not price.

### A3. The ethics of open source

#### Should all software be open source?

There is a strong argument that critical digital infrastructure should be inspectable and accountable. Open source supports transparency, reproducibility, peer review, educational access, and public trust. Software used in government, healthcare, education, or public-facing systems especially benefits from openness because failures in such systems affect many people.

At the same time, I do not think every single piece of software must be open source in all cases. Companies may have business models, research investments, or security concerns that lead them to keep some systems closed. My position is that not all software has to be open source, but software that affects public trust should move toward greater transparency and auditability.

#### Is it ethical to profit from community labour?

It can be ethical, but only when there is fair exchange. Companies like Red Hat have shown that it is possible to build a successful business around open-source software while also contributing heavily to the upstream community. In such cases, profit is linked with maintenance, support, documentation, engineering, and long-term sustainability.

It becomes ethically questionable when organizations only extract value. If a company uses community-built software, avoids contributing fixes, leaves the maintenance burden entirely to volunteers, and still markets itself as part of the open-source ecosystem, that feels unfair. A simple ethical test is reciprocity: does the organization only take, or does it also give back in the form of patches, bug reports, funding, responsible disclosure, documentation, or mentoring?

#### Standing on the shoulders of giants

In software, this phrase means that every project depends on earlier tools, standards, and ideas. Open source makes that inheritance visible and reusable.

Some people argue that reuse reduces originality. I do not agree. Reuse is not the opposite of innovation; in many cases it makes innovation faster. Teams do not need to rebuild basic infrastructure from scratch, so they can spend more time solving new problems. Apache itself is a strong example. By making reliable web serving widely available, it enabled others to innovate on frameworks, applications, deployment models, and the wider internet.

---

## Part B - Linux Footprint (Unit 2)

This section explains how Apache HTTP Server appears and behaves on Linux systems.

### Test environment used

- **Distribution:** Fedora Linux 43  
- **Kernel:** [Fill output of `uname -r`]  
- **Installation method:** `dnf` using RPM packages  
- **Date tested:** [Fill test date]  
- **Environment type:** [Physical machine or VM]  

### Installation method

For this project, Fedora Linux 43 was used. On Fedora, the Apache package is named `httpd`.

Commands used:

```bash
sudo dnf update -y
sudo dnf install -y httpd
```

From an open-source distribution point of view, package repositories act like community-maintained delivery pipelines. Security updates and patches move from upstream maintainers to distribution maintainers and finally to end users through signed packages and update tools.

### Key directories and files

Typical Apache footprint on Linux:

| Component | Debian/Ubuntu Path | RHEL/Fedora Path | Purpose |
| --- | --- | --- | --- |
| Main binary | `/usr/sbin/apache2` | `/usr/sbin/httpd` | Web server executable |
| Main config | `/etc/apache2/apache2.conf` | `/etc/httpd/conf/httpd.conf` | Core configuration |
| Site configs | `/etc/apache2/sites-available` | `/etc/httpd/conf.d` | Virtual host definitions |
| Modules | `/usr/lib/apache2/modules` | `/etc/httpd/modules` or `/usr/lib64/httpd/modules` | Loadable modules |
| Logs | `/var/log/apache2` | `/var/log/httpd` | Access and error logs |
| Web root | `/var/www/html` | `/var/www/html` | Default document root |

This file layout reflects common Linux design principles: binaries go in `/usr`, configuration goes in `/etc`, runtime logs go in `/var/log`, and website content is stored under `/var/www`.

### User and group model

Apache worker processes usually run under a restricted service account. On Fedora 43, that account is generally:

- **apache**

This matters because of the principle of least privilege. Although root privileges may be required briefly during startup or port binding, request handling should not run as root. Running Apache through a less privileged account reduces the impact of possible vulnerabilities.

Verification commands:

```bash
ps aux | grep httpd
id apache
```

### Service management

Apache is managed by **systemd** on modern Linux systems.

Common Fedora commands:

```bash
sudo systemctl start httpd
sudo systemctl stop httpd
sudo systemctl restart httpd
sudo systemctl status httpd
sudo systemctl enable httpd
```

This gives administrators a standard way to control startup behaviour, inspect service state, and manage dependencies.

### Update and patch model

Apache security issues are commonly tracked using CVEs and upstream advisories. The general patch flow is:

1. A bug or vulnerability is discovered.  
2. The issue is reviewed and a patch is prepared upstream.  
3. Apache maintainers publish the fix.  
4. Distribution maintainers package or backport the patch.  
5. Users receive it through package management tools such as `dnf`.  

Commands used on Fedora:

```bash
sudo dnf check-update
sudo dnf upgrade
```

This shows one of the strengths of open-source security: patch development and review are visible, and fixes can be distributed through many trusted channels.

### Evidence placeholders

- Screenshot B1: Apache installation output  
- Screenshot B2: `systemctl status httpd` output  
- Screenshot B3: Config and log directory listing  
- Screenshot B4: `ps aux` showing the Apache service user  

---

## Part C - The FOSS Ecosystem (Units 3 and 4)

Apache does not operate alone. Its real strength comes from standards, libraries, tools, and the wider open-source ecosystem around it.

### Core dependencies and supporting tools

Common Apache build-time or runtime dependencies include:

- APR and APR-util  
- PCRE or PCRE2  
- OpenSSL  
- zlib  
- Core system libraries for threads, sockets, and file operations  

In practical deployments, Apache is often used together with:

- PHP or PHP-FPM  
- Python through WSGI  
- Reverse proxy features for application servers  
- Databases such as MySQL, MariaDB, or PostgreSQL  

### What Apache enabled or inspired

Apache played a huge role in making dynamic websites practical and affordable. Shared hosting providers, colleges, businesses, and independent developers could host websites with comparatively low cost and strong flexibility.

Apache also normalized modular web-server architecture. Features like URL rewriting, TLS, caching, authentication, reverse proxying, and load balancing could be added or adjusted using modules. This changed how administrators thought about web infrastructure.

Apache did not remain the only major web server forever. Other tools like Nginx emerged with different design priorities and performance models. But this competition is itself a sign of a healthy open ecosystem. Open-source software often grows stronger through visible alternatives and shared learning.

### Apache and the LAMP stack

In the famous **LAMP** stack, Apache is the “A”:

- **L** = Linux  
- **A** = Apache  
- **M** = MySQL/MariaDB  
- **P** = PHP/Perl/Python  

Historically, LAMP made web development much more accessible. Students, startups, and small organizations could build a full web platform from open components with plenty of community documentation and support.

Even though cloud-native and containerized architectures are common today, Apache still remains relevant for reverse proxy work, legacy systems, internal hosting, and controlled enterprise environments.

### Community and governance

Apache HTTP Server is maintained under the **Apache Software Foundation (ASF)**. Its governance includes project management committees, mailing lists, contribution review, issue tracking, and merit-based participation norms.

Important community spaces include:

- Apache mailing lists  
- ASF issue trackers and repositories  
- ApacheCon events  
- Distribution communities and technical forums  

This is an important point about open source: a successful project is not only a code repository. It is also a social system built on review processes, release policies, contribution standards, and long-term maintenance culture.

---

## Part D - Open Source vs Proprietary (Critical Analysis)

**Chosen comparison:** Apache HTTP Server vs Microsoft IIS

| Dimension | Apache HTTP Server (Open Source) | Microsoft IIS (Proprietary Alternative) |
| --- | --- | --- |
| Cost | No license fee; main cost comes from infrastructure and administration | Usually linked to Windows Server licensing and enterprise support costs |
| Security and auditability | Source code can be reviewed publicly | Users depend mainly on vendor disclosures |
| Support and reliability | Community support plus commercial support options | Centralized vendor support and tightly integrated enterprise tooling |
| Freedom to modify | High flexibility in modules, configuration, and deployment | Customization is limited by the vendor platform |
| Governance model | Multi-stakeholder open governance | Primarily corporate control |
| Best-fit environment | Strong in Linux, Unix, and mixed environments | Strong in Windows-based enterprise environments |
| Learning value | Open internals help debugging and education | Setup can feel guided, but internals are less transparent |
| Overall position | Better where openness, portability, and long-term control matter | Better where Microsoft-centric infrastructure dominates |

### Two-paragraph verdict

In practical terms, I would recommend Apache when an organization values transparency, portability, flexibility, and long-term control over infrastructure. Its maturity, strong documentation, and large ecosystem make it suitable for both small and large deployments. It is especially useful in Linux-based environments and in teams that want to tune server behaviour carefully instead of relying only on default presets.

If I were to contribute to Apache, I would begin with small but realistic steps such as documentation improvements, issue triage, or minor patches. Large infrastructure projects are rarely improved by one dramatic contribution; they grow through consistent participation, review, and maintenance. That idea matches the spirit of open source itself: software quality is built collectively.

---

## Shell Script Tasks Documentation

This section explains each shell script, the Bash concepts used, and where screenshots should be added.

### Script 1 - System Identity Report

**File:** `scripts/01_system_identity_report.sh`

**Purpose:**
- Displays Linux distribution and kernel details  
- Shows the current user and home directory  
- Prints uptime and current date/time  
- Includes a Linux license note  

**Concepts used:**
- Variables  
- Command substitution `$( )`  
- Conditional file checks  
- Output formatting with `echo`  

**How to run:**

```bash
./scripts/01_system_identity_report.sh
```

**Screenshot placeholder:**  
- Screenshot S1: Output of Script 1  

**Explanation:**  
This script acts as a basic environment summary for the audit. It gathers core system information and prints it in a clear format. It also reinforces one open-source advantage: even essential system identity and licensing details are easy to inspect without closed tools.

### Script 2 - FOSS Package Inspector

**File:** `scripts/02_foss_package_inspector.sh`

**Purpose:**
- Checks whether a package is installed  
- Pulls metadata such as version and license or description  
- Uses a case statement to print a short package note  

**Concepts used:**
- `if-then-else`  
- `case` statement  
- RPM and DPKG compatibility logic  
- `grep` filtering with pipes  

**How to run:**

```bash
./scripts/02_foss_package_inspector.sh httpd
./scripts/02_foss_package_inspector.sh mariadb
./scripts/02_foss_package_inspector.sh git
```

**Screenshot placeholder:**  
- Screenshot S2: Package metadata output  

**Explanation:**  
This script connects package management with open-source awareness. It does not only check whether software is installed; it also helps show the purpose and context of that package, which is useful in understanding Linux software ecosystems.

### Script 3 - Disk and Permission Auditor

**File:** `scripts/03_disk_permission_auditor.sh`

**Purpose:**
- Audits major system directories  
- Reports owner, group, permissions, and size  
- Verifies Apache configuration directory presence and access settings  

**Concepts used:**
- Arrays and `for` loops  
- `ls -ld` parsing with `awk`  
- `du` and `cut` for size extraction  
- Conditional directory checks  

**How to run:**

```bash
./scripts/03_disk_permission_auditor.sh
```

**Screenshot placeholder:**  
- Screenshot S3: Directory audit output  

**Explanation:**  
This script demonstrates practical Linux administration. Incorrect permissions can cause security or operational problems, so automating small audits is a useful habit. It also shows how simple shell tools can provide meaningful system visibility.

### Script 4 - Log File Analyzer

**File:** `scripts/04_log_file_analyzer.sh`

**Purpose:**
- Reads a log file line by line  
- Counts case-insensitive keyword matches  
- Retries when the log file is empty  
- Prints the last five matching lines  

**Concepts used:**
- Command-line arguments  
- `while IFS= read` loop  
- Conditional matching  
- Counters and arithmetic expansion  

**How to run:**

```bash
./scripts/04_log_file_analyzer.sh /var/log/httpd/access_log GET
./scripts/04_log_file_analyzer.sh /var/log/httpd/error_log error
```

**Screenshot placeholder:**  
- Screenshot S4: Keyword count and recent matching lines  

**Explanation:**  
Logs are one of the clearest sources of truth in a system. This script shows how Bash can offer lightweight observability without needing heavy external tooling. The retry logic also demonstrates defensive scripting by accounting for empty-file situations.

### Script 5 - Open Source Manifesto Generator

**File:** `scripts/05_open_source_manifesto_generator.sh`

**Purpose:**
- Collects three user inputs interactively  
- Generates a short personalized manifesto  
- Saves the output to a timestamped text file  

**Concepts used:**
- `read` for input  
- String composition  
- File writing with `>` and `>>`  
- `date` command  

**How to run:**

```bash
./scripts/05_open_source_manifesto_generator.sh
```

**Screenshot placeholder:**  
- Screenshot S5: Interactive output and generated file preview  

**Explanation:**  
This script links technical scripting with personal reflection. It shows that shell tools are not only useful for system tasks, but can also automate simple text-generation workflows in a creative way.

---

## Script Source Code Appendix

**Important:** Keep this section synchronized with the actual files inside `scripts/`. If any script is changed, this appendix should also be updated before final submission.

### 7.1 Script 1 Code

```bash
#!/bin/bash
# Script 1: System Identity Report
# Author: Abeer Saxena | Course: Open Source Software (OSS NGMC)
# Purpose: Show core Linux identity details for the audit environment.

STUDENT_NAME="Abeer Saxena"
SOFTWARE_CHOICE="Apache HTTP Server"

KERNEL="$(uname -r)"
USER_NAME="$(whoami)"
HOME_DIR="$HOME"
UPTIME="$(uptime -p)"
NOW="$(date '+%A, %d %B %Y %I:%M:%S %p')"

if [ -r /etc/os-release ]; then
    DISTRO_NAME="$(grep '^PRETTY_NAME=' /etc/os-release | cut -d= -f2- | tr -d '"')"
else
    DISTRO_NAME="$(uname -s)"
fi

OS_LICENSE_NOTE="Linux kernel is licensed under GNU GPL v2."

echo "============================================================"
echo "Open Source Audit - System Identity Report"
echo "Student   : $STUDENT_NAME"
echo "Software  : $SOFTWARE_CHOICE"
echo "============================================================"
echo "Distro    : $DISTRO_NAME"
echo "Kernel    : $KERNEL"
echo "User      : $USER_NAME"
echo "Home Dir  : $HOME_DIR"
echo "Uptime    : $UPTIME"
echo "Date/Time : $NOW"
echo "License   : $OS_LICENSE_NOTE"
echo "============================================================"
```

### 7.2 Script 2 Code

```bash
#!/bin/bash
# Script 2: FOSS Package Inspector
# Author: Abeer Saxena | Course: Open Source Software (OSS NGMC)

PACKAGE="${1:-httpd}"

if command -v rpm >/dev/null 2>&1; then
    PKG_MANAGER="rpm"
elif command -v dpkg >/dev/null 2>&1; then
    PKG_MANAGER="dpkg"
else
    echo "Error: neither rpm nor dpkg was found on this system."
    exit 1
fi

echo "=============================================="
echo "FOSS Package Inspector"
echo "Package      : $PACKAGE"
echo "Pkg Manager  : $PKG_MANAGER"
echo "=============================================="

if [ "$PKG_MANAGER" = "rpm" ]; then
    if rpm -q "$PACKAGE" &>/dev/null; then
        echo "$PACKAGE is installed."
        rpm -qi "$PACKAGE" | grep -E 'Version|License|Summary'
    else
        echo "$PACKAGE is NOT installed."
    fi
else
    if dpkg -l | grep -E "^ii[[:space:]]+$PACKAGE[[:space:]]" >/dev/null; then
        echo "$PACKAGE is installed."
        dpkg -s "$PACKAGE" | grep -E '^(Version|Maintainer|Description):'
    else
        echo "$PACKAGE is NOT installed."
    fi
fi

echo "----------------------------------------------"
echo "Philosophy note:"

case "$PACKAGE" in
    httpd|apache2)
        echo "Apache: the web server that helped shape the open internet."
        ;;
    mysql|mariadb|mariadb-server)
        echo "MariaDB/MySQL: open databases supporting applications at scale."
        ;;
    firefox|firefox-esr)
        echo "Firefox: a community-backed browser that supports an open web."
        ;;
    vlc)
        echo "VLC: open media software built around interoperability."
        ;;
    git)
        echo "Git: distributed version control built for collaboration."
        ;;
    python3|python)
        echo "Python: a language shaped by shared tools and community process."
        ;;
    *)
        echo "This package belongs to the wider free and open-source ecosystem."
        ;;
esac

echo "=============================================="
```

### 7.3 Script 3 Code

```bash
#!/bin/bash
# Script 3: Disk and Permission Auditor
# Author: Abeer Saxena | Course: Open Source Software (OSS NGMC)

DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "============================================================"
echo "Directory Audit Report"
echo "============================================================"

for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        PERMS="$(ls -ld "$DIR" | awk '{print $1, $3, $4}')"
        SIZE="$(du -sh "$DIR" 2>/dev/null | cut -f1)"
        echo "$DIR => Permissions/Owner/Group: $PERMS | Size: $SIZE"
    else
        echo "$DIR does not exist on this system."
    fi
done

echo "------------------------------------------------------------"
echo "Apache configuration directory check"
echo "------------------------------------------------------------"

if [ -d "/etc/httpd" ]; then
    CONFIG_DIR="/etc/httpd"
elif [ -d "/etc/apache2" ]; then
    CONFIG_DIR="/etc/apache2"
else
    CONFIG_DIR=""
fi

if [ -n "$CONFIG_DIR" ]; then
    CFG_PERMS="$(ls -ld "$CONFIG_DIR" | awk '{print $1, $3, $4}')"
    echo "Config directory found: $CONFIG_DIR"
    echo "Permissions/Owner/Group: $CFG_PERMS"
else
    echo "Apache config directory not found."
fi

echo "============================================================"
```

### 7.4 Script 4 Code

```bash
#!/bin/bash
# Script 4: Log File Analyzer
# Author: Abeer Saxena | Course: Open Source Software (OSS NGMC)

LOGFILE="$1"
KEYWORD="${2:-error}"
COUNT=0
RETRIES=0
MAX_RETRIES=3

if [ -z "$LOGFILE" ]; then
    echo "Usage: $0 /path/to/logfile [keyword]"
    exit 1
fi

if [ ! -f "$LOGFILE" ]; then
    echo "Error: File $LOGFILE not found."
    exit 1
fi

while [ ! -s "$LOGFILE" ]; do
    RETRIES=$((RETRIES + 1))
    echo "Warning: $LOGFILE is empty. Retry $RETRIES/$MAX_RETRIES in 2 seconds..."

    if [ "$RETRIES" -ge "$MAX_RETRIES" ]; then
        echo "No data available after retries. Exiting."
        exit 1
    fi

    sleep 2
done

while IFS= read -r LINE; do
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

echo "============================================================"
echo "Keyword '$KEYWORD' found $COUNT times in $LOGFILE"
echo "------------------------------------------------------------"
echo "Last 5 matching lines:"

MATCHES="$(tail -n 2000 "$LOGFILE" | grep -i "$KEYWORD" | tail -n 5)"

if [ -n "$MATCHES" ]; then
    echo "$MATCHES"
else
    echo "No matching lines found."
fi

echo "============================================================"
```

### 7.5 Script 5 Code

```bash
#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Author: Abeer Saxena | Course: Open Source Software (OSS NGMC)

echo "Answer three questions to generate your manifesto."
echo

read -r -p "1. Name one open-source tool you use every day: " TOOL
read -r -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -r -p "3. Name one thing you would build and share freely: " BUILD

DATE="$(date '+%d %B %Y')"
OUTPUT="manifesto_$(whoami)_$(date '+%Y%m%d_%H%M%S').txt"

echo "Open Source Manifesto" > "$OUTPUT"
echo "Generated on: $DATE" >> "$OUTPUT"
echo >> "$OUTPUT"
echo "I rely on $TOOL every day, and it reminds me that software can be practical and shared." >> "$OUTPUT"
echo "To me, freedom means $FREEDOM: the ability to learn from code, improve it, and pass that value forward." >> "$OUTPUT"
echo "If given the chance, I would build $BUILD and share it openly so others can adapt it to their own needs." >> "$OUTPUT"
echo "This is my commitment to open collaboration and responsible technology." >> "$OUTPUT"

echo
echo "Manifesto saved to $OUTPUT"
echo "---------------- Manifesto Preview ----------------"
cat "$OUTPUT"
echo "---------------------------------------------------"
```

---

## Conclusion

This audit shows that Apache HTTP Server is not just a software package but also a historical and philosophical example of open-source collaboration. It addressed a real technical need at the right moment, evolved through community governance, and became essential infrastructure for the public web.

From a Linux operations viewpoint, Apache follows transparent and predictable patterns for installation, service management, configuration, and patching. From a broader social viewpoint, its permissive licensing and strong ecosystem links show how open infrastructure can serve both community values and real commercial use.

The shell scripts in this project also show that open source is best understood not only through theory, but through practice. Package inspection, permissions auditing, log analysis, and scripting all help connect open-source ideas with real system administration work.

---

## References

1. GNU Project - The Free Software Definition  
2. Open Source Initiative - The Open Source Definition  
3. Apache Software Foundation - Apache HTTP Server Documentation  
4. SPDX License List  
5. Linux manual pages and Fedora package documentation  
6. *The Linux Command Line* by William Shotts  

---

## Final Personalization Checklist

- Replace all remaining placeholders such as kernel version, test date, and environment type  
- Add real command outputs from your own Fedora setup  
- Insert screenshots S1 to S5 and B1 to B4 in the proper sections  
- Add one short paragraph about any challenge you faced while working on Fedora 43  
- Mention one improvement you would make in each script if you had more time  
- Verify that every script runs successfully before exporting to PDF  

---

## Fedora 43 Run Order

Use this sequence during final testing and screenshot capture:

1. `cat /etc/fedora-release`  
2. `sudo dnf update -y`  
3. `sudo dnf install -y httpd curl`  
4. `sudo systemctl enable --now httpd`  
5. `sudo systemctl status httpd`  
6. `chmod +x scripts/*.sh`  
7. `./scripts/01_system_identity_report.sh`  
8. `./scripts/02_foss_package_inspector.sh httpd`  
9. `./scripts/03_disk_permission_auditor.sh`  
10. `curl -I http://localhost`  
11. `curl -I http://localhost/nonexistent`  
12. `./scripts/04_log_file_analyzer.sh /var/log/httpd/access_log GET`  
13. `sudo ./scripts/04_log_file_analyzer.sh /var/log/httpd/error_log error`  
14. `./scripts/05_open_source_manifesto_generator.sh`
