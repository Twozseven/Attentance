<?php
namespace App;
use Illuminate\Database\Eloquent\Model;
class Attentance extends Model{
    protected  $table='attentance';
    protected  $primaryKey='id';
    //protected  $table='attentance_rule_type';

    protected  function  getDateFormat()
    {
        return time();
    }
}

