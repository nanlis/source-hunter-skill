param(
  [string]$TargetDir
)

$ErrorActionPreference = "Stop"

$repoRoot = Split-Path -Parent $MyInvocation.MyCommand.Path
$sourceDir = Join-Path $repoRoot "source-hunter"

if (-not (Test-Path (Join-Path $sourceDir "SKILL.md"))) {
  throw "Cannot find source-hunter/SKILL.md next to install.ps1"
}

if (-not $TargetDir) {
  if ($env:CODEX_HOME) {
    $TargetDir = Join-Path $env:CODEX_HOME "skills"
  } else {
    $TargetDir = Join-Path $env:USERPROFILE ".codex\skills"
  }
}

$installDir = Join-Path $TargetDir "source-hunter"
New-Item -ItemType Directory -Force -Path $TargetDir | Out-Null

if (Test-Path $installDir) {
  $stamp = Get-Date -Format "yyyyMMdd-HHmmss"
  $backupDir = Join-Path $TargetDir "source-hunter.backup.$stamp"
  Move-Item -LiteralPath $installDir -Destination $backupDir
  Write-Host "Existing source-hunter backed up to: $backupDir"
}

Copy-Item -Recurse -Force -LiteralPath $sourceDir -Destination $installDir

Write-Host "Installed source-hunter to: $installDir"
Write-Host 'Try: Use $source-hunter to collect verified, high-quality sources for this topic: context engineering for AI agents.'
