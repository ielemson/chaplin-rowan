<?php

// app/Models/Portfolio.php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Portfolio extends Model
{
    use HasFactory;

    /**
     * The attributes that are mass assignable.
     *
     * @var array<int, string>
     */
    protected $fillable = [
        'title',
        'content',
        'cover_picture',
        'gallery',
        'status',
        'project_date',
        'slug',
        'project_client',
        'project_category'
    ];

    /**
     * The attributes that should be cast to native types.
     *
     * @var array<string, string>
     */
    protected $casts = [
        'gallery' => 'array',  // Automatically convert JSON to array
        'project_date' => 'date',
    ];
}
