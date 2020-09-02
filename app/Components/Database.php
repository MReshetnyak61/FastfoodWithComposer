<?php

namespace App\Components;
use Illuminate\Database\Capsule\Manager as Capsule;
use App\Config\DB_config;
class Database
{
    public function __construct()
    {
        $capsule = new Capsule;
        $config = new DB_config;
        $capsule->addConnection([
            'driver'       => $config->driver,
            'host'         => $config->host,
            'database'     => $config->database,
            'username'     => $config->username,
            'password'     => $config->password,
            'charset'      => $config->charset,
            'collation'    => $config->collation,
            'prefix'       => $config->prefix,
        ]);
        $capsule->setAsGlobal();
        // Setup the Eloquent ORM… 
        $capsule->bootEloquent();
    }
}
