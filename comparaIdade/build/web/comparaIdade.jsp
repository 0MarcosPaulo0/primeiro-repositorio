<%-- 
    Document   : comparaIdade
    Created on : 16/05/2021, 00:10:35
    Author     : MarcosPaulo
--%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.Pessoa"%>
<%@page contentType="text/html" pageEncoding="UTF-8" errorPage="TrataError.jsp"%>
<!DOCTYPE html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Comparando as idades</title>
    </head>
       <%
            try{    
                Pessoa pessoa1 = new Pessoa();
                Pessoa pessoa2 = new Pessoa();
                Pessoa pessoa3 = new Pessoa();
                //recebendo os dados da pessoa 1
                pessoa1.setNome(request.getParameter("nome"));
                String pessoa1Idadetxt = request.getParameter("idade");
                pessoa1.setIdade(Integer.getInteger(pessoa1Idadetxt));
                        
                //recebendo os dados da pessoa 2
                pessoa2.setNome(request.getParameter("nome2"));
                String pessoa2Idadetxt = request.getParameter("idade2");
                pessoa2.setIdade(Integer.getInteger(pessoa2Idadetxt));
                
                //recebendo os dados da pessoa 3
                pessoa3.setNome(request.getParameter("nome3"));
                String pessoa3Idadetxt = request.getParameter("idade3");
                pessoa3.setIdade(Integer.getInteger(pessoa3Idadetxt));
               
                ArrayList<Pessoa> pessoas = new ArrayList();
                pessoas.add(pessoa1);
                pessoas.add(pessoa2);
                pessoas.add(pessoa3);
                
                int idadeMaisVelha = 0;
                int idadeMaisNova= 99;
               
                for(int i = 0; i < 3; i ++){
                        if(pessoas.get(i).getIdade() < idadeMaisNova){
                            idadeMaisNova = pessoas.get(i).getIdade();
                            String pessoaMaisNovaNome = pessoas.get(i).getNome();
                            String pessoaMaisVelhaNome = pessoas.get(i).getNome();
                            out.println("O nome da pessoa mais velha é "+ pessoaMaisVelhaNome+", que tem "+idadeMaisVelha+" anos");
                            out.println("O nome da pessoa mais nova é "+ pessoaMaisNovaNome+", que tem "+idadeMaisNova+" anos");
                        }if(pessoas.get(i).getIdade() > idadeMaisVelha){
                            idadeMaisVelha = pessoas.get(i).getIdade();
                            String pessoaMaisVelhaNome = pessoas.get(i).getNome();
                             String pessoaMaisNovaNome = pessoas.get(i).getNome();
                            out.println("O nome da pessoa mais velha é "+ pessoaMaisVelhaNome+", que tem "+idadeMaisVelha+" anos");
                            out.println("O nome da pessoa mais nova é "+ pessoaMaisNovaNome+", que tem "+idadeMaisNova+" anos");
                        }
                    }
                }catch(NullPointerException ex){
                    out.println("Nenhum valor recebido");
                }
        %> 
        
        
    
            