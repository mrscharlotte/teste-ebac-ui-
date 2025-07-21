///<reference types="cypress"/>

describe('funcionalidade: login', () => { 
    beforeEach(() => {
        cy.visit('http://lojaebac.ebaconline.art.br/minha-conta/')
    });

    afterEach(() => {
        cy.screenshot()
    });
    it('deve fazer login com sucesso', () => {
        cy.get('#username').type('joaovictor@teste.com')
        cy.get('#password').type('teste@123')
        cy.get('.woocommerce-form > .button').click()

        cy.get('.woocommerce-MyAccount-content').should('contain', 'Olá, joaovictor (não é joaovictor? Sair)')
    })

    it('deve exibir uma mensagem de erro ao inserir usuario invalido', () => {
        cy.get('#username').type('joaovitor2022@teste.com')
        cy.get('#password').type('teste@1234')
        cy.get('.woocommerce-form > .button').click()

        cy.get('.woocommerce-error').should('contain', 'Endereço de e-mail desconhecido.')
        
    });
    
    it('deve exibir uma mensagem de senha invalida', () => {
        cy.get('#username').type('joaovictor@teste.com')
        cy.get('#password').type('teste@1234')
        cy.get('.woocommerce-form > .button').click()

        cy.get('.woocommerce-error').should('contain', 'Erro: A senha fornecida para o e-mail joaovictor@teste.com está incorreta. Perdeu a senha?')
    });
})