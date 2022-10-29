<?php

interface Strategy
{
    public function execute(int $a, int $b): int;
}

class Soma implements Strategy
{
    public function execute(int $a, int $b): int
    {
        return $a + $b;
    }
}

class Subtracao implements Strategy
{
    public function execute(int $a, int $b): int
    {
        return $a - $b;
    }
}

class Multiplicacao implements Strategy
{
    public function execute(int $a, int $b): int
    {
        return $a * $b;
    }
}

class Cliente
{
    public function __construct(private Strategy $strategy)
    {
    }

    public function setStrategy(Strategy $strategy): void
    {
        $this->strategy = $strategy;
    }

    public function execute(int $a, int $b, string $string): void
    {
        $this->handleOperation($string);
        echo $this->strategy->execute($a, $b) . PHP_EOL;
    }

    private function handleOperation(string $operation): void
    {
        switch ($operation) {
            case "soma":
                $oper = new Soma();
                break;
            case "subtracao":
                $oper = new Subtracao();
                break;
            default:
                $oper = new Multiplicacao();
                break;
        }
        $this->setStrategy($oper);
    }
}

$client = new Cliente(new Soma());
$client->execute(2, 4, "subtracao");
