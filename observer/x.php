<?php

/** Controla os observers */
class EventManager implements SplSubject
{
    private array $observers = array();
    private array $data = [];

    public function attach(SplObserver $observer): void
    {
        $this->observers[] = $observer;
    }

    public function detach(SplObserver $observer): void
    {
        $key = array_search($observer, $this->observers, true);
        if ($key) {
            unset($this->observers[$key]);
        }
    }

    public function setEventData(array $data): void
    {
        $this->data = $data;
    }

    public function getData(): string
    {
        return json_encode($this->data);
    }

    public function notify(): void
    {
        foreach ($this->observers as $observer) {
            $observer->update($this);
        }
    }
}

/** Observer criado */
class AlertListener implements SplObserver
{
    public function __construct(private string $name)
    {
    }

    public function update(SplSubject $subject): void
    {
        echo "{$this->name} {$subject->getData()} ALERT!" . PHP_EOL;
    }
}

abstract class Editor
{
    public function __construct(private EventManager $eventManager)
    {
    }
    /** Abre arquivo*/
    public function open($name): void
    {
        $file = fopen($name, 'w');
        fclose($file);

        /** Dispara evento de abertura de aruivos */
        $this->eventManager->setEventData(['event_type' => 'OPEN', 'filename' => $name]);
        $this->eventManager->notify();
    }

    public function insertLine(int $lineNumber, string $text): void
    {
        $linhas = file('teste.txt');
        if ($text == "EOF") {
            return;
        }
        unlink('teste.txt');
        $file = fopen('teste.txt', 'a+');
        if (!$linhas) {
            fwrite($file, $text . "\n");
        }
        foreach ($linhas as $linha => $value) { //loop em todas as linhas
            // insere valor na linha passada como parametro
            if ($linha + 1 == $lineNumber) {
                fwrite($file, $text . "\n");
            }
            fwrite($file, $value);
        }
        fclose($file);
    }

    public function removeLine(int $lineNumber): void
    {
        $linhas = file('teste.txt');
        unlink('teste.txt');
        $file = fopen('teste.txt', 'a+');
        foreach ($linhas as $linha => $value) {
            // remove valor na linha passada como parametro
            if ($linha + 1 != $lineNumber) {
                fwrite($file, $value);
            }
        }
        fclose($file);
    }

    public function save(): void
    {
        $linhas = file("teste.txt");
        /** Imprime no terminal */
        foreach ($linhas as $value) { //loop em todas as linhas
            echo $value;
        }
        /** Dispara evento de arquivo salvo */
        $this->eventManager->setEventData(['event_type' => 'SAVE', 'filename' => 'teste.txt']);
        $this->eventManager->notify();
    }
}

class TextEditor extends Editor
{
}

$event = new EventManager();
$listen1 = new AlertListener('LISTEN 1');
$listen2 = new AlertListener('LISTEN 2');
/** Adiciona os observers/listeners */
$event->attach($listen1);
$event->attach($listen2);


$editor = new TextEditor($event);
$editor->open('teste.txt');
$editor->insertLine(1, "Linha 1");
$editor->insertLine(2, "Linha ERRADA");
$editor->removeLine(2);
$editor->save();
