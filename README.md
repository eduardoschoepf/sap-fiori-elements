# SAP Fiori Elements

Este repositório contém os exercícios práticos do curso **Developing and Extending SAP Fiori Elements Apps**, da SAP.

---

## 🚀 Fluxo de Desenvolvimento

1. **Dicionário de Dados** [`Dictionary/Database Tables/`]  
   Definição das tabelas no dicionário ABAP contendo os campos persistentes que representam as entidades de negócio da aplicação.

2. **CDS Views** [`Core Data Services/Data Definitions/`]  
   Contém as *interface views* e *consumption views* que modelam os dados para uso no Fiori Elements.  
   Essas views também podem conter anotações (`@UI`, `@OData`, `@EndUserText`) que influenciam o comportamento e a aparência da aplicação.

3. **Behavior Definition & Implementation** [`Core Data Services/Behavior Definitions/`]  
   Define o comportamento das entidades no modelo RAP, como operações de **criação**, **leitura**, **atualização** e **exclusão** (CRUD), além de validações e regras de negócio.  
   Inclui:
   - Arquivos `.bdef`: definem as capacidades da entidade.
   - Arquivos `.bimpl.abap`: implementam a lógica em ABAP (handlers).

4. **Metadata Extension** [`Core Data Services/Metadata Extensions/`]  
   Extensões de metadados com anotações `@UI` que definem como os campos serão exibidos no Fiori Elements, como:
   - Colunas em listas (`@UI.lineItem`)
   - Grupos e seções (`@UI.facet`)
   - Rótulos (`@UI.label`)
   - Campos de formulário

5. **Service Definition & Binding** [`Business Services/`]  
   - **Service Definition**: expõe as consumption views como entidades do serviço OData.  
   - **Service Binding**: conecta o serviço ao protocolo OData V4 e ativa o consumo pelas aplicações Fiori.

---

## 📌 Créditos

Baseado na arquitetura recomendada pela SAP no curso:  
🎓 *[Developing and Extending SAP Fiori Elements Apps (openSAP)](https://learning.sap.com/courses/developing-and-extending-sap-fiori-elements-apps)*
