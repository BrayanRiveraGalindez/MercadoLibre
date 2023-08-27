<template>
	<div>
	  <section class="my-3 d-flex justify-content-center">
		<!-- <h1>Detalle del Producto</h1> -->
	  </section>

	  <div class="container my-3 d-flex justify-content-center" style="width: 70rem;">
		<div class="row">
		  <div class="col-md-12">
			<div class="card mx-3 my-3">
			  <div class="card-body d-flex my-3">
				<div class="col-md-7">
				  <img :src="productImage" class="card-img-top" alt="Portada Producto">
				</div>
				<div class="card col-md-12" style="width: 16rem;">
				  <strong class="card-title mx-4 my-2">{{ product.name }}</strong>
				  <h5 class="card-title mx-4">$ {{ product.price }}</h5>
				  <p class="card-text mx-4">{{ product.description }}</p>
				  <p class="card-text mx-4">Color: {{ product.color }}</p>
				  <p class="card-text mx-4">Disponible: {{ product.stock }}</p>
				  <p class="card-text mx-4">Categoría: {{ product.category.name }}</p>
				  <button class="btn btn-outline-warning mx-4 my-2" @click="agregarAlCarrito">
					<i class="fas fa-shopping-cart"></i>  Añadir al carrito
				  </button>
				</div>
			  </div>
			</div>
		  </div>
		</div>
	  </div>
	</div>
  </template>

  <script>
export default {
	props: ['product','auth_user'],
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
		productImage() {
			if (this.product.file) {
				return this.product.file.route
			}
			return '/storage/images/products/default.png'
		}
	},
	methods: {
		index(){
			this.userId = this.auth_user.id
			console.log(this.userId)
		},
		agregarAlCarrito() {
			const producto = {
				id: this.product.id,
				nombre: this.product.name,
				precio: this.product.price,
				descripcion: this.product.description,
				color: this.product.color,
				stock: this.product.stock,
				categoria: this.product.category.name,
				cantidad: 1
			}

			const carrito = JSON.parse(localStorage.getItem(this.userId)) || []
			const existingProductIndex = carrito.findIndex(item => item.id === producto.id)
			if (existingProductIndex !== -1) {
				// Si el producto ya existe en el carrito, aumenta su cantidad en 1
				carrito[existingProductIndex].cantidad++
			} else {
				// Si el producto no existe en el carrito, lo agrega
				carrito.push(producto)
			}
			// console.log(this.auth_user)
			localStorage.setItem(this.userId, JSON.stringify(carrito))

			const response = Swal.fire({
				icon: 'success',
				title: 'Producto añadido correctamente'
			})
		}
	}
}
</script>
