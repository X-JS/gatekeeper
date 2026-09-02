# gatekeeper
一个轻量级开发迭代流程SKILL

## 第一步，安装SKILLS
```bash
# Codex，全局安装
npx skills add X-JS/gatekeeper -s '*' -g -a codex -y

# Claude Code，全局安装
npx skills add X-JS/gatekeeper -s '*' -g -a claude-code -y
```

### 项目目录下安装SKILLS
```bash
# -s --skill '*' 安装仓库 `skills/` 下**全部 skill**；也可以写单个技能名
npx skills add X-JS/gatekeeper -s '*' -a opencode -y
```