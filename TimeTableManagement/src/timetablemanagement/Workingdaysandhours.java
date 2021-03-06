/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package timetablemanagement;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.util.Vector;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JOptionPane;
import javax.swing.table.DefaultTableModel;

/**
 *
 * @author Dell
 */
public class Workingdaysandhours extends javax.swing.JFrame {

    /**
     * Creates new form Rooms
     */
    public Workingdaysandhours() {
        initComponents();
        setLocationRelativeTo(null);
        table_update();
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        buttonGroup1 = new javax.swing.ButtonGroup();
        buttonGroup2 = new javax.swing.ButtonGroup();
        buttonGroup3 = new javax.swing.ButtonGroup();
        jRadioButtonMenuItem1 = new javax.swing.JRadioButtonMenuItem();
        jLabel1 = new javax.swing.JLabel();
        jLabel2 = new javax.swing.JLabel();
        jLabel3 = new javax.swing.JLabel();
        jLabel4 = new javax.swing.JLabel();
        workingday = new javax.swing.JComboBox<>();
        save = new javax.swing.JButton();
        delete = new javax.swing.JButton();
        jButton3 = new javax.swing.JButton();
        Monday = new javax.swing.JCheckBox();
        Tuesday = new javax.swing.JCheckBox();
        Wednesday = new javax.swing.JCheckBox();
        Thursday = new javax.swing.JCheckBox();
        Friday = new javax.swing.JCheckBox();
        Saturday = new javax.swing.JCheckBox();
        Sunday = new javax.swing.JCheckBox();
        workinghours = new javax.swing.JComboBox<>();
        jLabel5 = new javax.swing.JLabel();
        workingminutes = new javax.swing.JComboBox<>();
        jLabel6 = new javax.swing.JLabel();
        clear = new javax.swing.JButton();
        jLabel7 = new javax.swing.JLabel();
        timeslot = new javax.swing.JComboBox<>();
        jScrollPane1 = new javax.swing.JScrollPane();
        jTable1 = new javax.swing.JTable();
        update = new javax.swing.JButton();

        jRadioButtonMenuItem1.setSelected(true);
        jRadioButtonMenuItem1.setText("jRadioButtonMenuItem1");

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);

        jLabel1.setText("Number Of Working Days Per Week");

        jLabel2.setText("Working Days");

        jLabel3.setText("Time Slot");

        jLabel4.setText("Working Time per Day");

        workingday.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "1", "2", "3", "4", "5", "6", "7" }));
        workingday.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                workingdayActionPerformed(evt);
            }
        });

        save.setBackground(new java.awt.Color(51, 153, 0));
        save.setForeground(new java.awt.Color(255, 255, 255));
        save.setText("Save");
        save.setContentAreaFilled(false);
        save.setOpaque(true);
        save.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                saveActionPerformed(evt);
            }
        });

        delete.setBackground(new java.awt.Color(255, 0, 0));
        delete.setForeground(new java.awt.Color(255, 255, 255));
        delete.setText("Delete");
        delete.setContentAreaFilled(false);
        delete.setOpaque(true);
        delete.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                deleteActionPerformed(evt);
            }
        });

        jButton3.setBackground(new java.awt.Color(102, 102, 255));
        jButton3.setForeground(new java.awt.Color(255, 255, 255));
        jButton3.setText("Back To Dashboard");
        jButton3.setContentAreaFilled(false);
        jButton3.setOpaque(true);
        jButton3.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton3ActionPerformed(evt);
            }
        });

        Monday.setText("Monday");
        Monday.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                MondayActionPerformed(evt);
            }
        });

        Tuesday.setText("Tuesday");

        Wednesday.setText("Wednesday");

        Thursday.setText("Thursday");

        Friday.setText("Friday");

        Saturday.setText("Saturday");
        Saturday.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                SaturdayActionPerformed(evt);
            }
        });

        Sunday.setText("Sunday");
        Sunday.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                SundayActionPerformed(evt);
            }
        });

        workinghours.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "1", "2", "3", "4", "5", "6", "7", "8", "9" }));
        workinghours.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                workinghoursActionPerformed(evt);
            }
        });

        jLabel5.setText("Hours");

        workingminutes.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "10", "20", "30", "40", "50", " ", " " }));
        workingminutes.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                workingminutesActionPerformed(evt);
            }
        });

        jLabel6.setText("Minutes");

        clear.setBackground(new java.awt.Color(255, 102, 102));
        clear.setForeground(new java.awt.Color(255, 255, 255));
        clear.setText("Reset");
        clear.setContentAreaFilled(false);
        clear.setOpaque(true);
        clear.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                clearActionPerformed(evt);
            }
        });

        jLabel7.setBackground(new java.awt.Color(204, 204, 204));
        jLabel7.setFont(new java.awt.Font("Times New Roman", 1, 48)); // NOI18N
        jLabel7.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel7.setText("Working Days And Hours");
        jLabel7.setOpaque(true);

        timeslot.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "1 hour", "30 minutes" }));
        timeslot.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                timeslotActionPerformed(evt);
            }
        });

        jTable1.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {

            },
            new String [] {
                "ID", "Days Per Week", "Days", "Time Per Day", "Time Slot"
            }
        ));
        jTable1.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                jTable1MouseClicked(evt);
            }
        });
        jScrollPane1.setViewportView(jTable1);

        update.setBackground(new java.awt.Color(51, 51, 255));
        update.setForeground(new java.awt.Color(255, 255, 255));
        update.setText("Update");
        update.setContentAreaFilled(false);
        update.setOpaque(true);
        update.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                updateActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jLabel7, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addContainerGap())
            .addGroup(layout.createSequentialGroup()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(layout.createSequentialGroup()
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addGroup(layout.createSequentialGroup()
                                .addGap(42, 42, 42)
                                .addComponent(jLabel1)
                                .addGap(25, 25, 25))
                            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                                .addContainerGap()
                                .addComponent(jLabel2, javax.swing.GroupLayout.PREFERRED_SIZE, 93, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addGap(57, 57, 57)))
                        .addComponent(workingday, javax.swing.GroupLayout.PREFERRED_SIZE, 175, javax.swing.GroupLayout.PREFERRED_SIZE))
                    .addGroup(layout.createSequentialGroup()
                        .addGap(237, 237, 237)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(Friday)
                            .addComponent(Thursday)
                            .addComponent(Monday))
                        .addGap(18, 18, 18)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(Saturday)
                            .addComponent(Tuesday))
                        .addGap(18, 18, 18)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(Sunday)
                            .addComponent(Wednesday)))
                    .addGroup(layout.createSequentialGroup()
                        .addGap(50, 50, 50)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addGroup(layout.createSequentialGroup()
                                .addGap(38, 38, 38)
                                .addComponent(jLabel3))
                            .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                                .addComponent(save, javax.swing.GroupLayout.PREFERRED_SIZE, 73, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addGroup(layout.createSequentialGroup()
                                    .addComponent(jLabel4, javax.swing.GroupLayout.PREFERRED_SIZE, 147, javax.swing.GroupLayout.PREFERRED_SIZE)
                                    .addGap(10, 10, 10))))
                        .addGap(25, 25, 25)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addGroup(layout.createSequentialGroup()
                                .addComponent(workinghours, javax.swing.GroupLayout.PREFERRED_SIZE, 47, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                                .addComponent(jLabel5)
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                                .addComponent(workingminutes, javax.swing.GroupLayout.PREFERRED_SIZE, 53, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addGap(18, 18, 18)
                                .addComponent(jLabel6, javax.swing.GroupLayout.PREFERRED_SIZE, 54, javax.swing.GroupLayout.PREFERRED_SIZE))
                            .addGroup(layout.createSequentialGroup()
                                .addGap(23, 23, 23)
                                .addComponent(update, javax.swing.GroupLayout.PREFERRED_SIZE, 73, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addGap(45, 45, 45)
                                .addComponent(delete, javax.swing.GroupLayout.PREFERRED_SIZE, 73, javax.swing.GroupLayout.PREFERRED_SIZE))
                            .addComponent(timeslot, javax.swing.GroupLayout.PREFERRED_SIZE, 175, javax.swing.GroupLayout.PREFERRED_SIZE)))
                    .addGroup(layout.createSequentialGroup()
                        .addGap(224, 224, 224)
                        .addComponent(clear, javax.swing.GroupLayout.PREFERRED_SIZE, 138, javax.swing.GroupLayout.PREFERRED_SIZE)))
                .addGap(18, 18, 18)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(layout.createSequentialGroup()
                        .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(0, 10, Short.MAX_VALUE))
                    .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                        .addComponent(jButton3, javax.swing.GroupLayout.PREFERRED_SIZE, 207, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(143, 143, 143))))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGap(18, 18, 18)
                .addComponent(jLabel7)
                .addGap(34, 34, 34)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(layout.createSequentialGroup()
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(workingday, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(jLabel1, javax.swing.GroupLayout.PREFERRED_SIZE, 24, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addGap(24, 24, 24)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(jLabel2, javax.swing.GroupLayout.PREFERRED_SIZE, 22, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(Monday)
                            .addComponent(Tuesday)
                            .addComponent(Wednesday))
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(Saturday)
                            .addComponent(Sunday)
                            .addComponent(Friday))
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addComponent(Thursday)
                        .addGap(18, 18, 18)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(jLabel4, javax.swing.GroupLayout.PREFERRED_SIZE, 25, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(workinghours, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(jLabel5, javax.swing.GroupLayout.PREFERRED_SIZE, 22, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(workingminutes, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(jLabel6, javax.swing.GroupLayout.PREFERRED_SIZE, 22, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addGap(34, 34, 34)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(jLabel3, javax.swing.GroupLayout.PREFERRED_SIZE, 22, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(timeslot, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addGap(40, 40, 40)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(delete, javax.swing.GroupLayout.PREFERRED_SIZE, 31, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(save, javax.swing.GroupLayout.PREFERRED_SIZE, 31, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(update, javax.swing.GroupLayout.PREFERRED_SIZE, 31, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                        .addComponent(clear, javax.swing.GroupLayout.PREFERRED_SIZE, 31, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(36, 36, 36))
                    .addGroup(layout.createSequentialGroup()
                        .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 321, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                        .addComponent(jButton3, javax.swing.GroupLayout.PREFERRED_SIZE, 39, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addContainerGap(22, Short.MAX_VALUE))))
        );

        pack();
        setLocationRelativeTo(null);
    }// </editor-fold>//GEN-END:initComponents

    Connection con;
    PreparedStatement insert;
         
         
         private void table_update()
         {
             int c;
              try {
            
       
        
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost/timetable","root","");
            insert = con.prepareStatement("select * from workingdays");
           
           
            ResultSet rs = insert.executeQuery();
            ResultSetMetaData Rss = rs.getMetaData();
            c = Rss.getColumnCount();
            
            DefaultTableModel dft = (DefaultTableModel) jTable1.getModel();
            dft.setRowCount(0);
            
               while(rs.next())
               {
                   Vector v1 = new Vector();
                   
                   for(int q=1; q<=c; q++)
                   {
                       v1.add(rs.getString("id"));
                       v1.add(rs.getString("daysperweek"));
                       v1.add(rs.getString("days"));
                       v1.add(rs.getString("timeperday"));
                       v1.add(rs.getString("timeslot"));
                     
                      
                   }
                   
                   dft.addRow(v1);
               }
               
            
        } catch (ClassNotFoundException e) {
            
            Logger.getLogger(studentgroups.class.getName()).log(Level.SEVERE, null, e);
        }
        catch (SQLException ex) {
            
            Logger.getLogger(studentgroups.class.getName()).log(Level.SEVERE, null, ex);
        }
         }
    
    private void workingdayActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_workingdayActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_workingdayActionPerformed

    private void MondayActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_MondayActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_MondayActionPerformed

    private void SaturdayActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_SaturdayActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_SaturdayActionPerformed

    private void SundayActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_SundayActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_SundayActionPerformed

    private void workinghoursActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_workinghoursActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_workinghoursActionPerformed

    private void workingminutesActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_workingminutesActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_workingminutesActionPerformed

    private void deleteActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_deleteActionPerformed
      
        DefaultTableModel dft = (DefaultTableModel) jTable1.getModel();
        int row = jTable1.getSelectedRow();
        
         try {
            
        int id = Integer.parseInt(dft.getValueAt(row, 0).toString());
        
        int dialogResult = JOptionPane.showConfirmDialog(null, "Are you sure?","Warning",JOptionPane.YES_NO_OPTION);
        
        if(dialogResult == JOptionPane.YES_OPTION)
        {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost/timetable","root","");
            insert = con.prepareStatement("delete from workingdays where id=?");
           
            insert.setInt(1, id);
            
        }
        
        

            insert.executeUpdate();
            
            JOptionPane.showMessageDialog(this,"Successfully Deleted");   
            table_update();
            
            
        } catch (ClassNotFoundException ex) {
            
            Logger.getLogger(studentgroups.class.getName()).log(Level.SEVERE, null, ex);
        }
        catch (SQLException ex) {
            
            Logger.getLogger(studentgroups.class.getName()).log(Level.SEVERE, null, ex);
        }
    }//GEN-LAST:event_deleteActionPerformed

    private void clearActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_clearActionPerformed
            Monday.setSelected(false);
            Tuesday.setSelected(false);
            Wednesday.setSelected(false);
            Thursday.setSelected(false);
            Friday.setSelected(false);
            Saturday.setSelected(false);
            Sunday.setSelected(false);
            workingday.setSelectedIndex(0);
            workinghours.setSelectedIndex(0);
            workingminutes.setSelectedIndex(0);
    }//GEN-LAST:event_clearActionPerformed

    private void jButton3ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton3ActionPerformed
            dispose();
            MainDashboard md = new MainDashboard();
            md.setVisible(true);
    }//GEN-LAST:event_jButton3ActionPerformed

    private void saveActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_saveActionPerformed
        
        String workingdays = workingday.getSelectedItem().toString();
        String days = "";
        if (Monday.isSelected()) {
        days += Monday.getText() + ", ";
        }
         if (Tuesday.isSelected()) {
        days += Tuesday.getText() + ", ";
         }
          if (Wednesday.isSelected()) {
        days += Wednesday.getText() + ", ";
         }
           if (Thursday.isSelected()) {
        days += Thursday.getText() + ", ";
         }
            if (Friday.isSelected()) {
        days += Friday.getText() + ", ";
         }
             if (Saturday.isSelected()) {
        days += Saturday.getText() + ", ";
         }
              if (Sunday.isSelected()) {
        days += Sunday.getText() + ", ";
         }
        
        String timeperday =  workinghours.getSelectedItem().toString()+" hours and "+workingminutes.getSelectedItem().toString()+" minutes";
        String timeslot = this.timeslot.getSelectedItem().toString();
        
        Connection con;
        PreparedStatement save;
        
        try {
            
        
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost/timetable","root","");
            save = con.prepareStatement("insert into workingdays(daysperweek,days,timeperday,timeslot)values(?,?,?,?)");
           
            save.setString(1, workingdays);
            save.setString(2, days);
            save.setString(3, timeperday);
            save.setString(4, timeslot);
            save.executeUpdate();
            
            JOptionPane.showMessageDialog(this,"Successfully Added");
            
            Monday.setSelected(false);
            Tuesday.setSelected(false);
            Wednesday.setSelected(false);
            Thursday.setSelected(false);
            Friday.setSelected(false);
            Saturday.setSelected(false);
            Sunday.setSelected(false);
            workingday.setSelectedIndex(0);
            workinghours.setSelectedIndex(0);
            workingminutes.setSelectedIndex(0);
            
         
            table_update();
            
        } catch (ClassNotFoundException e) {
            
            Logger.getLogger(studentgroups.class.getName()).log(Level.SEVERE, null, e);
        }
        catch (SQLException ex) {
            
            Logger.getLogger(studentgroups.class.getName()).log(Level.SEVERE, null, ex);
        }
        
         
    }//GEN-LAST:event_saveActionPerformed

    private void timeslotActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_timeslotActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_timeslotActionPerformed

    private void jTable1MouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_jTable1MouseClicked
        
        DefaultTableModel dft = (DefaultTableModel) jTable1.getModel();
        int row = jTable1.getSelectedRow();
        String workinghours1 = null;
        
        workingday.setSelectedItem(dft.getValueAt(row, 1).toString());
        timeslot.setSelectedItem(dft.getValueAt(row, 4).toString());
        
        
        
        
    }//GEN-LAST:event_jTable1MouseClicked

    private void updateActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_updateActionPerformed
       
        DefaultTableModel dft = (DefaultTableModel) jTable1.getModel();
        int row = jTable1.getSelectedRow();
        
        try {
        int id = Integer.parseInt(dft.getValueAt(row, 0).toString());
         String workingdays = workingday.getSelectedItem().toString();
        String days = "";
        if (Monday.isSelected()) {
        days += Monday.getText() + ", ";
        }
         if (Tuesday.isSelected()) {
        days += Tuesday.getText() + ", ";
         }
          if (Wednesday.isSelected()) {
        days += Wednesday.getText() + ", ";
         }
           if (Thursday.isSelected()) {
        days += Thursday.getText() + ", ";
         }
            if (Friday.isSelected()) {
        days += Friday.getText() + ", ";
         }
             if (Saturday.isSelected()) {
        days += Saturday.getText() + ", ";
         }
              if (Sunday.isSelected()) {
        days += Sunday.getText() + ", ";
         }
        
        String timeperday =  workinghours.getSelectedItem().toString()+" hours and "+workingminutes.getSelectedItem().toString()+" minutes";
        String timeslot = this.timeslot.getSelectedItem().toString();
        
        Class.forName("com.mysql.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost/timetable","root","");
        insert = con.prepareStatement("update workingdays set daysperweek=?,days=?,timeperday=?,timeslot=? where id=? ");
        
        insert.setString(1, workingdays);
        insert.setString(2, days);
        insert.setString(3, timeperday);
        insert.setString(4, timeslot);
        insert.setInt(5, id);
        insert.executeUpdate();
        
        JOptionPane.showMessageDialog(this,"Updated Successfully");   
        
        Monday.setSelected(false);
        Tuesday.setSelected(false);
        Wednesday.setSelected(false);
        Thursday.setSelected(false);
        Friday.setSelected(false);
        Saturday.setSelected(false);
        Sunday.setSelected(false);
        workingday.setSelectedIndex(0);
        workinghours.setSelectedIndex(0);
        workingminutes.setSelectedIndex(0);
            
         
        table_update();
        
        
            
        } catch (ClassNotFoundException e) {
            
            Logger.getLogger(studentgroups.class.getName()).log(Level.SEVERE, null, e);
        }
        catch (SQLException ex) {
            
            Logger.getLogger(studentgroups.class.getName()).log(Level.SEVERE, null, ex);
        }
    }//GEN-LAST:event_updateActionPerformed

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
            java.util.logging.Logger.getLogger(Workingdaysandhours.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(Workingdaysandhours.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(Workingdaysandhours.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(Workingdaysandhours.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>
        //</editor-fold>
        //</editor-fold>
        //</editor-fold>
        //</editor-fold>
        //</editor-fold>
        //</editor-fold>
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new Workingdaysandhours().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JCheckBox Friday;
    private javax.swing.JCheckBox Monday;
    private javax.swing.JCheckBox Saturday;
    private javax.swing.JCheckBox Sunday;
    private javax.swing.JCheckBox Thursday;
    private javax.swing.JCheckBox Tuesday;
    private javax.swing.JCheckBox Wednesday;
    private javax.swing.ButtonGroup buttonGroup1;
    private javax.swing.ButtonGroup buttonGroup2;
    private javax.swing.ButtonGroup buttonGroup3;
    private javax.swing.JButton clear;
    private javax.swing.JButton delete;
    private javax.swing.JButton jButton3;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JLabel jLabel6;
    private javax.swing.JLabel jLabel7;
    private javax.swing.JRadioButtonMenuItem jRadioButtonMenuItem1;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JTable jTable1;
    private javax.swing.JButton save;
    private javax.swing.JComboBox<String> timeslot;
    private javax.swing.JButton update;
    private javax.swing.JComboBox<String> workingday;
    private javax.swing.JComboBox<String> workinghours;
    private javax.swing.JComboBox<String> workingminutes;
    // End of variables declaration//GEN-END:variables
}
