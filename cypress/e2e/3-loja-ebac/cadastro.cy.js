/// <reference types="cypress"/>
import { faker } from '@faker-js/faker';

describe('funcionalidade:cadastro', () => {
    beforeEach(() => {
       cy.visit('http://lojaebac.ebaconline.art.br/minha-conta/') 
    });

    afterEach(() => {
        cy.screenshot()
    });
    it('deve completar o cadastro com sucesso', () => {
        cy.get('#reg_email').type(faker.internet.email())
        cy.get('#reg_password').type('joao@teste')
        cy.get(':nth-child(4) > .button').click()
        cy.get('.woocommerce-MyAccount-content').should('exist')
        cy.get('.woocommerce-MyAccount-navigation-link--edit-account > a').click()
        cy.get('#account_first_name').type(faker.person.firstName())
        cy.get('.form-row-last > label').type(faker.person.lastName())
        cy.wait(5000)
        cy.get('.woocommerce-Button').click()
        cy.get('.woocommerce-message').should('contain', 'Detalhes da conta modificados com sucesso.')
        });
        
        it('deve completar o cadastro com sucesso-usando variaveis', () => {
            var nome = faker.person.firstName()
            var email = faker.internet.email(nome)
            var sobrenome = faker.person.lastName()

        cy.get('#reg_email').type(email)
        cy.get('#reg_password').type('joao@teste')
        cy.get(':nth-child(4) > .button').click()
        cy.get('.woocommerce-MyAccount-content').should('exist')
        cy.get('.woocommerce-MyAccount-navigation-link--edit-account > a').click()
        cy.get('#account_first_name').type(nome)
        cy.get('.form-row-last > label').type(sobrenome)
        cy.wait(5000)
        cy.get('.woocommerce-Button').click()
        cy.get('.woocommerce-message').should('contain', 'Detalhes da conta modificados com sucesso.')
        });


})