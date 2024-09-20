/*
Assessment Requirements
1. Create a variable that can hold a number of NFT's. What type of variable might this be?
2. Create an object inside your mintNFT function that will hold the metadata for your NFTs.
   The metadata values will be passed to the function as parameters. When the NFT is ready,
   you will store it in the variable you created in step 1
3. Your listNFTs() function will print all of your NFTs metadata to the console (i.e. console.log("Name: " + someNFT.name))
4. For good measure, getTotalSupply() should return the number of NFT's you have created
*/

// create a variable to hold your NFT's
const MY_NFT = [];

// this function will take in some values as parameters, create an
// NFT object using the parameters passed to it for its metadata,
// and store it in the variable above.


function mintNFT(name, value, rarity, color) {
   const info = {
      "name": name,
      "value": value,
      "rarity": rarity,
      "color": color
   }
   MY_NFT.push(info);
}

// create a "loop" that will go through an "array" of NFT's
// and print their metadata with console.log()
function listNFTs() {
   MY_NFT.forEach(nft => {
      console.log(`${nft.name}: \n ${nft.value} \n ${nft.rarity} \n ${nft.color} \n`)
   });
}

// print the total number of NFTs we have minted to the console
function getTotalSupply() {
   console.log("\n Total: " + MY_NFT.length);
}

// call your functions below this line
mintNFT("Primogems", 1600, "5 ☆ ☆ ☆ ☆ ☆", "White");
mintNFT("Mora", 500, "3 ☆ ☆ ☆", "Yellow");
mintNFT("Fates", 1000, "4 ☆ ☆ ☆ ☆", "Pink");
mintNFT("Crystals", 100, "1 ☆", "Blue");
listNFTs();
getTotalSupply();
