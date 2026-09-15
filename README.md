# gatekeeper
一个轻量级开发迭代流程SKILL

## 安装
```bash
# Codex，全局安装
npx skills add X-JS/gatekeeper -s '*' -g -y
```

### 为agent安装
```bash
# Claude Code，全局安装
npx skills add X-JS/gatekeeper -s '*' -g -a claude-code -y
```

### 项目目录下安装SKILLS
```bash
# -s --skill '*' 安装仓库 `skills/` 下**全部 skill**；也可以写单个技能名
npx skills add X-JS/gatekeeper -s '*' -a opencode -y
```


## 卸载
```bash
npx skills remove gatekeeper gatekeeper-abort gatekeeper-finish gatekeeper-fix gatekeeper-init gatekeeper-next -g -y
```

### 交互式卸载
```bash
npx skills remove -g
```