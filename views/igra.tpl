% import model
%rebase('base.tpl', title='Vislice')

<table>
<td>
    <tr>
        <h2>{{igra.pravilni_del_gesla()}} </h2>
    </tr>

    <tr>
        <br>Nepravilni ugibi : {{igra.nepravilni_ugibi()}}
    </tr>

    <tr>
        <br><img src="../img/{{igra.stevilo_napak()}}.jpg" alt="obesanje">
    </tr>
</td>
</table>
  
% if poskus == model.ZMAGA:

<h1>ZMAGA!</h1>

<form action="/igra/" method="post">
    <button type="submit">Nova igra</button>
</form>

% elif poskus == model.PORAZ:

<h1>ŠKODA</h1>

Pravilno geslo: {{igra.geslo}}

<form action="/nova_igra/" method="post">
    <button type="submit">Nova igra</button>
</form>

% else:



<form action="/igra/" method="post">
    Črka: <input type="text" name='crka'>
    <button type="submit">Pošlji ugib</button>
</form>
% end
