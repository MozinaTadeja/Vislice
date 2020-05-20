% import model

<!DOCTYPE html>
<html>

<body>

  <h1>Vislice</h1>

  <blockquote>
    Vislice so najboljša igra za preganjanje dolgčasa (poleg tetrisa).
    <small>Študentje</small>
  </blockquote>

<table>
<td>
    <tr>
        <h2>{{igra.pravilni_del_gesla()}} </h2>
    </tr>

    <tr>
        <br>Nepravilni ugibi : {{igra.nepravilni_ugibi()}}
    </tr>

    <tr>
        <br><img src="../../img/{{igra.stevilo_napak()}}.jpg" alt="obesanje">
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

<form action="/igra/" method="post">
    <button type="submit">Nova igra</button>
</form>

% else:



<form action="/igra/{{id_igre}}/" method="post">
    Črka: <input type="text" name='crka'>
    <button type="submit">Pošlji ugib</button>
</form>
% end

</body>

</html>