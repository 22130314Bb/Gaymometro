using System;
    using System.Text; 
    
    class Program
    {
        static void Main()
        {
           
            Console.OutputEncoding = Encoding.UTF8;
    
            Random rand = new Random();
    
            while (true)
            {
                Console.Write("Digite seu nome: ");
                string nome = Console.ReadLine();
    
                int gay = rand.Next(0, 101); 
                
                Console.WriteLine($"{nome} é {gay}% gay\n");
            }
        }
    }