export default {
	state: {
	  carts: {} // Almacenará los carritos de los usuarios
	},
	mutations: {
	  addToCart(state, { userId, product }) {
		if (!state.carts[userId]) {
		  state.carts[userId] = [];
		}
		state.carts[userId].push(product);
	  },
	  // ... otras mutaciones ...
	},
	actions: {
	  addToUserCart({ commit }, { userId, product }) {
		commit('addToCart', { userId, product });
	  },
	  // ... otras acciones ...
	},
	getters: {
	  getCartByUserId: state => userId => {
		return state.carts[userId] || [];
	  },
	  // ... otros getters ...
	}
  };
