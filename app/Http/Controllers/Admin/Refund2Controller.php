<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class Refund2Controller extends Controller
{
    public function index()
    {
        return view('admin.refunds.index');
    }

    public function show($refund)
    {
        $refund = Refund::findOrFail($refund);
        return view('admin.refunds.show', compact('refund'));
    }

    public function reply(Request $request, $refund)
    {
        $refund = Refund::findOrFail($refund);
        $refund->update([
            'reply' => $request->reply,
            'status' => 'replied',
        ]);

        return redirect()->route('admin.refunds.show', $refund);
    }

    public function accept($refund)
    {
        $refund = Refund::findOrFail($refund);
        $refund->update(['status' => 'accepted']);

        return redirect()->route('admin.refunds.index');
    }

    public function decline($refund)
    {
        $refund = Refund::findOrFail($refund);
        $refund->update(['status' => 'declined']);

        return redirect()->route('admin.refunds.index');
    }

    public function destroy($refund)
    {
        $refund = Refund::findOrFail($refund);
        $refund->delete();

        return redirect()->route('admin.refunds.index');
    }
}