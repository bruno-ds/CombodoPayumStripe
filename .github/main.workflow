workflow "CI" {
  on = "push"
  resolves = ["PHP Runner"]
}

action "PHP Runner" {
  uses = "franzliedke/gh-action-php@0.2.0"
  runs = "php7.2 vendor/bin/phpunit"
}
