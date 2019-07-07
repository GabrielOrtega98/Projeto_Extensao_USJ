<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Projetos de Extensão - Detalhe do Relatório</title>
        <link rel="stylesheet" href="CSS/w3schools/style.css"/>

        <!--Style form-->
        <style>
            .gridForm{
                padding-left: 80px;
                margin: 25px;
                margin-top: 80px;
                margin-left: 0;
            }
            .formLeft{
                margin-left: 80px;
                margin-bottom: 65px;
            }
            .btnSalvar{
                float: right;
                margin: 25px;
            }
        </style>
    </head>
    <body>
            
        <div class="w3-row">
            
            <!--Menu Lateral-->
            <div class="menuLateral w3-col s2 w3-border-right">
                <div id="imgLogo">  
                    <img width="240" height="100" src="img/logoUsj.png"></img>
                </div>
                
                <div class="menu">
                    <label>Vice-Reitora</label>
                    <a href="viewInicial.jsp" style="background-color: #C7CDD4"><img src="img/icon/projetos.png"/> Projetos</a>
                    <a href="viewConsultaGeral.jsp"><img src="img/icon/consulta.png"/> Consultas</a>
                </div>
                
                <div class="menuSair">
                    <a href="index.jsp">Sair <img src="img/icon/sair.png"/></a>
                </div>
            </div>
            <!--Fim menu lateral-->
            
            <div class="container w3-col s10">  
                <!--Titulo da Página-->
                <header class="w3-black" id="home">
                    <div class=" w3-black">
                        <div class="titulo w3-black w3-center">
                            <a class="w3-button" href="viewDetalheProjeto.jsp?idProj=<%=request.getParameter("fkProj")%>" style="float: left"><img src="img/icon/voltar.png"/></a>                        
                            <h4><b>Relatório Detalhado</b></h4>
                        </div>
                    </div>
                </header>
                <!--Fim titulo da página-->
                
                    <div class="w3-row">
                        <div class="w3-col s3 w3-center"><p></p></div>
                        <div class="gridForm w3-col s6 w3-card" style="background-color: #EEEBFF;">
                            <form action="salvarRelatorio.jsp" method="post" style="margin-left: 20px; padding-bottom: 20px">
                                <p>
                                    <span>Cod. do Projeto</span>
                                    <input class="w3-input w3-border-bottom" name="txtIdFk" Readonly value="<%=request.getParameter("fkProj")%>" style="width: 100px"/>
                                </p>
                                <p>
                                    <span>Data</span>
                                    <input class="w3-input w3-border-bottom" type="date" name="txtData" Readonly value="<%=request.getParameter("dataRel")%>" style="width: 200px"/>
                                </p>
                                <p>
                                    <span>Atividades Realizadas</span>
                                    <textarea class="w3-input w3-border-bottom" name="txtAtividades" Readonly style="width: 350px; height: 100px"><%=request.getParameter("atividadeRel")%></textarea>
                                </p>
                                                                
                            </form>    
                        </div>
                    </div>
                    <div class="w3-col s3"><p></p></div>
            </div>
        </div>        
    </body>
</html>
