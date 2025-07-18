# SAP Fiori elements

Este repositório contém os exercícios práticos do curso Developing and Extending SAP Fiori Elements Apps.

---

## 🚀 Fluxo de Desenvolvimento

1. **Dicionário de Dados [Dictionary/Database Tables/]**  
   Definição das tabelas no dicionário ABAP contendo os campos persistentes que representam as entidades de negócio da aplicação.

2. **CDS Views [Core Data Services/Data Definitions/]**  
   Criação de interface views e consumption views para modelar os dados e prepará-los para consumo via Fiori Elements.  
   As views CDS também podem incluir anotações que influenciam a aparência e o comportamento da interface de usuário.

3. **Behavior Definition / Implementation [Core Data Services/Behavior Definitions/]**  
   Definição e implementação do comportamento das entidades, como operações de criação, leitura, atualização e exclusão (CRUD), além de validações e lógica de negócio associada.

4. **Metadata Extension [Core Data Services/Metadata Extensions/]**  
   Define aspectos da interface (linha da tabela, grupos, labels) usando anotações `@UI`.

5. **Service Definition & Binding [Business Services/]**  
   A **/Service Definition** expõe as consumption views como entidades do serviço OData.  
   A **/Service Binding** conecta esse serviço ao protocolo OData V4 e ativa seu consumo no Fiori Elements.

---

## 📌 Créditos

Baseado na arquitetura recomendada pela SAP no curso  
🎓 *[Developing and Extending SAP Fiori Elements Apps (openSAP)](https://learning.sap.com/courses/developing-and-extending-sap-fiori-elements-apps)*

