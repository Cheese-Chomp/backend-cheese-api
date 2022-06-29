-- Use this file to define your SQL tables
-- The SQL in this file will be executed when you run `npm run setup-db`
DROP TABLE IF EXISTS cheeses;

CREATE TABLE cheeses (
    id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    name VARCHAR NOT NULL,
    description VARCHAR NOT NULL, 
    url VARCHAR NOT NULL,
    pairs VARCHAR NOT NULL,
    smells BOOLEAN
);

INSERT INTO cheeses (name, description, url, pairs, smells) 
VALUES
(
    'American',
    'American is a creamy, smooth cheese made from blending natural cheeses. It comes in several forms including individually wrapped cheese slices, small pre-sliced blocks and large blocks. It melts well.',
    'https://www.organicauthority.com/.image/t_share/MTU5MzI5OTc3NjUzMzM5MzUw/shutterstock_288297071.jpg',
    'pairs with chicken broth',
    false
),
(
    'Asiago',
    'Asiago, a nutty-flavored cheese, comes in two forms: fresh and mature. The fresh has an off-white color and is smoother and milder, while mature Asiago is yellowish and somewhat crumbly. Depending on its age, Asiago can be grated, melted or sliced.',
    'https://www.thespruceeats.com/thmb/jR2GuCLkYrFac2c2PZWvrzNFfYE=/2063x1453/filters:no_upscale():max_bytes(150000):strip_icc()/GettyImages-187188253-c100e628c78540aaa5f0ce3ab342ec88.jpg',
    'pairs with fish broth',
    true
),
(
    'Blue Cheese',
    'Blue is a general name for cheeses that were made with Penicillium cultures, which creates “blue” spots or veins. Blue cheese has a distinct smell and, what some consider, an acquired taste. Blue cheeses can be eaten crumbed or melted.',
    'https://assets.bonappetit.com/photos/57c4bcde6a6acdf3485df8a5/master/w_1600%2Cc_limit/bleu-dauvergne.jpg',
    'pairs with bone broth',
    true
),
(
    'Brie',
    'Brie is a soft, white cheese. It comes in a wheel, sometimes in a small wooden box, and is considered a great dessert cheese. Experts recommend enjoying it at room temperature.',
    'http://cdn.shopify.com/s/files/1/2836/2982/products/brie-recipe_grande.jpg?v=1533088694',
    'pairs with turkey broth',
    false
),
(
    'Cheddar',
    'This popular cheese comes in many variations. Its flavor can range from creamy to sharp, and its color can run between a natural white to pumpkin orange. A Cheddars texture changes as it ages, becoming drier and more crumbly.',
    'https://cdn.cnn.com/cnnnext/dam/assets/200623110902-cheddar-cubes-super-169.jpg',
    'pairs with sturgeon broth',
    true
),
(
    'Cotija',
    'This hard, crumbly cheese begins as mild and salty, and becomes tangier as it ages. It doesn not melt, so it is used for grating on soups, tacos, tostadas.',
    'https://www.cheese.com/media/img/cheese/08-cotija-shutterstock_171554048.jpg',
    'pairs with pigeon broth',
    false
),
(
    'Emmental',
    'When people think of “Swiss cheese,” they are likely thinking of Emmental (also known as Emmentaler). When the cheese curds are cooked and pressed together, bubbles form, which leave the holes in the cheese. It is sweet, tangy and melts well.',
    'https://cdn.cnn.com/cnnnext/dam/assets/200623110902-cheddar-cubes-super-169.jpg',
    'pairs with cod broth',
    true
),
(
    'Gorgonzola',
    'Gorgonzola is one of the worlds oldest types of blue cheese. It has a crumbly and soft texture, and is taste can range from creamy to sharp.',
    'https://rms.condenast.it/rms/public/5d8/4d0/fa7/thumb_4123_1200_670_0_0_auto.jpg',
    'pairs with sheep broth',
    true
),
(
    'Gruyere',
    'This slightly grainy cheese is known for its fruity, earthy and nutty flavors. It melts well and adds a savory flavor without overpowering others. It is commonly used on sandwiches, in hot meals, over French onion soup and more.',
    'https://bakeitwithlove.com/wp-content/uploads/2022/03/Gruyere-Cheese-Substitute-sq.jpg',
    'pairs with ferrett broth',
    true
),
(
    'Bocconcini',
    'Meaning “little bites,” bocconcini are egg-sized balls of mozzarella cheese. The cheese is white, rindless, unripened, and elastic in texture with a sweet, buttery taste. Bocconcini can be enjoyed as they are or melted.',
    'https://www.usdairy.com/optimize/getmedia/186bd23d-43ef-46c6-8083-18d4a289232d/bocconcini.jpg.jpg.aspx?format=webp',
    'pairs with mussel broth',
    false
),
(
    'Burrata',
    'Burrata is a fresh cheese featuring a thin layer of cheese with a mixture of stringy curd and fresh cream on the inside. It has a rich flavor and goes well with salads, crusty bread and Italian dishes.',
    'https://www.usdairy.com/optimize/getmedia/eca5d7b0-a7c8-4560-87e4-90d142fd00ea/burrata.jpg.jpg.aspx?format=webp',
    'pairs with nutria broth',
    false
),
(
    'Camembert',
    'Fresh Camembert cheese is bland, hard and crumbly, but becomes smoother with a runny interior as it ages. It has a rich, buttery flavor with a rind that is meant to be eaten.',
    'https://www.usdairy.com/optimize/getmedia/226b66fb-3705-4d0c-a669-5f170ed134d3/camembert.jpg.jpg.aspx?format=webp',
    'pairs with salmon broth',
    true
),
(
    'Colby',
    'While it may look like Cheddar, Colby has a softer texture and less tangy taste. Sometimes it is blended with other different cheeses, like Monterey Jack, to make Colby Jack.',
    'https://www.usdairy.com/optimize/getmedia/d35dac4f-388a-406c-ac1e-145490ba2de8/colby.jpg.jpg.aspx?format=webp',
    'pairs with dandelion broth',
    true
),
(
    'Havarti',
    'Havarti, a semi-soft cheese, has a buttery aroma and taste. It can be sliced, grilled or melted.',
    'https://www.usdairy.com/optimize/getmedia/c067cd49-507e-4dd5-a731-c1e16ad10302/havarti.jpg.jpg.aspx?format=webp',
    'pairs with fezant broth',
    true
),
(
    'Parmesan',
    'Parmesan has a hard, gritty texture and tastes fruity and nutty. It can be grated over pastas, used in soups and more.',
    'https://www.usdairy.com/optimize/getmedia/65a9d571-f8df-40d3-ac21-9f1752937c17/parmesan.jpg.jpg.aspx?format=webp',
    'pairs with turtle broth',
    true
);
