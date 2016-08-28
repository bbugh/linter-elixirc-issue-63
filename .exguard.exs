use ExGuard.Config

guard("unit-test", run_on_start: true)
|> command("mix test --color || tput bel")
|> watch(~r{\.(erl|ex|exs|eex|xrl|yrl)\z}i)
|> notification(:auto)
