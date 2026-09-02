<#
批量安装OpenCode多个skills
运行位置：项目根目录（存在 .opencode 文件夹的同级）
#>

# ====================== 【请修改这里为你自己的信息】======================
# GitHub仓库skills父目录tree地址，不要带末尾skill名字
$githubRepoBaseUrl = "https://github.com/X-JS/gatekeeper/tree/dev/skills"

# 填写你仓库 skills/ 下面所有skill子文件夹名称
$skillNames = @(
    "gatekeeper-init",
    "gatekeeper-next",
    "gatekeeper-fix",
    "gatekeeper-abort",
    "gatekeeper-finish"
)
# ======================================================================

# 目标目录：项目本地 .opencode/skills
$targetDir = Join‑Path $PWD.Path ".opencode\skills"

# 如果目标文件夹不存在就创建
if (-not (Test‑Path $targetDir)) {
    New‑Item -ItemType Directory -Path $targetDir -Force | Out‑Host
    Write‑Host "创建目标目录：$targetDir"
}

Write‑Host "`n===== 开始批量安装 Skills ====="
foreach ($skill in $skillNames) {
    $skillUrl = "$githubRepoBaseUrl/$skill"
    Write‑Host "`n👉 正在安装：$skill"
    Write‑Host "URL: $skillUrl"

    # 项目本地安装：不加 -g，不加 -a opencode
    npx skills add $skillUrl -y

    if ($LASTEXITCODE -eq 0) {
        Write‑Host "✅ $skill 安装完成"
    }
    else {
        Write‑Host "❌ $skill 安装失败，请检查链接、仓库是否公开、SKILL.md是否存在"
    }
}

Write‑Host "`n===== 全部执行完毕 ====="
Write‑Host "请查看 .opencode/skills/ 目录确认文件"
