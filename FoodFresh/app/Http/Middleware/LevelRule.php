<?php

namespace App\Http\Middleware;

use App\Level;
use Closure;
use Illuminate\Support\Facades\Auth;

class LevelRule
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next, $level)
    {
        $user = Auth::user();
        if($user->id_level != $level) return redirect()->route('loginIndex');
        return $next($request);
    }
}
