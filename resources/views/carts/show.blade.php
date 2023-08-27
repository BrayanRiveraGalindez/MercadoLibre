<x-app title="Carrito de Compras">
    <section class="container">
        <div class="d-flex justify-content-center my-4">
            <h1>Carrito de compras</h1>
        </div>
		{{-- //Esta tambien me la dio David :auth_user ={{Auth::user()}} --}}
        <cart-view :products="{{ $products->toJson() }}" :auth_user ="{{$user=Auth::user()}}"/>
    </section>
</x-app>
