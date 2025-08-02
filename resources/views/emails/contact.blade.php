@component('mail::message')
# New Contact Request

**Name:** {{ $data['name'] }}  
**Email:** {{ $data['email'] }}  
**Phone:** {{ $data['phone'] }}  
**Subject:** {{ $data['subject'] }}

---

**Message:**  
{{ $data['message'] }}

@endcomponent
