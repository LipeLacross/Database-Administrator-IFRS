-- Database: `clinicavet`

-- Estrutura da tabela `animals`
CREATE TABLE `animals` (
                           `ID` int(11) NOT NULL,
                           `name` varchar(100) DEFAULT NULL,
                           `escape_attempts` int(11) DEFAULT NULL,
                           `neutered` bit(1) DEFAULT NULL,
                           `weight_kg` decimal(10,0) DEFAULT NULL,
                           `species_id` int(11) DEFAULT NULL,
                           `owner_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Estrutura da tabela `owners`
CREATE TABLE `owners` (
                          `ID` int(11) NOT NULL,
                          `full_name` varchar(100) DEFAULT NULL,
                          `age` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Estrutura da tabela `specializations`
CREATE TABLE `specializations` (
                                   `vets_id` int(11) NOT NULL,
                                   `species_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Estrutura da tabela `species`
CREATE TABLE `species` (
                           `ID` int(11) NOT NULL,
                           `name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Estrutura da tabela `vets`
CREATE TABLE `vets` (
                        `ID` int(11) NOT NULL,
                        `name` varchar(300) DEFAULT NULL,
                        `age` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Estrutura da tabela `visits`
CREATE TABLE `visits` (
                          `vets_id` int(11) NOT NULL,
                          `animals_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Índices para tabelas

-- Índices para a tabela `animals`
ALTER TABLE `animals`
    ADD PRIMARY KEY (`ID`),
  ADD KEY `fk_species` (`species_id`),
  ADD KEY `fk_owners` (`owner_id`);

-- Índices para a tabela `owners`
ALTER TABLE `owners`
    ADD PRIMARY KEY (`ID`);

-- Índices para a tabela `specializations`
ALTER TABLE `specializations`
    ADD KEY `vets_id` (`vets_id`),
  ADD KEY `species_id` (`species_id`);

-- Índices para a tabela `species`
ALTER TABLE `species`
    ADD PRIMARY KEY (`ID`);

-- Índices para a tabela `vets`
ALTER TABLE `vets`
    ADD PRIMARY KEY (`ID`);

-- Índices para a tabela `visits`
ALTER TABLE `visits`
    ADD KEY `animals_id_asc` (`animals_id`),
  ADD KEY `vet_id_asc` (`vets_id`);

-- Auto-incremento para tabelas

-- Auto-incremento para a tabela `animals`
ALTER TABLE `animals`
    MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

-- Auto-incremento para a tabela `owners`
ALTER TABLE `owners`
    MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

-- Auto-incremento para a tabela `species`
ALTER TABLE `species`
    MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

-- Auto-incremento para a tabela `vets`
ALTER TABLE `vets`
    MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

-- Restrições para tabelas

-- Restrições para a tabela `animals`
ALTER TABLE `animals`
    ADD CONSTRAINT `fk_owners` FOREIGN KEY (`owner_id`) REFERENCES `owners` (`ID`),
  ADD CONSTRAINT `fk_species` FOREIGN KEY (`species_id`) REFERENCES `species` (`ID`);

-- Restrições para a tabela `specializations`
ALTER TABLE `specializations`
    ADD CONSTRAINT `specializations_ibfk_1` FOREIGN KEY (`vets_id`) REFERENCES `vets` (`ID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `specializations_ibfk_2` FOREIGN KEY (`species_id`) REFERENCES `species` (`ID`) ON UPDATE CASCADE;

-- Restrições para a tabela `visits`
ALTER TABLE `visits`
    ADD CONSTRAINT `visits_ibfk_1` FOREIGN KEY (`vets_id`) REFERENCES `vets` (`ID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `visits_ibfk_2` FOREIGN KEY (`animals_id`) REFERENCES `animals` (`ID`) ON UPDATE CASCADE;

COMMIT;
