-- phpMyAdmin SQL Dump
-- version 4.6.6deb4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: 14-Nov-2019 às 17:33
-- Versão do servidor: 10.1.41-MariaDB-0+deb9u1
-- PHP Version: 7.0.33-0+deb9u6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `acl`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_11_14_135759_create_posts_table', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('flayson.potenciano@gmail.com', '$2y$10$vAIHgYZZWvFudiaNXgF3Hud683JO0ulHfL9Zqtj/KlizoLuWX9od2', '2019-11-14 17:33:52');

-- --------------------------------------------------------

--
-- Estrutura da tabela `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `title`, `description`, `created_at`, `updated_at`) VALUES
(1, 1, 'Chef ensina como fazer panceta', 'O prato Prato do Dia desta quinta-feira (14) ensina a fazer panceta. Quem ensina o passo a passo é o chef Rodrigo Nascimento, que prepara diariamente vários tipos de carnes defumadas e, principalmente, a panceta.\r\n\r\n\r\n\r\nIngredientes:\r\n\r\n    2 kg de panceta;\r\n    40 gramas de limão desidratado;\r\n    40 gramas de pimenta preta granulada;\r\n    40 gramas de cebola desidratada;\r\n    40 gramas de alho desidratado;\r\n    40 gramas de cebolinha desidratada;\r\n    40 gramas de sal rosa.\r\n\r\nModo de preparo:\r\n\r\nO primeiro passo é tirar a carne da costelinha junto com a barriga do porco. Depois, tempere a carne com o tempero feito do limão desidratado, pimenta preta granulada, cebola desidratada, alho e cebolinha desidratada.\r\n\r\n\r\n\r\nEm seguida, enrole a barriga de porco e amarre com um barbante até ficar parecendo um “rocambole”.\r\n\r\nDeixe descansar na geladeira por 2 horas. Depois, leve para a defumação por 18 horas. Leve ao forno por 45 minutos, em temperatura entre 80ºC a 100ºC. Em seguida, retire e espere pegar temperatura ambiente.\r\n\r\nDepois do processo de calor, leve ao congelador. No final, basta cortar em postas e fritar em gordura quente a 250 graus até ficar em forma de pururuca.\r\n', NULL, NULL),
(3, 1, '\'Prévia\' do PIB medida pelo Banco Central registra alta de 0,44% em setembro', '\r\n\r\nO nível de atividade da economia brasileira registrou alta de 0,44% em setembro, na comparação com agosto, indicou nesta quinta-feira (14) o Índice de Atividade Econômica do BC (IBC-Br). O indicador medido pelo Banco Central é considerado uma \"prévia\" do PIB.\r\n\r\nCom o resultado, a economia brasileira terminou o 3º trimestre com um crescimento de 0,91% frente aos 3 meses anteriores – maior alta trimestral desde o terceiro trimestre de 2018 (1,67%), segundo a agência Reuters.\r\n\r\nNa comparação com setembro de 2018, o IBC-Br subiu 2,11%, enquanto no acumulado em 12 meses o índice teve alta de 0,99%.\r\n\r\nA expansão do mês ficou acima do esperado pelo mercado. A mediana das projeções colhidas pelo Valor Data era de uma alta de 0,39%.\r\n\r\n\r\n\r\n\r\nO resultado de setembro representa uma aceleração frente a alta de 0,22% registrada em agosto. Em julho, o indicador apontou estagnação (variação zero).\r\n\r\nO índice foi calculado após ajuste sazonal (uma espécie de compensação para comparar períodos diferentes). O PIB é a soma de todos os bens e serviços produzidos no país e serve para medir a evolução da economia.\r\n\r\nO resultado oficial do PIB do 3º trimestre será divulgado pelo IBGE no dia 3 de dezembro. No 1º trimestre, houve queda de 0,1% e, no 2º trimestre, alta de 0,4%.\r\n', NULL, NULL),
(4, 2, 'Comportamento do oxigênio em Marte espanta cientistas da Nasa', 'Houve um aumento de 30% no nível de oxigênio na atmosfera do planeta\r\n\r\nO Sample Analysis at Mars (SAM) é um instrumento a bordo do rover Curiosity que é responsável por analisar o ar do planeta vermelho. A maioria dos produtos químicos presentes se comportou de maneira previsível, aumentando e diminuindo em relação à quantidade de dióxido de carbono presente.\r\n\r\nEntretanto, o oxigênio apresentou um comportamento fora do comum que deixou os cientistas da Nasa curiosos. De acordo com artigo publicado no Journal of Geophysical Research: Planets, o oxigênio de Marte aumentou inesperadamente em mais de 30% na primavera e no verão.\r\n\r\nPara tentar explicar o fenômeno, os pesquisadores checaram diversas vezes as leituras do SAM e triplicaram sua precisão. Em seguida, eles chegaram a considerar que moléculas de CO2 ou água poderiam estar se separando para produzir oxigênio extra. Por fim, verificaram se a radiação solar poderia causar essa divisão.\r\n\r\nEntretanto, eles não conseguiram encontrar uma explicação plausível para o fenômeno. \"Estamos lutando para explicar isso\", disse Melissa Trainer, cientista planetária do Centro de Voo Espacial Goddard da Nasa. \"O fato de o comportamento do oxigênio ter mudado drasticamente, nos faz pensar que talvez não tenha a ver com a dinâmica atmosférica, mas sim com alguma fonte química\", completa.\r\n\r\nA explicação talvez esteja ligada ao metano presente na superfície do planeta. Por mais de 15 anos os cientistas tentam explicar a presença do gás. Recentemente, a evaporação foi atribuída a uma camada de gelo na superfície do planeta.\r\n\r\nEmbora eles ainda não tenham descoberto por que os níveis atmosféricos de metano atingem picos no verão, eles estão se perguntando se os fenômenos possuem alguma ligação.\r\n\r\n\"Estamos começando a ver essa correlação tentadora entre metano e oxigênio durante boa parte do ano em Marte\", disse Sushil Atreya, professor de ciências climáticas e espaciais da Universidade de Michigan. \"Eu acho que há algo nessa história. Eu apenas não tenho as respostas ainda. Ninguém tem.\"', NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'flay', 'flayson.potenciano@gmail.com', '$2y$10$VkB0clqMv1sHsVxTAfJmP.WF9YcuuTlloWyq/YrDigQ4WGotystwG', 'bTpUfOtf7keDvcyIWPZ2lP62nUXSY5qkMoyOpUCHTKpppAKRDKfwAV8IMaAq', '2019-11-14 17:33:03', '2019-11-14 17:33:03'),
(2, 'Carlos', 'carlos@email.com', '$2y$10$cLaO73DSxNjCzuKb6FhWleN.7x7syQITV1WpWknnsiV0xOtWQNphy', 'tjBSuWwSL6LOXRDwAgNwPDGKaqZAEHJ5Kn7WU8lDpDN2Qxi4QXNAEKcAhYAu', '2019-11-14 17:50:23', '2019-11-14 17:50:23');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_user_id_foreign` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
