/*
 * Esta aplicación fue desarrollada por Brayan Novoa.
 * Si desea ponerse en contacto por alguna duda no
 * dude en escribir al siguiente correo.
 * bnovoa.linux@gmail.com
 */
package view;

import controller.AdminDbController;
import javax.swing.JTable;
import javax.swing.table.DefaultTableModel;

/**
 *
 * @author b41n
 */
public final class AdminDB extends javax.swing.JFrame {
    AdminDbController adminController = new AdminDbController();
    /**
     * Creates new form AdminDB
     */
    public AdminDB() {
        initComponents();
        adminController.cargar("");
        adminController.buscarSedes("");
        jifUsuario.setVisible(false);
        jifUsuarios.setVisible(false);
        setView();
        
    }
    void setView(){
        this.setLocationRelativeTo(null);
    }
    void cargarFacultades(){
        //adminController.cargar("");
        //tbRectorias.setModel(model);
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
        jifRectorias = new javax.swing.JInternalFrame();
        jScrollPane1 = new javax.swing.JScrollPane();
        tbRectorias = new javax.swing.JTable();
        jInternalFrame1 = new javax.swing.JInternalFrame();
        jifRectoria = new javax.swing.JInternalFrame();
        jButton1 = new javax.swing.JButton();
        txtRectoria = new javax.swing.JTextField();
        tFiltro = new javax.swing.JTextField();
        jMenuBar2 = new javax.swing.JMenuBar();
        jMenu4 = new javax.swing.JMenu();
        jMenuItem7 = new javax.swing.JMenuItem();
        jMenuItem6 = new javax.swing.JMenuItem();
        jifSedes = new javax.swing.JInternalFrame();
        jScrollPane2 = new javax.swing.JScrollPane();
        tbSedes = new javax.swing.JTable();
        jInternalFrame2 = new javax.swing.JInternalFrame();
        jifSede = new javax.swing.JInternalFrame();
        jButton2 = new javax.swing.JButton();
        txtRectoria1 = new javax.swing.JTextField();
        txtSedes = new javax.swing.JTextField();
        jMenuBar3 = new javax.swing.JMenuBar();
        jMenu5 = new javax.swing.JMenu();
        jMenuItem8 = new javax.swing.JMenuItem();
        jMenuItem9 = new javax.swing.JMenuItem();
        jifUsuarios = new javax.swing.JInternalFrame();
        jScrollPane3 = new javax.swing.JScrollPane();
        tbSedes1 = new javax.swing.JTable();
        jInternalFrame3 = new javax.swing.JInternalFrame();
        jifUsuario = new javax.swing.JInternalFrame();
        jButton3 = new javax.swing.JButton();
        txtRectoria2 = new javax.swing.JTextField();
        txtSedes1 = new javax.swing.JTextField();
        jMenuBar4 = new javax.swing.JMenuBar();
        jMenu6 = new javax.swing.JMenu();
        jMenuItem10 = new javax.swing.JMenuItem();
        jMenuItem11 = new javax.swing.JMenuItem();
        jMenuBar1 = new javax.swing.JMenuBar();
        jMenu1 = new javax.swing.JMenu();
        jMenuItem1 = new javax.swing.JMenuItem();
        jMenuItem2 = new javax.swing.JMenuItem();
        jMenuItem3 = new javax.swing.JMenuItem();
        jMenu2 = new javax.swing.JMenu();
        jMenuItem4 = new javax.swing.JMenuItem();
        jMenu3 = new javax.swing.JMenu();
        jMenuItem5 = new javax.swing.JMenuItem();

        setTitle("Administrador General");
        setPreferredSize(new java.awt.Dimension(1050, 700));
        setResizable(false);

        jPanel1.setBorder(javax.swing.BorderFactory.createEtchedBorder());
        jPanel1.setPreferredSize(new java.awt.Dimension(1050, 48));

        javax.swing.GroupLayout jPanel1Layout = new javax.swing.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 1046, Short.MAX_VALUE)
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 44, Short.MAX_VALUE)
        );

        jPanel2.setBorder(javax.swing.BorderFactory.createEtchedBorder());
        jPanel2.setPreferredSize(new java.awt.Dimension(1050, 600));

        jifRectorias.setClosable(true);
        jifRectorias.setTitle("Rectorías");
        jifRectorias.setToolTipText("");
        jifRectorias.setAutoscrolls(true);
        jifRectorias.setPreferredSize(new java.awt.Dimension(200, 580));
        jifRectorias.setVerifyInputWhenFocusTarget(false);
        jifRectorias.setVisible(true);

        tbRectorias.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {
                {},
                {},
                {},
                {}
            },
            new String [] {

            }
        ));
        tbRectorias.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                tbRectoriasMouseClicked(evt);
            }
        });
        jScrollPane1.setViewportView(tbRectorias);

        jInternalFrame1.setVisible(false);

        javax.swing.GroupLayout jInternalFrame1Layout = new javax.swing.GroupLayout(jInternalFrame1.getContentPane());
        jInternalFrame1.getContentPane().setLayout(jInternalFrame1Layout);
        jInternalFrame1Layout.setHorizontalGroup(
            jInternalFrame1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 0, Short.MAX_VALUE)
        );
        jInternalFrame1Layout.setVerticalGroup(
            jInternalFrame1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 0, Short.MAX_VALUE)
        );

        jifRectoria.setClosable(true);
        jifRectoria.setTitle("Rectoría");
        jifRectoria.setToolTipText("");
        jifRectoria.setVisible(true);

        jButton1.setText("Agregar");

        txtRectoria.setHorizontalAlignment(javax.swing.JTextField.CENTER);
        txtRectoria.setText("Rectoría");

        javax.swing.GroupLayout jifRectoriaLayout = new javax.swing.GroupLayout(jifRectoria.getContentPane());
        jifRectoria.getContentPane().setLayout(jifRectoriaLayout);
        jifRectoriaLayout.setHorizontalGroup(
            jifRectoriaLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jifRectoriaLayout.createSequentialGroup()
                .addGap(36, 36, 36)
                .addGroup(jifRectoriaLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                    .addComponent(jButton1, javax.swing.GroupLayout.DEFAULT_SIZE, 85, Short.MAX_VALUE)
                    .addComponent(txtRectoria))
                .addContainerGap(46, Short.MAX_VALUE))
        );
        jifRectoriaLayout.setVerticalGroup(
            jifRectoriaLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jifRectoriaLayout.createSequentialGroup()
                .addGap(18, 18, 18)
                .addComponent(txtRectoria, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addComponent(jButton1)
                .addContainerGap(42, Short.MAX_VALUE))
        );

        tFiltro.setHorizontalAlignment(javax.swing.JTextField.CENTER);
        tFiltro.setText("Buscar");
        tFiltro.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyReleased(java.awt.event.KeyEvent evt) {
                tFiltroKeyReleased(evt);
            }
        });

        jMenu4.setText("Opciones");

        jMenuItem7.setText("Agregar rectoría");
        jMenuItem7.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jMenuItem7ActionPerformed(evt);
            }
        });
        jMenu4.add(jMenuItem7);

        jMenuItem6.setText("Salir");
        jMenuItem6.setAutoscrolls(true);
        jMenuItem6.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jMenuItem6ActionPerformed(evt);
            }
        });
        jMenu4.add(jMenuItem6);

        jMenuBar2.add(jMenu4);

        jifRectorias.setJMenuBar(jMenuBar2);

        javax.swing.GroupLayout jifRectoriasLayout = new javax.swing.GroupLayout(jifRectorias.getContentPane());
        jifRectorias.getContentPane().setLayout(jifRectoriasLayout);
        jifRectoriasLayout.setHorizontalGroup(
            jifRectoriasLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jifRectoriasLayout.createSequentialGroup()
                .addContainerGap()
                .addGroup(jifRectoriasLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jifRectoriasLayout.createSequentialGroup()
                        .addGap(123, 123, 123)
                        .addComponent(jInternalFrame1, javax.swing.GroupLayout.PREFERRED_SIZE, 0, Short.MAX_VALUE))
                    .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 0, Short.MAX_VALUE)
                    .addComponent(jifRectoria))
                .addContainerGap())
            .addGroup(jifRectoriasLayout.createSequentialGroup()
                .addGap(65, 65, 65)
                .addComponent(tFiltro, javax.swing.GroupLayout.PREFERRED_SIZE, 67, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );
        jifRectoriasLayout.setVerticalGroup(
            jifRectoriasLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jifRectoriasLayout.createSequentialGroup()
                .addContainerGap()
                .addComponent(tFiltro, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 237, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jifRectoria, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(621, 621, 621)
                .addComponent(jInternalFrame1, javax.swing.GroupLayout.PREFERRED_SIZE, 0, Short.MAX_VALUE)
                .addContainerGap())
        );

        jifSedes.setClosable(true);
        jifSedes.setTitle("Sedes");
        jifSedes.setToolTipText("");
        jifSedes.setAutoscrolls(true);
        jifSedes.setPreferredSize(new java.awt.Dimension(200, 580));
        jifSedes.setVerifyInputWhenFocusTarget(false);
        jifSedes.setVisible(true);

        tbSedes.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {
                {},
                {},
                {},
                {}
            },
            new String [] {

            }
        ));
        jScrollPane2.setViewportView(tbSedes);

        jInternalFrame2.setVisible(false);

        javax.swing.GroupLayout jInternalFrame2Layout = new javax.swing.GroupLayout(jInternalFrame2.getContentPane());
        jInternalFrame2.getContentPane().setLayout(jInternalFrame2Layout);
        jInternalFrame2Layout.setHorizontalGroup(
            jInternalFrame2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 0, Short.MAX_VALUE)
        );
        jInternalFrame2Layout.setVerticalGroup(
            jInternalFrame2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 0, Short.MAX_VALUE)
        );

        jifSede.setClosable(true);
        jifSede.setTitle("Sede");
        jifSede.setToolTipText("");
        jifSede.setVisible(true);

        jButton2.setText("Agregar");

        txtRectoria1.setHorizontalAlignment(javax.swing.JTextField.CENTER);
        txtRectoria1.setText("Sede");

        javax.swing.GroupLayout jifSedeLayout = new javax.swing.GroupLayout(jifSede.getContentPane());
        jifSede.getContentPane().setLayout(jifSedeLayout);
        jifSedeLayout.setHorizontalGroup(
            jifSedeLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jifSedeLayout.createSequentialGroup()
                .addGap(36, 36, 36)
                .addGroup(jifSedeLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                    .addComponent(jButton2, javax.swing.GroupLayout.DEFAULT_SIZE, 85, Short.MAX_VALUE)
                    .addComponent(txtRectoria1))
                .addContainerGap(46, Short.MAX_VALUE))
        );
        jifSedeLayout.setVerticalGroup(
            jifSedeLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jifSedeLayout.createSequentialGroup()
                .addGap(18, 18, 18)
                .addComponent(txtRectoria1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addComponent(jButton2)
                .addContainerGap(45, Short.MAX_VALUE))
        );

        txtSedes.setHorizontalAlignment(javax.swing.JTextField.CENTER);
        txtSedes.setEnabled(false);
        txtSedes.setFocusable(false);
        txtSedes.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyReleased(java.awt.event.KeyEvent evt) {
                txtSedesKeyReleased(evt);
            }
        });

        jMenu5.setText("Opciones");

        jMenuItem8.setText("Agregar sede");
        jMenuItem8.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jMenuItem8ActionPerformed(evt);
            }
        });
        jMenu5.add(jMenuItem8);

        jMenuItem9.setText("Salir");
        jMenuItem9.setAutoscrolls(true);
        jMenuItem9.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jMenuItem9ActionPerformed(evt);
            }
        });
        jMenu5.add(jMenuItem9);

        jMenuBar3.add(jMenu5);

        jifSedes.setJMenuBar(jMenuBar3);

        javax.swing.GroupLayout jifSedesLayout = new javax.swing.GroupLayout(jifSedes.getContentPane());
        jifSedes.getContentPane().setLayout(jifSedesLayout);
        jifSedesLayout.setHorizontalGroup(
            jifSedesLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jifSedesLayout.createSequentialGroup()
                .addContainerGap()
                .addGroup(jifSedesLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(txtSedes)
                    .addGroup(jifSedesLayout.createSequentialGroup()
                        .addGap(123, 123, 123)
                        .addComponent(jInternalFrame2, javax.swing.GroupLayout.PREFERRED_SIZE, 0, Short.MAX_VALUE))
                    .addComponent(jScrollPane2, javax.swing.GroupLayout.PREFERRED_SIZE, 0, Short.MAX_VALUE)
                    .addComponent(jifSede))
                .addContainerGap())
        );
        jifSedesLayout.setVerticalGroup(
            jifSedesLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jifSedesLayout.createSequentialGroup()
                .addContainerGap()
                .addComponent(txtSedes, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addComponent(jScrollPane2, javax.swing.GroupLayout.PREFERRED_SIZE, 237, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jifSede, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(621, 621, 621)
                .addComponent(jInternalFrame2, javax.swing.GroupLayout.PREFERRED_SIZE, 0, Short.MAX_VALUE)
                .addContainerGap())
        );

        jifUsuarios.setClosable(true);
        jifUsuarios.setTitle("Usuarios");
        jifUsuarios.setToolTipText("");
        jifUsuarios.setAutoscrolls(true);
        jifUsuarios.setPreferredSize(new java.awt.Dimension(200, 580));
        jifUsuarios.setVerifyInputWhenFocusTarget(false);
        jifUsuarios.setVisible(true);

        tbSedes1.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {
                {},
                {},
                {},
                {}
            },
            new String [] {

            }
        ));
        jScrollPane3.setViewportView(tbSedes1);

        jInternalFrame3.setVisible(false);

        javax.swing.GroupLayout jInternalFrame3Layout = new javax.swing.GroupLayout(jInternalFrame3.getContentPane());
        jInternalFrame3.getContentPane().setLayout(jInternalFrame3Layout);
        jInternalFrame3Layout.setHorizontalGroup(
            jInternalFrame3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 0, Short.MAX_VALUE)
        );
        jInternalFrame3Layout.setVerticalGroup(
            jInternalFrame3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 0, Short.MAX_VALUE)
        );

        jifUsuario.setClosable(true);
        jifUsuario.setTitle("Usuario");
        jifUsuario.setToolTipText("");
        jifUsuario.setVisible(true);

        jButton3.setText("Agregar");

        txtRectoria2.setHorizontalAlignment(javax.swing.JTextField.CENTER);
        txtRectoria2.setText("Sede");

        javax.swing.GroupLayout jifUsuarioLayout = new javax.swing.GroupLayout(jifUsuario.getContentPane());
        jifUsuario.getContentPane().setLayout(jifUsuarioLayout);
        jifUsuarioLayout.setHorizontalGroup(
            jifUsuarioLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jifUsuarioLayout.createSequentialGroup()
                .addGap(36, 36, 36)
                .addGroup(jifUsuarioLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                    .addComponent(jButton3, javax.swing.GroupLayout.DEFAULT_SIZE, 85, Short.MAX_VALUE)
                    .addComponent(txtRectoria2))
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );
        jifUsuarioLayout.setVerticalGroup(
            jifUsuarioLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jifUsuarioLayout.createSequentialGroup()
                .addGap(18, 18, 18)
                .addComponent(txtRectoria2, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addComponent(jButton3)
                .addContainerGap(48, Short.MAX_VALUE))
        );

        txtSedes1.setHorizontalAlignment(javax.swing.JTextField.CENTER);
        txtSedes1.setEnabled(false);
        txtSedes1.setFocusable(false);
        txtSedes1.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyReleased(java.awt.event.KeyEvent evt) {
                txtSedes1KeyReleased(evt);
            }
        });

        jMenu6.setText("Opciones");

        jMenuItem10.setText("Agregar usuario");
        jMenuItem10.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jMenuItem10ActionPerformed(evt);
            }
        });
        jMenu6.add(jMenuItem10);

        jMenuItem11.setText("Salir");
        jMenuItem11.setAutoscrolls(true);
        jMenuItem11.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jMenuItem11ActionPerformed(evt);
            }
        });
        jMenu6.add(jMenuItem11);

        jMenuBar4.add(jMenu6);

        jifUsuarios.setJMenuBar(jMenuBar4);

        javax.swing.GroupLayout jifUsuariosLayout = new javax.swing.GroupLayout(jifUsuarios.getContentPane());
        jifUsuarios.getContentPane().setLayout(jifUsuariosLayout);
        jifUsuariosLayout.setHorizontalGroup(
            jifUsuariosLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jifUsuariosLayout.createSequentialGroup()
                .addContainerGap()
                .addGroup(jifUsuariosLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(txtSedes1)
                    .addGroup(jifUsuariosLayout.createSequentialGroup()
                        .addGap(123, 123, 123)
                        .addComponent(jInternalFrame3, javax.swing.GroupLayout.PREFERRED_SIZE, 0, Short.MAX_VALUE))
                    .addComponent(jScrollPane3, javax.swing.GroupLayout.DEFAULT_SIZE, 525, Short.MAX_VALUE)
                    .addComponent(jifUsuario))
                .addContainerGap())
        );
        jifUsuariosLayout.setVerticalGroup(
            jifUsuariosLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jifUsuariosLayout.createSequentialGroup()
                .addContainerGap()
                .addComponent(txtSedes1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addComponent(jScrollPane3, javax.swing.GroupLayout.PREFERRED_SIZE, 237, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jifUsuario, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(621, 621, 621)
                .addComponent(jInternalFrame3, javax.swing.GroupLayout.PREFERRED_SIZE, 0, Short.MAX_VALUE)
                .addContainerGap())
        );

        javax.swing.GroupLayout jPanel2Layout = new javax.swing.GroupLayout(jPanel2);
        jPanel2.setLayout(jPanel2Layout);
        jPanel2Layout.setHorizontalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel2Layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jifRectorias, javax.swing.GroupLayout.PREFERRED_SIZE, 213, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(18, 18, 18)
                .addComponent(jifSedes, javax.swing.GroupLayout.PREFERRED_SIZE, 213, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(18, 18, 18)
                .addComponent(jifUsuarios, javax.swing.GroupLayout.DEFAULT_SIZE, 560, Short.MAX_VALUE)
                .addContainerGap())
        );
        jPanel2Layout.setVerticalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel2Layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                    .addComponent(jifSedes, javax.swing.GroupLayout.DEFAULT_SIZE, 557, Short.MAX_VALUE)
                    .addComponent(jifRectorias, javax.swing.GroupLayout.DEFAULT_SIZE, 557, Short.MAX_VALUE)
                    .addComponent(jifUsuarios, javax.swing.GroupLayout.Alignment.LEADING, javax.swing.GroupLayout.DEFAULT_SIZE, 557, Short.MAX_VALUE))
                .addGap(27, 27, 27))
        );

        jMenu1.setText("Opciones");

        jMenuItem1.setText("Rectorías");
        jMenuItem1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jMenuItem1ActionPerformed(evt);
            }
        });
        jMenu1.add(jMenuItem1);

        jMenuItem2.setText("Sedes");
        jMenu1.add(jMenuItem2);

        jMenuItem3.setText("Salir");
        jMenuItem3.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jMenuItem3ActionPerformed(evt);
            }
        });
        jMenu1.add(jMenuItem3);

        jMenuBar1.add(jMenu1);

        jMenu2.setText("Usuarios");

        jMenuItem4.setText("Gestión de usuarios");
        jMenuItem4.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jMenuItem4ActionPerformed(evt);
            }
        });
        jMenu2.add(jMenuItem4);

        jMenuBar1.add(jMenu2);

        jMenu3.setText("DBMS");

        jMenuItem5.setText("Gestionar Base Datos");
        jMenu3.add(jMenuItem5);

        jMenuBar1.add(jMenu3);

        setJMenuBar(jMenuBar1);

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jPanel1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jPanel2, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(0, 0, Short.MAX_VALUE))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addComponent(jPanel1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addComponent(jPanel2, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(0, 0, Short.MAX_VALUE))
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void tFiltroKeyReleased(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_tFiltroKeyReleased
        // TODO add your handling code here:
        //cargar(tFiltro.getText());
    }//GEN-LAST:event_tFiltroKeyReleased

    private void jMenuItem7ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jMenuItem7ActionPerformed
        // TODO add your handling code here:
        jifRectoria.setVisible(true);
    }//GEN-LAST:event_jMenuItem7ActionPerformed

    private void jMenuItem6ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jMenuItem6ActionPerformed
        // TODO add your handling code here:
        jifRectorias.setVisible(false);
    }//GEN-LAST:event_jMenuItem6ActionPerformed

    private void txtSedesKeyReleased(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_txtSedesKeyReleased
        // TODO add your handling code here:
    }//GEN-LAST:event_txtSedesKeyReleased

    private void jMenuItem8ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jMenuItem8ActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_jMenuItem8ActionPerformed

    private void jMenuItem9ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jMenuItem9ActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_jMenuItem9ActionPerformed

    private void tbRectoriasMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_tbRectoriasMouseClicked
        // TODO add your handling code here:
        JTable source = (JTable)evt.getSource();
        int row = source.rowAtPoint( evt.getPoint() );
        int column = source.columnAtPoint( evt.getPoint() );
        String rectoria=source.getModel().getValueAt(row, column)+"";
        if(rectoria==null){
            rectoria="";
        }
        if(column==0){
            txtSedes.setText(rectoria);
            adminController.buscarSedes(rectoria);
        }
    }//GEN-LAST:event_tbRectoriasMouseClicked

    private void txtSedes1KeyReleased(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_txtSedes1KeyReleased
        // TODO add your handling code here:
    }//GEN-LAST:event_txtSedes1KeyReleased

    private void jMenuItem10ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jMenuItem10ActionPerformed
        // TODO add your handling code here:
        jifUsuario.setVisible(true);
    }//GEN-LAST:event_jMenuItem10ActionPerformed

    private void jMenuItem11ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jMenuItem11ActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_jMenuItem11ActionPerformed

    private void jMenuItem4ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jMenuItem4ActionPerformed
        // TODO add your handling code here:
        jifUsuarios.setVisible(true);
    }//GEN-LAST:event_jMenuItem4ActionPerformed

    private void jMenuItem3ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jMenuItem3ActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_jMenuItem3ActionPerformed

    private void jMenuItem1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jMenuItem1ActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_jMenuItem1ActionPerformed

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
            java.util.logging.Logger.getLogger(AdminDB.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(AdminDB.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(AdminDB.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(AdminDB.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new AdminDB().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton jButton1;
    private javax.swing.JButton jButton2;
    private javax.swing.JButton jButton3;
    private javax.swing.JInternalFrame jInternalFrame1;
    private javax.swing.JInternalFrame jInternalFrame2;
    private javax.swing.JInternalFrame jInternalFrame3;
    private javax.swing.JMenu jMenu1;
    private javax.swing.JMenu jMenu2;
    private javax.swing.JMenu jMenu3;
    private javax.swing.JMenu jMenu4;
    private javax.swing.JMenu jMenu5;
    private javax.swing.JMenu jMenu6;
    private javax.swing.JMenuBar jMenuBar1;
    private javax.swing.JMenuBar jMenuBar2;
    private javax.swing.JMenuBar jMenuBar3;
    private javax.swing.JMenuBar jMenuBar4;
    private javax.swing.JMenuItem jMenuItem1;
    private javax.swing.JMenuItem jMenuItem10;
    private javax.swing.JMenuItem jMenuItem11;
    private javax.swing.JMenuItem jMenuItem2;
    private javax.swing.JMenuItem jMenuItem3;
    private javax.swing.JMenuItem jMenuItem4;
    private javax.swing.JMenuItem jMenuItem5;
    private javax.swing.JMenuItem jMenuItem6;
    private javax.swing.JMenuItem jMenuItem7;
    private javax.swing.JMenuItem jMenuItem8;
    private javax.swing.JMenuItem jMenuItem9;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JScrollPane jScrollPane2;
    private javax.swing.JScrollPane jScrollPane3;
    private javax.swing.JInternalFrame jifRectoria;
    private javax.swing.JInternalFrame jifRectorias;
    private javax.swing.JInternalFrame jifSede;
    private javax.swing.JInternalFrame jifSedes;
    private javax.swing.JInternalFrame jifUsuario;
    private javax.swing.JInternalFrame jifUsuarios;
    private javax.swing.JTextField tFiltro;
    public static javax.swing.JTable tbRectorias;
    public static javax.swing.JTable tbSedes;
    public static javax.swing.JTable tbSedes1;
    private javax.swing.JTextField txtRectoria;
    private javax.swing.JTextField txtRectoria1;
    private javax.swing.JTextField txtRectoria2;
    private javax.swing.JTextField txtSedes;
    private javax.swing.JTextField txtSedes1;
    // End of variables declaration//GEN-END:variables
}
