# Desafio de Data Science - Oncase

Desafio proposto pela empresa Oncase para testar minhas habilidades em DS. Priorizei ser criativo e engenhoso mais do que seguir os padrões, para assim demonstrar um maior escopo das minhas habilidades.

# Setup

Foi utilizado duas lingugagens de programação para se trabalhar nos problemas
propostos: R e Python. Sendo assim, há dois setups diferentes.

Comecemos pelo Python. Assume-se que o usuário já tem Python instalado na sua máquina. Idealmente, há o uso do [Poetry](https://python-poetry.org/) para a manuntenção de dependências. Por favor, se referir a sua instalação neste [link](https://python-poetry.org/docs/#installation).

Porém, com o documento "pyproject.toml" é possível instalar as depêndencias utilizando o "pip" também. Utilizando:

```python
python -m pip install .
```

Em relação ao R, igualmente assume-se que o usuário tem o R instalado em sua máquina. Idealmente, há o uso do pacote [renv](https://rstudio.github.io/renv/articles/renv.html) para instalar as dependências automaticamente. Uma vez tendo este pacote instalado na pasta principal basta utilizar o comando dentro do R:

```r
renv::restore() 
```

# Organização dos Arquivos

Há muitas pastas e arquivos suportes. O foco se dá na pasta "notebook", onde contém todos os notebooks em Python e R onde as análises foram realizadas. Como exceção para garantir uma boa visualização, dentro de "notebook" há o arquivo eda.html como output do Rmarkdown eda.Rmd.

Além disto, há a pasta "docs" onde contém um conjunto de arquivos informativos. Em especial, contém as referências para as técnicas usadas nos desafios de modelagem, e também contém as idéias pensadas e executadas no desafio de EDA.

# Agradecimentos

Gostaria de agradecer a empresa Oncase pela oportunidade de realizar este desafio e demonstrar minhas habilidade e toda a comunidade open-source do R e Python pelos incríveis pacotes disponiblizados gratuitamente.
