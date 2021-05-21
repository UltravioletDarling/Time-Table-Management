/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Interfaces;
//IT19216256_Member 04

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.swing.JOptionPane;
import org.jfree.chart.ChartFactory;
import org.jfree.chart.JFreeChart;
import org.jfree.chart.ChartFrame;
import org.jfree.chart.plot.PiePlot;
import org.jfree.data.general.DefaultPieDataset;





/**
 *
 * @author Dell
 */
public class SubjectBarChart extends javax.swing.JFrame {

    /**
     * Creates new form SubjectBarChart
     */
       Connection con = null;
       PreparedStatement pst = null;
       ResultSet rs = null;
     
     
    public SubjectBarChart() {
        initComponents();
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jPanel1 = new javax.swing.JPanel();
        jPanel2 = new javax.swing.JPanel();
        jComboBox1 = new javax.swing.JComboBox<>();
        jButton1 = new javax.swing.JButton();
        jButton2 = new javax.swing.JButton();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);

        jPanel1.setBackground(new java.awt.Color(51, 153, 255));
        jPanel1.setLayout(new javax.swing.BoxLayout(jPanel1, javax.swing.BoxLayout.LINE_AXIS));

        jPanel2.setBackground(new java.awt.Color(0, 255, 255));
        jPanel2.setBorder(javax.swing.BorderFactory.createTitledBorder(null, "Subject Statistic", javax.swing.border.TitledBorder.DEFAULT_JUSTIFICATION, javax.swing.border.TitledBorder.DEFAULT_POSITION, new java.awt.Font("Cambria", 0, 18))); // NOI18N

        jComboBox1.setBackground(new java.awt.Color(102, 255, 255));
        jComboBox1.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "Select a Subject", "IP", "SPM", "OOC", "ITPM", "DBS", " " }));

        jButton1.setBackground(new java.awt.Color(0, 51, 255));
        jButton1.setForeground(new java.awt.Color(255, 255, 255));
        jButton1.setText("Search");
        jButton1.setContentAreaFilled(false);
        jButton1.setOpaque(true);
        jButton1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton1ActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout jPanel2Layout = new javax.swing.GroupLayout(jPanel2);
        jPanel2.setLayout(jPanel2Layout);
        jPanel2Layout.setHorizontalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel2Layout.createSequentialGroup()
                .addGap(209, 209, 209)
                .addComponent(jComboBox1, javax.swing.GroupLayout.PREFERRED_SIZE, 320, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(40, 40, 40)
                .addComponent(jButton1, javax.swing.GroupLayout.PREFERRED_SIZE, 73, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(192, Short.MAX_VALUE))
        );
        jPanel2Layout.setVerticalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel2Layout.createSequentialGroup()
                .addGap(23, 23, 23)
                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jComboBox1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jButton1))
                .addContainerGap(319, Short.MAX_VALUE))
        );

        jButton2.setText("Back");
        jButton2.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton2ActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGap(84, 84, 84)
                .addComponent(jPanel2, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jPanel1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(60, Short.MAX_VALUE))
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addComponent(jButton2, javax.swing.GroupLayout.PREFERRED_SIZE, 73, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(19, 19, 19))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jButton2)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(layout.createSequentialGroup()
                        .addGap(66, 66, 66)
                        .addComponent(jPanel1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                    .addComponent(jPanel2, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void jButton1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton1ActionPerformed
        String ses = jComboBox1.getSelectedItem().toString();
        String k = "IP";
        String D = "SPM";
        String R = "OOC";
        String A = "OOP";
        String B = "ITPM";
        String C = "DBS";
        
        
         try{
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost/mynewdb","root","");
            String sql = "select * from lecturers WHERE lecturername=?";
            pst.setString(1, ses);
            
            pst = con.prepareStatement(sql);
            ResultSet rs = pst.executeQuery();
            
            jComboBox1.setSelectedIndex(0);
           
        }
        catch(Exception e){
            JOptionPane.showMessageDialog(null, e);
        }
         if(ses.equals(k)){
               
                DefaultPieDataset pi = new DefaultPieDataset();
                pi.setValue("Lecture Halls",new Integer(5));
                pi.setValue("Labs",new Integer(3));
      
            JFreeChart chart = ChartFactory.createPieChart("Subject Statistic", pi, true, true,true);
            PiePlot p = (PiePlot)chart.getPlot();
           //p.setForegroundAlpha(TOP_ALIGNMENT);
           ChartFrame frame = new ChartFrame("Subject Statistics",chart);
           frame.setVisible(true);
           frame.setSize(450,500);
        
       
         }else if(ses.equals(D)){
             
                DefaultPieDataset pi = new DefaultPieDataset();
                pi.setValue("Lecture Halls",new Integer(10));
                pi.setValue("Labs",new Integer(4));
      
             JFreeChart chart = ChartFactory.createPieChart("Subject Statistic", pi, true, true,true);
             PiePlot p = (PiePlot)chart.getPlot();
             //p.setForegroundAlpha(TOP_ALIGNMENT);
             ChartFrame frame = new ChartFrame("Subject Statistics",chart);
             frame.setVisible(true);
             frame.setSize(450,500);
        
        
         }else if(ses.equals(R)){
             
                      
                 DefaultPieDataset pi = new DefaultPieDataset();
                 pi.setValue("Lecture Halls",new Integer(5));
                 pi.setValue("Labs",new Integer(5));
      
              JFreeChart chart = ChartFactory.createPieChart("Subject Statistic", pi, true, true,true);
              PiePlot p = (PiePlot)chart.getPlot();
              //p.setForegroundAlpha(TOP_ALIGNMENT);
              ChartFrame frame = new ChartFrame("Subject Statistics",chart);
              frame.setVisible(true);
              frame.setSize(450,500);
        
        
         }else if(ses.equals(A)){
             
                      
               DefaultPieDataset pi = new DefaultPieDataset();
               pi.setValue("Lecture Halls",new Integer(9));
               pi.setValue("Labs",new Integer(6));
      
                 JFreeChart chart = ChartFactory.createPieChart("Subject Statistic", pi, true, true,true);
                 PiePlot p = (PiePlot)chart.getPlot();
                 //p.setForegroundAlpha(TOP_ALIGNMENT);
                 ChartFrame frame = new ChartFrame("Subject Statistics",chart);
                 frame.setVisible(true);
                 frame.setSize(450,500);
        
         }else if(ses.equals(B)){
             
                      
        
                DefaultPieDataset pi = new DefaultPieDataset();
                pi.setValue("Lecture Halls",new Integer(12));
                pi.setValue("Labs",new Integer(5));
      
               JFreeChart chart = ChartFactory.createPieChart("Subject Statistic", pi, true, true,true);
               PiePlot p = (PiePlot)chart.getPlot();
               //p.setForegroundAlpha(TOP_ALIGNMENT);
               ChartFrame frame = new ChartFrame("Subject Statistics",chart);
               frame.setVisible(true);
               frame.setSize(450,500);
        
         }else if(ses.equals(C)){
             
                      
        
               DefaultPieDataset pi = new DefaultPieDataset();
               pi.setValue("Lecture Halls",new Integer(15));
               pi.setValue("Labs",new Integer(6));
      
               JFreeChart chart = ChartFactory.createPieChart("Subject Statistic", pi, true, true,true);
               PiePlot p = (PiePlot)chart.getPlot();
               //p.setForegroundAlpha(TOP_ALIGNMENT);
               ChartFrame frame = new ChartFrame("Subject Statistics",chart);
               frame.setVisible(true);
               frame.setSize(450,500);
        
        } 
                
        
         /*DefaultPieDataset pi = new DefaultPieDataset();
         pi.setValue("Lecture Halls",new Integer(5));
         pi.setValue("Labs",new Integer(3));
      
        JFreeChart chart = ChartFactory.createPieChart("Subject Statistic", pi, true, true,true);
        PiePlot p = (PiePlot)chart.getPlot();
        //p.setForegroundAlpha(TOP_ALIGNMENT);
        ChartFrame frame = new ChartFrame("Subject Statistics",chart);
        frame.setVisible(true);
        frame.setSize(450,500);*/
        
           
        
    }//GEN-LAST:event_jButton1ActionPerformed

    private void jButton2ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton2ActionPerformed
        // TODO add your handling code here:
           StatisticsDashBoard s1 = new StatisticsDashBoard();
           s1.setVisible(true);
           this.dispose();
        
        
    }//GEN-LAST:event_jButton2ActionPerformed

    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {
        /* Set the Nimbus look and feel */
        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
        /* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.
         * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html 
         */
        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(SubjectBarChart.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(SubjectBarChart.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(SubjectBarChart.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(SubjectBarChart.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new SubjectBarChart().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton jButton1;
    private javax.swing.JButton jButton2;
    private javax.swing.JComboBox<String> jComboBox1;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    // End of variables declaration//GEN-END:variables
}
