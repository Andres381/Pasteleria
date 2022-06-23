<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link rel="stylesheet" type="text/css" href="<?php echo base_url('assets/css/about.css'); ?>" />
    <link rel="stylesheet" type="text/css" href="<?php echo base_url('assets/css/interfaz.css'); ?>" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>

<body>
    <section class="about" id="about">
        <div class="container">

            <div class="row align-items-center">
                <div class="col-md-6">
                    <img src="<?php echo base_url() . 'assets/images/1.jpg'; ?>" class="w-100" />
                </div>
                <div class="col-md-6">
                    <span>¿Porqué comer pastel?</span>
                    <h3 class="title">Una alimentación sana de pasteles</h3>
                    <p>tenemos todo tipo de pasteles fabricados a base de diferentes elementos, es decir, en algunos tenemos leche, otros tenemos otro tipo determinado de fruta.</p>
                    <div class="icons-container">
                        <div class="icons">
                            <i class="fas fa-birthday-cake"></i>
                            <h3>Mejor pastel</h3>
                        </div>
                        <div class="icons">
                            <i class="fas fa-calendar"></i>
                            <h3>Entrega</h3>
                        </div>
                        <div class="icons">
                            <i class="fas fa-headset"></i>
                            <h3>24/7 service</h3>
                        </div>
                    </div>
                </div>
            </div>

        </div>

    </section>


    <div class="container">

        <h1 class="title h1 bg-warning "> Productos </h1>
        <h1 class="display-4">Pasteles</h1>


        <div class="products-container">

            <div class="product card" data-name="p-1">
                <img src="<?php echo base_url() . 'assets/images/1.jpg'; ?>" />
                <h3>Pastel de chocolate</h3>
                <div class="price">$312.00</div>
            </div>

            <div class="product card" data-name="p-2">
                <img src="<?php echo base_url() . 'assets/images/2.jpg'; ?>" />
                <h3>Pastel edición Happy Birthday</h3>
                <div class="price">$322.00</div>
            </div>

            <div class="product card" data-name="p-3">
                <img src="<?php echo base_url() . 'assets/images/3.jpg'; ?>" />
                <h3>Pastel de Snoopy</h3>
                <div class="price">$351.00</div>
            </div>

            <div class="product card" data-name="p-4">
                <img src="<?php echo base_url() . 'assets/images/4.jpg'; ?>" />
                <h3>Pastel de zarzamora con queso</h3>
                <div class="price">$351.00</div>
            </div>

            <div class="product card" data-name="p-5">
                <img src="<?php echo base_url() . 'assets/images/5.jpg'; ?>" />
                <h3>Tarta de fresa sin horno</h3>
                <div class="price">$351.00</div>
            </div>

            <div class="product card" data-name="p-6">
                <img src="<?php echo base_url() . 'assets/images/11.webp'; ?>" />
                <h3>Especialidad de frutas</h3>
                <div class="price">$510.00</div>
            </div>

        </div>

    </div>

    <div class="products-preview">

        <div class="preview" data-target="p-1">
            <i class="fas fa-times"></i>
            <img src="<?php echo base_url() . 'assets/images/1.jpg'; ?>" width="360" />
            <h3>Pastel de chocolate</h3>
            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star-half-alt"></i>
                <span>( 250 )</span>
            </div>
            <p>El pastel de chocolate, tarta de chocolate o torta de chocolate</p>
            <div class="price">$312.00</div>
            <div class="buttons">
                <a href="#" class="buy">Comprar ahora</a>
                <a href="#" class="cart">Añadir al carrito</a>
            </div>
        </div>

        <div class="preview" data-target="p-2">
            <i class="fas fa-times"></i>
            <img src="<?php echo base_url() . 'assets/images/2.jpg'; ?>" width="360" />
            <h3>Pastel edición Happy Birthday</h3>
            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star-half-alt"></i>
                <span>( 250 )</span>
            </div>
            <p>Los ingredientes pueden variar dependiendo de la receta, pero por lo general incluyen una combinación de huevos, azúcar.</p>
            <div class="price">$322.00</div>
            <div class="buttons">
                <a href="#" class="buy">Comprar ahora</a>
                <a href="#" class="cart">Añadir al carrito</a>
            </div>
        </div>

        <div class="preview" data-target="p-3">
            <i class="fas fa-times"></i>
            <img src="<?php echo base_url() . 'assets/images/3.jpg'; ?>" width="360" />
            <h3>Pastel de Snoopy</h3>
            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star-half-alt"></i>
                <span>( 250 )</span>
            </div>
            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Consequatur, dolorem.</p>
            <div class="price">$351.00</div>
            <div class="buttons">
                <a href="#" class="buy">Comprar ahora</a>
                <a href="#" class="cart">Añadir al carrito</a>
            </div>
        </div>

        <div class="preview" data-target="p-4">
            <i class="fas fa-times"></i>
            <img src="<?php echo base_url() . 'assets/images/4.jpg'; ?>" width="360" />
            <h3>Pastel de Zarzamora</h3>
            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star-half-alt"></i>
                <span>( 250 )</span>
            </div>
            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Consequatur, dolorem.</p>
            <div class="price">$351.00</div>
            <div class="buttons">
                <a href="#" class="buy">Comprar ahora</a>
                <a href="#" class="cart">Añadir al carrito</a>
            </div>
        </div>

        <div class="preview" data-target="p-5">
            <i class="fas fa-times"></i>
            <img src="<?php echo base_url() . 'assets/images/5.jpg'; ?>" width="360" />
            <h3>Tarta de fresa sin horno</h3>
            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star-half-alt"></i>
                <span>( 250 )</span>
            </div>
            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Consequatur, dolorem.</p>
            <div class="price">$351.00</div>
            <div class="buttons">
                <a href="#" class="buy">Comprar ahora</a>
                <a href="#" class="cart">Añadir al carrito</a>
            </div>
        </div>

        <div class="preview" data-target="p-6">
            <i class="fas fa-times"></i>
            <img src="<?php echo base_url() . 'assets/images/11.webp'; ?>" width="360" />
            <h3>Especialidad de frutas</h3>
            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star-half-alt"></i>
                <span>( 250 )</span>
            </div>
            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Consequatur, dolorem.</p>
            <div class="price">$510.00</div>
            <div class="buttons">
                <a href="#" class="buy">Comprar ahora</a>
                <a href="#" class="cart">Añadir al carrito</a>
            </div>
        </div>

    </div>

</body>
<script type="text/javascript" src="<?php echo base_url('assets/js/help.js'); ?>"></script>

</html>