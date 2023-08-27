<template>
	<div class="cart">
	  <div class="d-flex justify-content-between mb-3">
		<button class="btn btn-outline-warning" @click="confirmarVaciarCarrito">Vaciar Carrito</button>
	  </div>
	  <table class="table">
		<thead>
		  <tr>
			<th>Nombre</th>
			<th>Precio</th>
			<th>Cantidad</th>
			<th>Acciones</th>
		  </tr>
		</thead>
		<tbody>
		  <tr v-for="(product, index) in cartProducts" :key="index">
			<td>{{ product.nombre }}</td>
			<td>${{ product.precio }}</td>
			<td>
				<input type="number" v-model.number="product.cantidad" min="1" @change="actualizarCantidad(index, product.cantidad)" />
			</td>
			<td>
			  <button class="btn btn-outline-danger" @click="confirmarEliminar(index)">Eliminar</button>
			</td>
		  </tr>
		</tbody>
	  </table>
	  <div class="card" style="width: 15rem;">
		<div class="card-body">
		  <h5 class="card-title">Total Compra</h5>
		  <p class="card-text">$ {{ calcularTotal }}</p>
		</div>
	  </div>
	</div>
  </template>

  <script>
export default {
	props: ['auth_user'], //Esta linea de codigo me la dio David
	data(){
		return{
			userId:null
		}
	},
    mounted() {
		this.index()
        console.log(this.auth_user); // Verifica si se recibe el usuario autenticado correctamente
    },
	computed: {
		cartProducts() {
			return JSON.parse(localStorage.getItem(this.userId)) || []
		},

		calcularTotal() {
			return this.cartProducts.reduce(
				(total, product) => total + product.precio * product.cantidad,
				0
			)
		}
	},

	methods: {
		index(){
			this.userId = this.auth_user.id
			console.log(this.userId)
		},
		confirmarVaciarCarrito() {
			Swal.fire({
				title: '¿Estás seguro?',
				text: 'Esto vaciará todo el carrito',
				icon: 'warning',
				showCancelButton: true,
				confirmButtonText: 'Sí, vaciar',
				cancelButtonText: 'Cancelar'
			}).then(result => {
				if (result.isConfirmed) {
					this.vaciarCarrito()
					Swal.fire('¡Carrito vaciado!', 'Tu carrito ha sido vaciado exitosamente.', 'success')
				}
			})
		},
		confirmarEliminar(index) {
			Swal.fire({
				title: '¿Estás seguro?',
				text: 'Esto eliminará el producto del carrito',
				icon: 'warning',
				showCancelButton: true,
				confirmButtonText: 'Sí, eliminar',
				cancelButtonText: 'Cancelar'
			}).then(result => {
				if (result.isConfirmed) {
					this.eliminarDelCarrito(index)
					Swal.fire('¡Producto eliminado!', 'El producto ha sido eliminado del carrito.', 'success')
				}
			})
		},
		eliminarDelCarrito(index) {
			const carrito = JSON.parse(localStorage.getItem(this.userId)) || []
			const product = carrito[index]

			if (product.cantidad > 1) {
				product.cantidad--
			} else {
				carrito.splice(index, 1)
			}

			localStorage.setItem(this.userId, JSON.stringify(carrito))
			window.location.reload()
		},

		actualizarCantidad(index, nuevaCantidad) {
			console.log(this.userId);
			const carrito = JSON.parse(localStorage.getItem(this.userId)) || []
			const product = carrito[index]
			product.cantidad = nuevaCantidad

			localStorage.setItem(this.userId, JSON.stringify(carrito))
			window.location.reload()
		},
		vaciarCarrito() {
			localStorage.removeItem(this.userId)
			window.location.reload()
		}
	}
}
</script>
