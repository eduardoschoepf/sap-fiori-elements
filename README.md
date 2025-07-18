# SAP Fiori Elements

Este repositório contém os exercícios práticos do curso **Developing and Extending SAP Fiori Elements Apps**, da SAP.

---

## 📂 Estrutura genérica de arquivos no ABAP Development Tools (ADT)
```
/sap-fiori-elements
│
├── /Dictionary
│   └── /Database Tables         # Tabelas Z* (ex: ZBOOKINGS, ZCUSTOMERS)
│
├── /Core Data Services
│   ├── /Data Definitions        # CDS Views (Interface + Consumption)
│   │   ├── ZI_Entity            # Interface View (camada de associações `association [0..*] to`)
│   │   └── ZC_Entity            # Consumption View (camada de projeções)
│   │
│   ├── /Behavior Definitions    # Comportamento das entidades
│   │   └──  ZI_Entity           # Definição (CRUD, validações simples)
│   │
│   └── /Metadata Extensions     # Anotações UI (@UI)
│       └── ZC_Entity            # Anotações @UI.lineItem, @UI.FieldGroup ...
│
└── /Business Services
    ├── /Service Definitions     # Exposição OData
    │   └── ZSD_EntityService    # Exposição das CDS Views como entidades OData
    │
    └── /Service Bindings        # Ativação do serviço
        └── ZSB_EntityService    # Configuração do protocolo (OData V2/V4) e tipo (UI)

```

---

## 🚀 Fluxo de Desenvolvimento

1. **Dicionário de Dados** [`Dictionary/Database Tables/`]  
   Definição das tabelas no dicionário ABAP contendo os campos persistentes que representam as entidades de negócio da aplicação.

2. **CDS Views** [`Core Data Services/Data Definitions/`]  
   Contém as *interface views* e *consumption views* que modelam os dados para uso no Fiori Elements.  
   Essas views também podem conter anotações (`@UI`, `@OData`, `@EndUserText`) que influenciam o comportamento e a aparência da aplicação.

3. **Behavior Definition & Implementation** [`Core Data Services/Behavior Definitions/`]  
   Define o comportamento das entidades no modelo RAP, como operações de **criação**, **leitura**, **atualização** e **exclusão** (CRUD), além de validações e regras de negócio.  
   Essa definição é feita diretamente no ABAP Development Tools (ADT) e associada às views CDS e tabelas.

4. **Metadata Extension** [`Core Data Services/Metadata Extensions/`]  
   Define, por meio de anotações `@UI`, como os dados serão exibidos na interface do Fiori Elements:  
   - Colunas em listas (`@UI.lineItem`)  
   - Grupos e seções (`@UI.facet`)  
   - Rótulos e descrições (`@UI.label`)

5. **Service Definition & Binding** [`Business Services/`]  
   - **Service Definition**: expõe as *consumption views* como entidades do serviço OData.  
   - **Service Binding**: conecta o serviço ao protocolo OData V4 e ativa o consumo pelas aplicações Fiori.

---

## 📌 Créditos

Baseado na arquitetura recomendada pela SAP no curso:  
🎓 *[Developing and Extending SAP Fiori Elements Apps (openSAP)](https://learning.sap.com/courses/developing-and-extending-sap-fiori-elements-apps)*
