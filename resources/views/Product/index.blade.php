<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Filtered list of products</title>
</head>
<body>

<table style="text-align: center">
    <tr>
        <th>Id</th>
        <th>Nazwa</th>
        <th>Cena</th>
        <th>Cena Promocyjna</th>
    </tr>
    @forelse($products as $product)
        <tr>
            <td>{{ $product->id }}</td>
            <td>{{ $product->nazwa }}</td>
            @if(!empty($product->cena_promocyjna))
                <td style="text-decoration: line-through;">{{ $product->cena }}</td>
            @else
                <td>{{ $product->cena }}</td>
            @endif
            <td>{{ $product->cena_promocyjna ?? '---' }}</td>
        </tr>
    @empty

    @endforelse
</table>

</body>
</html>
