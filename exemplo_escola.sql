create database escola;

use escola;
  
CREATE TABLE IF NOT EXISTS `escola`.`Boletim` (
  `idBoletim` INT NOT NULL,
  `notaMatematica` FLOAT NULL,
  `notaPortugues` FLOAT NULL,
  `notaCiencias` FLOAT NULL,
  `notaHistoria` FLOAT NULL,
  `notaFilosofia` FLOAT NULL,
  `notaGeografia` FLOAT NULL,
  PRIMARY KEY (`idBoletim`));
 
  CREATE TABLE IF NOT EXISTS `escola`.`Turma` (
  `idTurma` INT NOT NULL,
  `Turmacol` VARCHAR(45) NULL,
  PRIMARY KEY (`idTurma`));

  CREATE TABLE `escola`.`Aluno` (
  `idAluno` INT NOT NULL,
  `nome` VARCHAR(45) NOT NULL,
  `cpf` VARCHAR(11) NOT NULL,
  `telefone` VARCHAR(45) NULL,
  `endereco` VARCHAR(45) NULL,
  `matricula` INT NULL,
  `email` VARCHAR(45) NULL,
  `Boletim_idBoletim` INT NOT NULL,
  `Turma_idTurma` INT NOT NULL,
  PRIMARY KEY (`idAluno`, `Boletim_idBoletim`, `Turma_idTurma`),
  UNIQUE INDEX `idAluno_UNIQUE` (`idAluno` ASC) ,
  UNIQUE INDEX `cpf_UNIQUE` (`cpf` ASC) ,
  INDEX `fk_Aluno_Boletim_idx` (`Boletim_idBoletim` ASC) ,
  INDEX `fk_Aluno_Turma1_idx` (`Turma_idTurma` ASC) ,
  CONSTRAINT `fk_Aluno_Boletim`
    FOREIGN KEY (`Boletim_idBoletim`)
    REFERENCES `escola`.`Boletim` (`idBoletim`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Aluno_Turma1`
    FOREIGN KEY (`Turma_idTurma`)
    REFERENCES `escola`.`Turma` (`idTurma`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);
    
    CREATE TABLE IF NOT EXISTS `escola`.`Professor` (
  `idProfessor` INT NOT NULL,
  `nome` VARCHAR(45) NOT NULL,
  `cpf` VARCHAR(11) NOT NULL,
  `endereco` VARCHAR(45) NULL,
  `telefone` VARCHAR(45) NULL,
  `email` VARCHAR(45) NULL,
  PRIMARY KEY (`idProfessor`),
  UNIQUE INDEX `cpf_UNIQUE` (`cpf` ASC) );
  
    CREATE TABLE IF NOT EXISTS `escola`.`Disciplina` (
  `idDisciplina` INT NOT NULL,
  `nome` VARCHAR(45) NULL,
  `Turma_idTurma` INT NOT NULL,
  `Professor_idProfessor` INT NOT NULL,
  PRIMARY KEY (`idDisciplina`, `Turma_idTurma`, `Professor_idProfessor`),
  INDEX `fk_Disciplina_Turma1_idx` (`Turma_idTurma` ASC) ,
  INDEX `fk_Disciplina_Professor1_idx` (`Professor_idProfessor` ASC) ,
  CONSTRAINT `fk_Disciplina_Turma1`
    FOREIGN KEY (`Turma_idTurma`)
    REFERENCES `escola`.`Turma` (`idTurma`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Disciplina_Professor1`
    FOREIGN KEY (`Professor_idProfessor`)
    REFERENCES `escola`.`Professor` (`idProfessor`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

INSERT INTO `escola`.`Turma` (`idTurma`, `Turmacol`) VALUES (1, '1° ano');
INSERT INTO `escola`.`Turma` (`idTurma`, `Turmacol`) VALUES (2, '2° ano');
INSERT INTO `escola`.`Turma` (`idTurma`, `Turmacol`) VALUES (3, '3° ano');

INSERT INTO `escola`.`Professor` (`idProfessor`, `nome`, `cpf`, `endereco`, `telefone`, `email`) VALUES (1, 'Ana Cristina Lima', 20375928392, NULL, '983456455', 'profcris@email.com');
INSERT INTO `escola`.`Professor` (`idProfessor`, `nome`, `cpf`, `endereco`, `telefone`, `email`) VALUES (2, 'José Alberto Costa', 39463729373, NULL, '982821234', 'profalberto@email.com');
INSERT INTO `escola`.`Professor` (`idProfessor`, `nome`, `cpf`, `endereco`, `telefone`, `email`) VALUES (3, 'Antônio Golçalves', 29373937492, NULL, '934353637', 'profantonio@email.com');

INSERT INTO `escola`.`Boletim` (`idBoletim`, `notaMatematica`, `notaPortugues`, `notaCiencias`, `notaHistoria`, `notaFilosofia`, `notaGeografia`) VALUES (1, 7, 8, 9, 10, 9, 7);
INSERT INTO `escola`.`Boletim` (`idBoletim`, `notaMatematica`, `notaPortugues`, `notaCiencias`, `notaHistoria`, `notaFilosofia`, `notaGeografia`) VALUES (2, 8, 7, 8, 10, 8, 6);
INSERT INTO `escola`.`Boletim` (`idBoletim`, `notaMatematica`, `notaPortugues`, `notaCiencias`, `notaHistoria`, `notaFilosofia`, `notaGeografia`) VALUES (3, 6, 9, 7, 8, 7, 8);
INSERT INTO `escola`.`Boletim` (`idBoletim`, `notaMatematica`, `notaPortugues`, `notaCiencias`, `notaHistoria`, `notaFilosofia`, `notaGeografia`) VALUES (4, 9, 7, 10, 9, 9, 9);
INSERT INTO `escola`.`Boletim` (`idBoletim`, `notaMatematica`, `notaPortugues`, `notaCiencias`, `notaHistoria`, `notaFilosofia`, `notaGeografia`) VALUES (5, 10, 9, 10, 10, 8, 7);
INSERT INTO `escola`.`Boletim` (`idBoletim`, `notaMatematica`, `notaPortugues`, `notaCiencias`, `notaHistoria`, `notaFilosofia`, `notaGeografia`) VALUES (6, 10, 8, 8, 8, 7, 6);
INSERT INTO `escola`.`Boletim` (`idBoletim`, `notaMatematica`, `notaPortugues`, `notaCiencias`, `notaHistoria`, `notaFilosofia`, `notaGeografia`) VALUES (7, 9, 7, 9, 7, 6, 7);
INSERT INTO `escola`.`Boletim` (`idBoletim`, `notaMatematica`, `notaPortugues`, `notaCiencias`, `notaHistoria`, `notaFilosofia`, `notaGeografia`) VALUES (8, 8, 8, 10, 10, 8, 8);
INSERT INTO `escola`.`Boletim` (`idBoletim`, `notaMatematica`, `notaPortugues`, `notaCiencias`, `notaHistoria`, `notaFilosofia`, `notaGeografia`) VALUES (9, 7, 9, 8, 7, 9, 10);
INSERT INTO `escola`.`Boletim` (`idBoletim`, `notaMatematica`, `notaPortugues`, `notaCiencias`, `notaHistoria`, `notaFilosofia`, `notaGeografia`) VALUES (10, 6, 8, 9, 8, 10, 9);
INSERT INTO `escola`.`Boletim` (`idBoletim`, `notaMatematica`, `notaPortugues`, `notaCiencias`, `notaHistoria`, `notaFilosofia`, `notaGeografia`) VALUES (11, 8, 10, 7, 9, 10, 8);
INSERT INTO `escola`.`Boletim` (`idBoletim`, `notaMatematica`, `notaPortugues`, `notaCiencias`, `notaHistoria`, `notaFilosofia`, `notaGeografia`) VALUES (12, 9, 8, 7, 10, 9, 9);

INSERT INTO `escola`.`Aluno` (`idAluno`, `nome`, `cpf`, `telefone`, `endereco`, `matricula`, `email`, `Boletim_idBoletim`, `Turma_idTurma`) VALUES (1, 'Ana Maria Braga', '11123456789', '981828384', NULL, 1000, 'ana@email.com', 1, 1);
INSERT INTO `escola`.`Aluno` (`idAluno`, `nome`, `cpf`, `telefone`, `endereco`, `matricula`, `email`, `Boletim_idBoletim`, `Turma_idTurma`) VALUES (2, 'Antônio Santos', '12223456789', '981223454', NULL, 1001, 'antonio@email.com', 2, 1);
INSERT INTO `escola`.`Aluno` (`idAluno`, `nome`, `cpf`, `telefone`, `endereco`, `matricula`, `email`, `Boletim_idBoletim`, `Turma_idTurma`) VALUES (3, 'Bruna Sousa', '12333456789', '997456789', NULL, 1002, 'bruna@email.com', 3, 1);
INSERT INTO `escola`.`Aluno` (`idAluno`, `nome`, `cpf`, `telefone`, `endereco`, `matricula`, `email`, `Boletim_idBoletim`, `Turma_idTurma`) VALUES (4, 'Catarina Machado', '12344456789', '930256438', NULL, 1003, 'catarina@email.com', 4, 1);
INSERT INTO `escola`.`Aluno` (`idAluno`, `nome`, `cpf`, `telefone`, `endereco`, `matricula`, `email`, `Boletim_idBoletim`, `Turma_idTurma`) VALUES (5, 'Cecília Borges', '12345556789', '932345678', NULL, 1004, 'cecilia@email.com', 5, 2);
INSERT INTO `escola`.`Aluno` (`idAluno`, `nome`, `cpf`, `telefone`, `endereco`, `matricula`, `email`, `Boletim_idBoletim`, `Turma_idTurma`) VALUES (6, 'Marcos Medeiros', '12345667789', '982834576', NULL, 1005, 'marcos@email.com', 6, 2);
INSERT INTO `escola`.`Aluno` (`idAluno`, `nome`, `cpf`, `telefone`, `endereco`, `matricula`, `email`, `Boletim_idBoletim`, `Turma_idTurma`) VALUES (7, 'Luis Barbosa', '12345677789', '992384754', NULL, 1006, 'luis@email.com', 7, 2);
INSERT INTO `escola`.`Aluno` (`idAluno`, `nome`, `cpf`, `telefone`, `endereco`, `matricula`, `email`, `Boletim_idBoletim`, `Turma_idTurma`) VALUES (8, 'Lucas Barbosa', '12345678889', '983456234', NULL, 1007, 'lucas@email.com', 8, 2);
INSERT INTO `escola`.`Aluno` (`idAluno`, `nome`, `cpf`, `telefone`, `endereco`, `matricula`, `email`, `Boletim_idBoletim`, `Turma_idTurma`) VALUES (9, 'Adriana Sousa', '12345678999', '997456789', NULL, 1008, 'adriana@email.com', 9, 3);
INSERT INTO `escola`.`Aluno` (`idAluno`, `nome`, `cpf`, `telefone`, `endereco`, `matricula`, `email`, `Boletim_idBoletim`, `Turma_idTurma`) VALUES (10, 'Mariana Andrade', '11234567899', '923455223', NULL, 1009, 'mariana@email.com', 10, 3);
INSERT INTO `escola`.`Aluno` (`idAluno`, `nome`, `cpf`, `telefone`, `endereco`, `matricula`, `email`, `Boletim_idBoletim`, `Turma_idTurma`) VALUES (11, 'Hugo Lopes', '12234567899', '982345211', NULL, 1010, 'hugo@email.com', 11, 3);
INSERT INTO `escola`.`Aluno` (`idAluno`, `nome`, `cpf`, `telefone`, `endereco`, `matricula`, `email`, `Boletim_idBoletim`, `Turma_idTurma`) VALUES (12, 'André Santos', '12344567899', '981223454', NULL, 1011, 'andre@email.com', 12, 3);

INSERT INTO `escola`.`Disciplina` (`idDisciplina`, `nome`, `Turma_idTurma`, `Professor_idProfessor`) VALUES (1, 'Matemática', 1, 1);
INSERT INTO `escola`.`Disciplina` (`idDisciplina`, `nome`, `Turma_idTurma`, `Professor_idProfessor`) VALUES (2, 'Português', 1, 2);
INSERT INTO `escola`.`Disciplina` (`idDisciplina`, `nome`, `Turma_idTurma`, `Professor_idProfessor`) VALUES (3, 'História', 1, 3);
INSERT INTO `escola`.`Disciplina` (`idDisciplina`, `nome`, `Turma_idTurma`, `Professor_idProfessor`) VALUES (4, 'Geografia', 1, 3);
INSERT INTO `escola`.`Disciplina` (`idDisciplina`, `nome`, `Turma_idTurma`, `Professor_idProfessor`) VALUES (5, 'Filosofia', 1, 2);
INSERT INTO `escola`.`Disciplina` (`idDisciplina`, `nome`, `Turma_idTurma`, `Professor_idProfessor`) VALUES (6, 'Ciências', 1, 1);

/* Consultar alunos da segunda série*/
select matricula, nome, email, cpf, telefone from aluno
where Turma_idTurma = 2;

/* Consultar alunos em ordem alfabética*/
select matricula, nome, email, Turma_idTurma as 'série'  from aluno
order by nome;

/*Consultar número de alunos da escola*/
select count(idAluno)
from aluno;

/* Consultar boletim da terceira série*/
select aluno.matricula, aluno.nome, boletim.notaMatematica, boletim.notaPortugues, boletim.notaCiencias,
boletim.notaHistoria, boletim.notaFilosofia, boletim.notaGeografia, aluno.Turma_idTurma as 'série' from boletim join aluno
on aluno.Boletim_idBoletim = boletim.idBoletim and aluno.Turma_idTurma = 3;

/* Consultar alunos que obtiveram nota maior que 8 em matemática*/
select aluno.matricula, aluno.nome, boletim.notaMatematica, aluno.Turma_idTurma as 'série' from boletim join aluno
on aluno.Boletim_idBoletim = boletim.idBoletim
and boletim.notaMatematica > 8;

/* Consultar quais foram as notas obtidas em Português e quantos alunos obtiveram cada nota*/
select notaPortugues, count(notaPortugues) from boletim
group by notaPortugues 
order by notaPortugues;

/* Consultar que professor leciona cada disciplina*/
select professor.nome as 'professor', disciplina.nome as 'disciplina' from professor join disciplina
on professor.idProfessor = disciplina.Professor_idProfessor
order by professor.nome;
