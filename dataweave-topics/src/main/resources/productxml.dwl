%dw 2.0
output application/dw

import getOfferPrice as gop, vGetOfferPrice as vgop from mymodules::CustomModules

import dw::core::Strings


 fun formatData(myinput: String, formatter: (Number) -> String ) = 
              formatter(myinput)
              
fun chain(myinput, myfunction) = myfunction(myinput)

---
 chain(
     chain({one:"one", two:"two"}, (x) -> x.one ++ " " ++ x.two),
     upper
     )

// {one:"one", two:"two"} chain (x) -> x.one ++ " " ++ x.two chain upper

// upper({one:"one", two:"two"} chain (x) -> x.one ++ " " ++ x.two)


// "SilverSpring" chain lower

// formatData("Silver Spring", upper)


// "Silver Spring" formatData upper


/* 
product @(pid: payload.productId): {
	
	pname: payload.name,
	offer: {
		offerPrice: 
		vgop(payload.originalPrice,payload.offer.discountPercentage),
		//discountPercentage: payload.offer.discountPercentage,
	},
	originalPrice: payload.originalPrice,
	img1: payload.images[0]
}

*/




