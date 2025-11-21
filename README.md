## Projeto Final PhP ( TrocaFácil UNIPÊ )

## Descrição 
Sistema digital que organiza ofertas de livros entre alunos, com filtros por curso e notificações, garantindo privacidade e transações seguras.

##Integrantes 
- Lucas Heitor 
- Jõao Miguel 
- Bentto Felipe

-----------------------------------------------------------------------------------------------------------------------------------------------------
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Troca Fácil UNIPÊ - Tela Inicial</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
    <style>
        :root {
            --color-primary: #0A2A4E; /* Azul UNIPÊ Escuro */
            --color-secondary: #007BFF; /* Azul de Destaque */
        }
        body {
            font-family: 'Inter', sans-serif;
            background-color: #f8fafc;
        }
        /* Custom scrollbar for better aesthetics */
        .book-list::-webkit-scrollbar {
            width: 8px;
        }
        .book-list::-webkit-scrollbar-thumb {
            background-color: var(--color-secondary);
            border-radius: 10px;
        }
        .book-list::-webkit-scrollbar-track {
            background: #e2e8f0;
        }
    </style>
    <script>
        tailwind.config = {
            theme: {
                extend: {
                    colors: {
                        primary: 'var(--color-primary)',
                        secondary: 'var(--color-secondary)',
                    }
                }
            }
        }
    </script>
</head>
<body class="min-h-screen">

    <!-- Container Principal Centrado -->
    <div class="max-w-4xl mx-auto p-4 md:p-8">

        <!-- 1. Header Fixo e Informações do Usuário -->
        <header class="flex justify-between items-center pb-4 border-b border-gray-200 sticky top-0 bg-white z-10">
            <div class="flex items-center space-x-2">
                <i class="fa-solid fa-book-open-reader text-2xl text-secondary"></i>
                <h1 class="text-3xl font-bold text-primary">Troca Fácil UNIPÊ</h1>
            </div>
            <div class="flex items-center space-x-3">
                <span class="text-sm text-gray-600 hidden sm:inline">Olá, aluno!</span>
                <!-- Avatar do Usuário (Logado) -->
                <div class="w-10 h-10 bg-secondary rounded-full flex items-center justify-center text-white font-semibold shadow-md">
                    JD
                </div>
            </div>
        </header>

        <!-- 2. Área de Busca Central -->
        <section class="mt-8 bg-white p-6 rounded-xl shadow-lg border border-blue-100">
            <h2 class="text-xl font-semibold text-gray-700 mb-4 flex items-center">
                <i class="fa-solid fa-search mr-2 text-secondary"></i>
                Encontre o seu próximo livro acadêmico
            </h2>
    
            <div class="relative mb-4"> 
                <input type="search" placeholder="Buscar por Título, ISBN, Disciplina ou Curso..." class="w-full p-3 pl-10 border border-gray-300 rounded-lg focus:ring-secondary focus:border-secondary transition duration-150" disabled>
                <i class="fa-solid fa-magnifying-glass absolute left-3 top-1/2 transform -translate-y-1/2 text-gray-400"></i>
            </div>
            <div class="Filtros"><br>
                <button class="px-3 py-1 bg-blue-50 text-secondary border border-secondary rounded-full hover:bg-blue-100 transition">Campus</button>
                <button class="px-3 py-1 bg-blue-50 text-secondary border border-secondary rounded-full hover:bg-blue-100 transition">Curso</button>
                <button class="px-3 py-1 bg-blue-50 text-secondary border border-secondary rounded-full hover:bg-blue-100 transition">Livros de arte</button>
                <button class="px-3 py-1 bg-blue-50 text-secondary border border-secondary rounded-full hover:bg-blue-100 transition">Livros de matematica</button>
                <button class="px-3 py-1 bg-blue-50 text-secondary border border-secondary rounded-full hover:bg-blue-100 transition">Livros de português</button>
            </div>
        </section>

        <!-- 3. Chamada para Publicação (Ação Principal) -->
        <section class="mt-8 bg-primary text-white p-6 rounded-xl shadow-2xl flex flex-col sm:flex-row items-center justify-between transition duration-300 hover:scale-[1.01]">
            <div class="flex items-center mb-4 sm:mb-0">
                <i class="fa-solid fa-plus-circle text-4xl mr-4 text-yellow-300"></i>
                <div>
                    <h3 class="text-xl font-bold">Tem um livro para doar ou trocar?</h3>
                    <p class="text-sm opacity-90">Publique sua oferta em menos de 1 minuto!</p>
                </div>
            </div>
            <button class="w-full sm:w-auto px-6 py-2 bg-yellow-400 text-primary font-bold rounded-lg shadow-md hover:bg-yellow-300 transition duration-150">
                <i class="fa-solid fa-upload mr-2"></i>
                PUBLICAR NOVA OFERTA
            </button>
        </section>

        <!-- 4. Lista de Ofertas Recentes -->
        <section class="mt-8">
            <h2 class="text-2xl font-semibold text-gray-700 mb-5 border-b pb-2">
                <i class="fa-solid fa-fire-flame-curved mr-2 text-red-500"></i>
                Ofertas em Destaque
            </h2>

            <div class="book-list space-y-4">
                
                <!-- Card de Exemplo 1: Livro para Doação -->
                <div class="bg-white p-4 rounded-xl shadow-md flex items-start space-x-4 hover:shadow-lg transition duration-200">
                    <!-- Placeholder da Capa -->
                    <div class="w-16 h-24 bg-gray-200 rounded-md flex-shrink-0 flex items-center justify-center text-sm text-gray-500 overflow-hidden">
                        <i class="fa-solid fa-book text-3xl"></i>
                    </div>
                    
                    <div class="flex-grow">
                        <h3 class="text-lg font-bold text-primary">Introdução à Programação em C</h3>
                        <p class="text-sm text-gray-600">Autor: Paul Deitel | Disciplina: Algoritmos e Estruturas de Dados</p>
                        <div class="mt-2 flex items-center justify-between">
                            <span class="px-3 py-1 text-xs font-semibold rounded-full bg-green-100 text-green-700">
                                <i class="fa-solid fa-hand-holding-heart mr-1"></i> Doação
                            </span>
                            <span class="text-sm text-secondary font-semibold">
                                Condição: <span class="text-blue-600">Boa</span>
                            </span>
                        </div>
                    </div>
                </div>

                <!-- Card de Exemplo 2: Livro para Troca -->
                <div class="bg-white p-4 rounded-xl shadow-md flex items-start space-x-4 hover:shadow-lg transition duration-200">
                    <div class="w-16 h-24 bg-gray-200 rounded-md flex-shrink-0 flex items-center justify-center text-sm text-gray-500 overflow-hidden">
                        <i class="fa-solid fa-book text-3xl"></i>
                    </div>
                    <div class="flex-grow">
                        <h3 class="text-lg font-bold text-primary">Direito Constitucional Esquematizado (10ª Ed.)</h3>
                        <p class="text-sm text-gray-600">Autor: Pedro Lenza | Curso: Direito, Campus Sul</p>
                        <div class="mt-2 flex items-center justify-between">
                            <span class="px-3 py-1 text-xs font-semibold rounded-full bg-yellow-100 text-yellow-700">
                                <i class="fa-solid fa-exchange-alt mr-1"></i> Troca
                            </span>
                            <span class="text-sm text-secondary font-semibold">
                                Condição: <span class="text-blue-600">Ótima</span>
                            </span>
                        </div>
                    </div>
                </div>

                <!-- Card de Exemplo 3: Livro Esgotado/Raro -->
                <div class="bg-white p-4 rounded-xl shadow-md flex items-start space-x-4 hover:shadow-lg transition duration-200">
                    <div class="w-16 h-24 bg-gray-200 rounded-md flex-shrink-0 flex items-center justify-center text-sm text-gray-500 overflow-hidden">
                        <i class="fa-solid fa-book text-3xl"></i>
                    </div>
                    <div class="flex-grow">
                        <h3 class="text-lg font-bold text-primary">Anatomia Humana Básica</h3>
                        <p class="text-sm text-gray-600">Autor: Dangelo & Fattini | Curso: Medicina, Enfermagem</p>
                        <div class="mt-2 flex items-center justify-between">
                            <span class="px-3 py-1 text-xs font-semibold rounded-full bg-yellow-100 text-yellow-700">
                                <i class="fa-solid fa-exchange-alt mr-1"></i> Troca
                            </span>
                            <span class="text-sm text-secondary font-semibold">
                                Condição: <span class="text-blue-600">Desgastada</span>
                            </span>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- 5. Footer de Navegação (Para Mobile) -->
        <footer class="md:hidden fixed bottom-0 left-0 right-0 bg-white border-t border-gray-200 shadow-xl p-2 flex justify-around items-center">
            <button class="flex flex-col items-center text-secondary">
                <i class="fa-solid fa-home text-xl"></i>
                <span class="text-xs mt-1">Início</span>
            </button>
            <button class="flex flex-col items-center text-gray-500 hover:text-secondary">
                <i class="fa-solid fa-bell text-xl"></i>
                <span class="text-xs mt-1">Notificações</span>
            </button>
            <button class="flex flex-col items-center text-gray-500 hover:text-secondary">
                <i class="fa-solid fa-message text-xl"></i>
                <span class="text-xs mt-1">Chat</span>
            </button>
            <button class="flex flex-col items-center text-gray-500 hover:text-secondary">
                <i class="fa-solid fa-user-circle text-xl"></i>
                <span class="text-xs mt-1">Perfil</span>
            </button>
        </footer>

        <!-- Espaçador para o footer fixo em mobile -->
        <div class="h-20 md:hidden"></div>
    </div>

</body>
</html>
