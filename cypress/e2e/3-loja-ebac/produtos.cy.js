/// <reference types="cypress"/>

describe('funcionalidade: produtos', () => {
    beforeEach(() => {
    cy.visit('http://lojaebac.ebaconline.art.br/produtos/')
    });
    
    it('deve selecionar um produto da lista', () => {
        cy.get('.products > .row')
            ///.first()
            ///.last()
            ///.eq(3)
            .contains('Abominable Hoodie')
            .click()

        cy.get('#tab-title-description > a').should('contain', 'desçricão')
        
    });
});

