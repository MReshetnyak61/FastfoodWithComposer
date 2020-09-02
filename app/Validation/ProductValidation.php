<?php

namespace App\Validation;

use Aura\Filter\FilterFactory;
use MyStaticFilter as Filter;
class ProductValidation
{
    public function getByType($data)
	{
        $filter = (new FilterFactory)->newValueFilter();
        // the username must be alphanumeric,
// but not *only* numeric,
// between 6 and 10 characters long,
// and cast it to a string
        $ok = $filter->validate($data, 'alnum')
        && ! $filter->validate($data, 'int')
        && $filter->validate($data, 'strlenBetween', 3, 10)
        && $filter->sanitize($data, 'string');
     if (! $ok) {
         echo "Ошибка при выборе типа продукта";
     }
    }
    public function checkid($data)
	{
        $filter = (new FilterFactory)->newValueFilter();
        $ok = $filter->validate($data, 'alnum')
        && $filter->validate($data, 'int');
     if (! $ok) {
         echo "Ошибка при добавлении/удалении продукта";
     }
    }


    
}