import java.io.BufferedReader;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import javax.swing.JOptionPane;
// criei duas bibliotecas a Jbutton para poder dar funcionalidade de interaçao para o jogo
// A biblioteca JOpitionPane para dar uma mensagem afirmativa para o vencedor ou para o empate.

public class JogoDaVelha extends javax.swing.JFrame {
//criei atributos
    boolean  VezDoJogador1 = true;

    boolean VezDoJogador2 = true;
    
    int VitoriaDoJogador1 = 0;
    int VitoriaDoJogador2 = 0;
    int PartidasEmpatadas = 0;
    
    String nomeX;
    String nomeO;
    
     

        
        
    public JogoDaVelha(String EntradaNomeX, String EntradaNomeO) {
        initComponents();
       
        JogadorO.setText(EntradaNomeO + " (O)");
        JogadorX.setText(EntradaNomeX + " (X)");
       
                
        nomeX = EntradaNomeX;
        nomeO = EntradaNomeO;
        
    }
    
    
    public void VezDoJogador() {
        
        
        
        if (VezDoJogador1 == true) {
            VezDoJogador1 = false;
            VezDoJogador2 = true;
        } else {
            VezDoJogador1 = true;
            VezDoJogador2 = false;
        }
        
        JogadorVencedor("X");
        JogadorVencedor("O");
        
    }


   
    
    
    
    public void JogadorVencedor(String Jogador) {
        
        
        /******************* Verificando Linhas *********************/
        if (BT1.getText().equals(Jogador) &&
                BT2.getText().equals(Jogador) &&
                BT3.getText().equals(Jogador)) {
            
            if (BT1.getText().equals("X"))
                Vencedor("Jogador 1");
            else
                Vencedor("Jogador 2");
            
        }
        
        
        if (BT4.getText().equals(Jogador) &&
                BT5.getText().equals(Jogador) &&
                BT6.getText().equals(Jogador)) {
            
            if (BT4.getText().equals("X"))
                Vencedor("Jogador 1");
            else
                Vencedor("Jogador 2");
            
        }
        
        
        if (BT7.getText().equals(Jogador) &&
                BT8.getText().equals(Jogador) &&
                BT9.getText().equals(Jogador)) {
            
            if (BT7.getText().equals("X"))
                Vencedor("Jogador 1");
            else
                Vencedor("Jogador 2");
            
        }
        
        
        /******************* Verificando Colunas *********************/
        if (BT1.getText().equals(Jogador) &&
                BT4.getText().equals(Jogador) &&
                BT7.getText().equals(Jogador)) {
            
            if (BT1.getText().equals("X"))
                Vencedor("Jogador 1");
            else
                Vencedor("Jogador 2");
            
        }
        
        
        if (BT2.getText().equals(Jogador) &&
                BT5.getText().equals(Jogador) &&
                BT8.getText().equals(Jogador)) {
            
            if (BT2.getText().equals("X"))
                Vencedor("Jogador 1");
            else
                Vencedor("Jogador 2");
            
        }
        
        
        if (BT3.getText().equals(Jogador) &&
                BT6.getText().equals(Jogador) &&
                BT9.getText().equals(Jogador)) {
            
            if (BT3.getText().equals("X"))
                Vencedor("Jogador 1");
            else
                Vencedor("Jogador 2");
            
        }
        
        
        /******************* Verificando Diagonais *********************/
        if (BT1.getText().equals(Jogador) &&
                BT5.getText().equals(Jogador) &&
                BT9.getText().equals(Jogador)) {
            
            if (BT1.getText().equals("X"))
                Vencedor("Jogador 1");
            else
                Vencedor("Jogador 2");
            
        }
        
        
        if (BT3.getText().equals(Jogador) &&
                BT5.getText().equals(Jogador) &&
                BT7.getText().equals(Jogador)) {
            
            if (BT3.getText().equals("X"))
                Vencedor("Jogador 1");
            else
                Vencedor("Jogador 2");
            
        }
        
        
        /******************* Verificando Empate *********************/
        if ( !BT1.getText().equals("") &&
                !BT2.getText().equals("") &&
                !BT3.getText().equals("") &&
                !BT4.getText().equals("") &&
                !BT5.getText().equals("") &&
                !BT6.getText().equals("") &&
                !BT7.getText().equals("") &&
                !BT8.getText().equals("") &&
                !BT9.getText().equals("") ) {
            
            Vencedor("Empate");
        }
        
    }
        
    
    public void Vencedor(String JogadorVencedor) {

    if (JogadorVencedor.equals("Jogador 1")) {
        JOptionPane.showMessageDialog(JogoDaVelha.this, "Parabéns Jogador 1. Você venceu o Jogo!");
        VitoriaDoJogador1++;
        Placar1.setText(" " + VitoriaDoJogador1);
        LimparCampos();
    }

    if (JogadorVencedor.equals("Jogador 2")) {
        JOptionPane.showMessageDialog(JogoDaVelha.this, "Parabéns Jogador 2. Você venceu o Jogo!");
        VitoriaDoJogador2++;
        Placar2.setText(" " + VitoriaDoJogador2);
        LimparCampos();
    }

    if (JogadorVencedor.equals("Empatar")) {
        JOptionPane.showMessageDialog(JogoDaVelha.this, "Jogo Empatado! Joguem Novamente!");
        PartidasEmpatadas++;
        Placar3.setText("Número de Empates: " + PartidasEmpatadas);
        LimparCampos();
    }

    // Salvar pontuação após cada jogo
    salvarPontuacao();
}
public void salvarPontuacao() {
    try {
        FileWriter fileWriter = new FileWriter("pontuacao.txt");
        PrintWriter printWriter = new PrintWriter(fileWriter);

        // Escreve as pontuações no arquivo
        printWriter.println("Jogador 1: " + VitoriaDoJogador1);
        printWriter.println("Jogador 2: " + VitoriaDoJogador2);
        printWriter.println("Empates: " + PartidasEmpatadas);

        // Fecha o PrintWriter
        printWriter.close();

        // Mostra uma mensagem de sucesso
        JOptionPane.showMessageDialog(JogoDaVelha.this, "Pontuação salva com sucesso!");
    } catch (IOException e) {
        e.printStackTrace();
        JOptionPane.showMessageDialog(JogoDaVelha.this, "Erro ao salvar a pontuação.");
    }
}



    
   



    
    
    
    
    
    public void LimparCampos() {
        
        BT1.setText("");
        BT2.setText("");
        BT3.setText("");
        BT4.setText("");
        BT5.setText("");
        BT6.setText("");
        BT7.setText("");
        BT8.setText("");
        BT9.setText("");
        
        VezDoJogador1 = true;
        VezDoJogador2 = false;
        salvarPontuacao();
    }                 


     
   
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jToggleButton1 = new javax.swing.JToggleButton();
        jLabel1 = new javax.swing.JLabel();
        jPanel1 = new javax.swing.JPanel();
        BT1 = new javax.swing.JButton();
        BT2 = new javax.swing.JButton();
        BT3 = new javax.swing.JButton();
        BT4 = new javax.swing.JButton();
        BT5 = new javax.swing.JButton();
        BT6 = new javax.swing.JButton();
        BT7 = new javax.swing.JButton();
        BT8 = new javax.swing.JButton();
        BT9 = new javax.swing.JButton();
        jPanel2 = new javax.swing.JPanel();
        jLabel2 = new javax.swing.JLabel();
        JogadorX = new javax.swing.JLabel();
        JogadorO = new javax.swing.JLabel();
        jSeparator1 = new javax.swing.JSeparator();
        jSeparator2 = new javax.swing.JSeparator();
        jSeparator3 = new javax.swing.JSeparator();
        BTsair = new javax.swing.JButton();
        jLabel3 = new javax.swing.JLabel();
        Placar1 = new javax.swing.JLabel();
        Placar2 = new javax.swing.JLabel();
        Placar3 = new javax.swing.JLabel();
        BTreiniciar = new javax.swing.JButton();

        jToggleButton1.setText("jToggleButton1");

        jLabel1.setText("jLabel1");

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);

        jPanel1.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 0, 0)));

        BT1.setFont(new java.awt.Font("Segoe UI", 0, 48)); // NOI18N
        BT1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                BT1ActionPerformed(evt);
            }
        });

        BT2.setFont(new java.awt.Font("Segoe UI", 0, 48)); // NOI18N
        BT2.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                BT2ActionPerformed(evt);
            }
        });

        BT3.setFont(new java.awt.Font("Segoe UI", 0, 48)); // NOI18N
        BT3.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                BT3ActionPerformed(evt);
            }
        });

        BT4.setFont(new java.awt.Font("Segoe UI", 0, 48)); // NOI18N
        BT4.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                BT4ActionPerformed(evt);
            }
        });

        BT5.setFont(new java.awt.Font("Segoe UI", 0, 48)); // NOI18N
        BT5.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                BT5ActionPerformed(evt);
            }
        });

        BT6.setFont(new java.awt.Font("Segoe UI", 0, 48)); // NOI18N
        BT6.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                BT6ActionPerformed(evt);
            }
        });

        BT7.setFont(new java.awt.Font("Segoe UI", 0, 48)); // NOI18N
        BT7.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                BT7ActionPerformed(evt);
            }
        });

        BT8.setFont(new java.awt.Font("Segoe UI", 0, 48)); // NOI18N
        BT8.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                BT8ActionPerformed(evt);
            }
        });

        BT9.setFont(new java.awt.Font("Segoe UI", 0, 48)); // NOI18N
        BT9.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                BT9ActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout jPanel1Layout = new javax.swing.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addComponent(BT7)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(BT8)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(BT9))
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addComponent(BT1, javax.swing.GroupLayout.PREFERRED_SIZE, 118, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(BT2)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(BT3))
                    .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel1Layout.createSequentialGroup()
                        .addComponent(BT4)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(BT5)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(BT6)
                        .addGap(24, 24, 24))))
        );

        jPanel1Layout.linkSize(javax.swing.SwingConstants.HORIZONTAL, new java.awt.Component[] {BT1, BT2, BT3, BT4, BT5, BT6, BT7, BT8, BT9});

        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(BT1, javax.swing.GroupLayout.PREFERRED_SIZE, 136, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(BT2, javax.swing.GroupLayout.PREFERRED_SIZE, 128, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(BT3))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(BT6)
                    .addComponent(BT5)
                    .addComponent(BT4))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(BT7)
                    .addComponent(BT8)
                    .addComponent(BT9))
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );

        jPanel1Layout.linkSize(javax.swing.SwingConstants.VERTICAL, new java.awt.Component[] {BT1, BT2, BT3, BT4, BT5, BT6, BT7, BT8, BT9});

        jPanel2.setPreferredSize(new java.awt.Dimension(240, 455));

        jLabel2.setFont(new java.awt.Font("Segoe UI Black", 0, 18)); // NOI18N
        jLabel2.setText("JOGO");

        JogadorX.setFont(new java.awt.Font("Segoe UI Black", 0, 18)); // NOI18N

        JogadorO.setFont(new java.awt.Font("Segoe UI Black", 0, 18)); // NOI18N

        BTsair.setFont(new java.awt.Font("Segoe UI Black", 0, 18)); // NOI18N
        BTsair.setText("Voltar");
        BTsair.setBorder(new javax.swing.border.SoftBevelBorder(javax.swing.border.BevelBorder.RAISED));
        BTsair.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                BTsairActionPerformed(evt);
            }
        });

        jLabel3.setFont(new java.awt.Font("Segoe UI Black", 1, 24)); // NOI18N
        jLabel3.setText("PLACAR");

        Placar1.setFont(new java.awt.Font("Segoe UI Black", 1, 36)); // NOI18N
        Placar1.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        Placar1.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 0, 0)));
        Placar1.setHorizontalTextPosition(javax.swing.SwingConstants.CENTER);

        Placar2.setFont(new java.awt.Font("Segoe UI Black", 1, 36)); // NOI18N
        Placar2.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        Placar2.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 0, 0)));

        javax.swing.GroupLayout jPanel2Layout = new javax.swing.GroupLayout(jPanel2);
        jPanel2.setLayout(jPanel2Layout);
        jPanel2Layout.setHorizontalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel2Layout.createSequentialGroup()
                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanel2Layout.createSequentialGroup()
                        .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(JogadorX, javax.swing.GroupLayout.PREFERRED_SIZE, 109, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(JogadorO, javax.swing.GroupLayout.PREFERRED_SIZE, 142, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addGroup(jPanel2Layout.createSequentialGroup()
                                .addContainerGap()
                                .addComponent(jLabel2, javax.swing.GroupLayout.PREFERRED_SIZE, 96, javax.swing.GroupLayout.PREFERRED_SIZE))
                            .addGroup(jPanel2Layout.createSequentialGroup()
                                .addGap(73, 73, 73)
                                .addComponent(jLabel3)))
                        .addGap(0, 0, Short.MAX_VALUE))
                    .addComponent(jSeparator1)
                    .addComponent(jSeparator2)
                    .addComponent(jSeparator3, javax.swing.GroupLayout.Alignment.TRAILING)
                    .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel2Layout.createSequentialGroup()
                        .addGap(17, 17, 17)
                        .addComponent(Placar1, javax.swing.GroupLayout.PREFERRED_SIZE, 70, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 61, Short.MAX_VALUE)
                        .addComponent(Placar2, javax.swing.GroupLayout.PREFERRED_SIZE, 70, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(23, 23, 23)))
                .addContainerGap())
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel2Layout.createSequentialGroup()
                .addGap(0, 0, Short.MAX_VALUE)
                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(BTsair, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.PREFERRED_SIZE, 86, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel2Layout.createSequentialGroup()
                        .addComponent(Placar3, javax.swing.GroupLayout.PREFERRED_SIZE, 37, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(88, 88, 88))))
        );

        jPanel2Layout.linkSize(javax.swing.SwingConstants.HORIZONTAL, new java.awt.Component[] {Placar1, Placar2, Placar3});

        jPanel2Layout.setVerticalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel2Layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jLabel2)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jSeparator1, javax.swing.GroupLayout.PREFERRED_SIZE, 12, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(JogadorX)
                .addGap(32, 32, 32)
                .addComponent(jSeparator2, javax.swing.GroupLayout.PREFERRED_SIZE, 17, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(JogadorO)
                .addGap(26, 26, 26)
                .addComponent(jSeparator3, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(43, 43, 43)
                .addComponent(jLabel3)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                    .addComponent(Placar2, javax.swing.GroupLayout.DEFAULT_SIZE, 70, Short.MAX_VALUE)
                    .addComponent(Placar1, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addComponent(Placar3)
                .addGap(65, 65, 65)
                .addComponent(BTsair)
                .addGap(30, 30, 30))
        );

        jPanel2Layout.linkSize(javax.swing.SwingConstants.VERTICAL, new java.awt.Component[] {Placar1, Placar2, Placar3});

        BTreiniciar.setFont(new java.awt.Font("Segoe UI Black", 0, 18)); // NOI18N
        BTreiniciar.setText("Reiniciar");
        BTreiniciar.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                BTreiniciarActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                    .addComponent(jPanel1, javax.swing.GroupLayout.PREFERRED_SIZE, 377, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addGroup(layout.createSequentialGroup()
                        .addContainerGap()
                        .addComponent(BTreiniciar, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jPanel2, javax.swing.GroupLayout.PREFERRED_SIZE, 247, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(19, Short.MAX_VALUE))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jPanel2, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.DEFAULT_SIZE, 516, Short.MAX_VALUE)
            .addGroup(layout.createSequentialGroup()
                .addComponent(jPanel1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(BTreiniciar, javax.swing.GroupLayout.DEFAULT_SIZE, 64, Short.MAX_VALUE)
                .addContainerGap())
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void BT1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_BT1ActionPerformed
        
        if (VezDoJogador1 == true) {
            if (BT1.getText().equals("")) {
                BT1.setText("X");
                VezDoJogador();
            }
        } else {
            if (BT1.getText().equals("")) {
                BT1.setText("O");
                VezDoJogador();
            }
        }
    }//GEN-LAST:event_BT1ActionPerformed

    private void BT2ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_BT2ActionPerformed
       if (VezDoJogador1 == true) {
            if (BT2.getText().equals("")) {
                BT2.setText("X");
                VezDoJogador();
            }
        } else {
            if (BT2.getText().equals("")) {
                BT2.setText("O");
                VezDoJogador();
            }
        }
    }//GEN-LAST:event_BT2ActionPerformed

    private void BT3ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_BT3ActionPerformed
       if (VezDoJogador1 == true) {
            if (BT3.getText().equals("")) {
                BT3.setText("X");
                VezDoJogador();
            }
        } else {
            if (BT3.getText().equals("")) {
                BT3.setText("O");
                VezDoJogador();
            }
        }
    }//GEN-LAST:event_BT3ActionPerformed

    private void BT4ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_BT4ActionPerformed
      if (VezDoJogador1 == true) {
            if (BT4.getText().equals("")) {
                BT4.setText("X");
                VezDoJogador();
            }
        } else {
            if (BT4.getText().equals("")) {
                BT4.setText("O");
                VezDoJogador();
            }
        }
    }//GEN-LAST:event_BT4ActionPerformed

    private void BT5ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_BT5ActionPerformed
         if (VezDoJogador1 == true) {
            if (BT5.getText().equals("")) {
                BT5.setText("X");
                VezDoJogador();
            }
        } else {
            if (BT5.getText().equals("")) {
                BT5.setText("O");
                VezDoJogador();
            }
        }   

    }//GEN-LAST:event_BT5ActionPerformed

    private void BT6ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_BT6ActionPerformed
         if (VezDoJogador1 == true) {
            if (BT6.getText().equals("")) {
                BT6.setText("X");
                VezDoJogador();
            }
        } else {
            if (BT6.getText().equals("")) {
                BT6.setText("O");
                VezDoJogador();
            }
        }
    }//GEN-LAST:event_BT6ActionPerformed

    private void BT7ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_BT7ActionPerformed
          if (VezDoJogador1 == true) {
            if (BT7.getText().equals("")) {
                BT7.setText("X");
                VezDoJogador();
            }
        } else {
            if (BT7.getText().equals("")) {
                BT7.setText("O");
                VezDoJogador();
            }
        }
    }//GEN-LAST:event_BT7ActionPerformed

    private void BT8ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_BT8ActionPerformed
          if (VezDoJogador1 == true) {
            if (BT8.getText().equals("")) {
                BT8.setText("X");
                VezDoJogador();
            }
        } else {
            if (BT8.getText().equals("")) {
                BT8.setText("O");
                VezDoJogador();
            }
        }
    }//GEN-LAST:event_BT8ActionPerformed

    private void BT9ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_BT9ActionPerformed
        if (VezDoJogador1 == true) {
            if (BT9.getText().equals("")) {
                BT9.setText("X");
                VezDoJogador();
            }
        } else {
            if (BT9.getText().equals("")) {
                BT9.setText("O");
                VezDoJogador();
            }
        }
    }//GEN-LAST:event_BT9ActionPerformed

    private void BTreiniciarActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_BTreiniciarActionPerformed
           Placar1.setText("0");
           VitoriaDoJogador1=0;
           
           Placar2.setText("0");
           VitoriaDoJogador2=0;
           
    }//GEN-LAST:event_BTreiniciarActionPerformed

    private void BTsairActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_BTsairActionPerformed
        //System.exit(0);
        TelaNomes telavoltando = new TelaNomes();
        telavoltando.setVisible(true);
        dispose();
    }//GEN-LAST:event_BTsairActionPerformed

    
    public static void main(String args[]) {
        
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                //new JogoDaVelha();
                
                
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton BT1;
    private javax.swing.JButton BT2;
    private javax.swing.JButton BT3;
    private javax.swing.JButton BT4;
    private javax.swing.JButton BT5;
    private javax.swing.JButton BT6;
    private javax.swing.JButton BT7;
    private javax.swing.JButton BT8;
    private javax.swing.JButton BT9;
    private javax.swing.JButton BTreiniciar;
    private javax.swing.JButton BTsair;
    public javax.swing.JLabel JogadorO;
    public javax.swing.JLabel JogadorX;
    private javax.swing.JLabel Placar1;
    private javax.swing.JLabel Placar2;
    private javax.swing.JLabel Placar3;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JSeparator jSeparator1;
    private javax.swing.JSeparator jSeparator2;
    private javax.swing.JSeparator jSeparator3;
    private javax.swing.JToggleButton jToggleButton1;
    // End of variables declaration//GEN-END:variables
}
