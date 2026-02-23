
math.randomseed(os.time())

while true do
    io.write("Digite seu nome: ")
    local nome = io.read()
    
 
    local gay = math.random(0, 100)
    
   
    print(string.format("%s é %d%% gay\n", nome, gay))
end