import * as readline from 'readline/promises';
import { stdin as input, stdout as output } from 'process';


const rl = readline.createInterface({ input, output });

async function main() {
    while (true) {
      
        const nome: string = await rl.question("Digite seu nome: ");
        
      
        const gay: number = Math.floor(Math.random() * 101);
        
        console.log(`${nome} é ${gay}% gay\n`);
    }
}


main();