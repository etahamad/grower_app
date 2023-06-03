class PlantData {
  final int id;
  final String title, description, sesson, image,image2;

  PlantData({required this.id, required this.title, required this.description, required this.sesson, required this.image, required this.image2});
}

// list of products
// for our demo
List<PlantData> plants = [
  PlantData(
    id: 1,
    title: "Carrot",
    image: 'assets/Plants Images/carrot.jpg',
    image2: 'assets/1-carrot-png-image.png',
    sesson: "Whole year",
    description:
    "The carrot (Daucus carota subsp. sativus) is a root vegetable, typically orange in color, though purple, black, red, white, and yellow cultivars exist, Daucus carota, native to Europe and Southwestern Asia. The plant probably originated in Persia and was originally cultivated for its leaves and seeds. The most commonly eaten part of the plant is the taproot, although the stems and leaves are also eaten. The domestic carrot has been selectively bred for its enlarged, more palatable, less woody-textured taproot.\nThe carrot is a biennial plant in the umbellifer family, Apiaceae. At first, it grows a rosette of leaves while building up the enlarged taproot. Fast-growing cultivars mature within three months (90 days) of sowing the seed, while slower-maturing cultivars need a month longer (120 days). The roots contain high quantities of alpha- and beta-carotene, and are a good source of vitamin A, vitamin K, and vitamin B6. ",
  ),
  PlantData(
    id: 2,
    title: "Tomato",
    image: 'assets/Plants Images/tomato.jpg',
    image2: 'assets/3-tomato-png-image-picture-download.png',
    sesson: "Whole year",
    description:
    "tomato, (Solanum lycopersicum), flowering plant of the nightshade family (Solanaceae), cultivated extensively for its edible fruits. Labelled as a vegetable for nutritional purposes, tomatoes are a good source of vitamin C and the phytochemical lycopene. The fruits are commonly eaten raw in salads, served as a cooked vegetable, used as an ingredient of various prepared dishes, and pickled. Additionally, a large percentage of the world’s tomato crop is used for processing; products include canned tomatoes, tomato juice, ketchup, puree, paste, and “sun-dried” tomatoes or dehydrated pulp.",
  ),
  PlantData(
    id: 3,
    title: "Potato",
    image: 'assets/Plants Images/potato.jpg',
    image2: 'assets/7-potato-png-images-pictures-download.png',
    sesson: "Whole year",
    description:
    "The potato is a starchy food, a tuber of the plant Solanum tuberosum and is a root vegetable native to the Americas. The plant is a perennial in the nightshade family Solanaceae.\nWild potato species can be found from the southern United States to southern Chile.\nThe potato was originally believed to have been domesticated by Native Americans independently in multiple locations, but later genetic studies traced a single origin, in the area of present-day southern Peru and extreme northwestern Bolivia. Potatoes were domesticated there approximately 7,000–10,000 years ago, from a species in the Solanum brevicaule complex.\nIn the Andes region of South America, where the species is indigenous, some close relatives of the potato are cultivated.",
  ),
  PlantData(
    id: 4,
    title: "Onion",
    image: 'assets/Plants Images/onion.jpg',
    image2: 'assets/8-onion-png-image.png',
    sesson: "Spring",
    description:
    "An onion (Allium cepa L., from Latin cepa meaning 'onion'), also known as the bulb onion or common onion, is a vegetable that is the most widely cultivated species of the genus Allium. The shallot is a botanical variety of the onion which was classified as a separate species until 2011. Its close relatives include garlic, scallion, leek, and chive.",
  ),
  PlantData(
    id: 5,
    title: "Cucumber",
    image: 'assets/Plants Images/cucumber.jpg',
    image2: 'assets/11-cucumber-png-image-picture-download.png',
    sesson: "Whole year",
    description:
    "The cucumber (Cucumis sativus) is a widely-cultivated creeping vine plant in the family Cucurbitaceae that bears cylindrical to spherical fruits, which are used as culinary vegetables. Considered an annual plant, there are three main types of cucumber—slicing, pickling, and seedless—within which several cultivars have been created. The cucumber originates from Himalaya to China (Yunnan, Guizhou, Guangxi) and N. Thailand, but now grows on most continents, and many different types of cucumber are grown commercially and traded on the global market. In North America, the term wild cucumber refers to plants in the genera Echinocystis and Marah, though the two are not closely related.",
  ),
  PlantData(
    id: 6,
    title: "Broccoli",
    image: 'assets/Plants Images/broccoli.jpg',
    image2: 'assets/12-broccoli-png-image-with-transparent-background.png',
    sesson: "Whole year",
    description:
    "Broccoli (Brassica oleracea var. italica) is an edible green plant in the cabbage family (family Brassicaceae, genus Brassica) whose large flowering head, stalk and small associated leaves are eaten as a vegetable. Broccoli is classified in the Italica cultivar group of the species Brassica oleracea. Broccoli has large flower heads, usually dark green, arranged in a tree-like structure branching out from a thick stalk which is usually light green. The mass of flower heads is surrounded by leaves. Broccoli resembles cauliflower, which is a different but closely related cultivar group of the same Brassica species.",
  ),
  PlantData(
    id: 7,
    title: "Eggplant",
    image: 'assets/Plants Images/eggplant.jpg',
    image2: 'assets/14-eggplant-png-images-download.png',
    sesson: "Whole year",
    description:
    "Eggplant (US, Canada, Australia, New Zealand, Philippines), aubergine (UK, Ireland) or brinjal (Indian subcontinent, Singapore, Malaysia, South Africa) is a plant species in the nightshade family Solanaceae. Solanum melongena is grown worldwide for its edible fruit.\nMost commonly purple, the spongy, absorbent fruit is used in several cuisines. Typically used as a vegetable in cooking, it is a berry by botanical definition. As a member of the genus Solanum, it is related to the tomato, chili pepper, and potato, although those are of the New World while the eggplant is of the Old World. Like the tomato, its skin and seeds can be eaten, but, like the potato, it is usually eaten cooked. Eggplant is nutritionally low in macronutrient and micronutrient content, but the capability of the fruit to absorb oils and flavors into its flesh through cooking expands its use in the culinary arts.",
  ),
  PlantData(
    id: 8,
    title: "Corn",
    image: 'assets/Plants Images/corn.jpg',
    image2: 'assets/23-corn-png-image.png',
    sesson: "Summer",
    description:
    "Maize (/meɪz/ MAYZ; Zea mays subsp. mays, from Spanish: maíz after Taino: mahis), also known as corn in North American and Australian English, is a cereal grain first domesticated by indigenous peoples in southern Mexico about 10,000 years ago. The leafy stalk of the plant produces pollen inflorescences (or 'tassels') and separate ovuliferous inflorescences called ears that when fertilized yield kernels or seeds, which are fruits.[5][6] The term maize is preferred in formal, scientific, and international usage as the common name because this refers specifically to this one grain whereas corn refers to any principal cereal crop cultivated in a country. For example, in North America and Australia corn is often used for maize, but in England and Wales it can refer to wheat or barley, and in Scotland and Ireland to oats.",
  ),
  PlantData(
    id: 9,
    title: "Redchilipepper",
    image: 'assets/Plants Images/redchili.jpg',
    image2: 'assets/37-red-chili-pepper-png-image.png',
    sesson: "Winter",
    description:
    "Chili peppers (also chile, chile pepper, chilli pepper, or chilli[3]), from Nahuatl chīlli (Nahuatl pronunciation: [ˈt͡ʃiːlːi] (listen)), are varieties of the berry-fruit of plants from the genus Capsicum, which are members of the nightshade family Solanaceae, cultivated for their pungency. Chili peppers are widely used in many cuisines as a spice to add 'heat' to dishes. Capsaicin and related compounds known as capsaicinoids are the substances giving chili peppers their intensity when ingested or applied topically. While chili peppers are (to varying degrees) pungent or 'spicy', there are other varieties of capsicum such as bell peppers, which generally provide additional sweetness and flavor to a meal rather than 'heat'.",
  ),
];