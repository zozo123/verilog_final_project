# DATA derived from module latch0 !!!!!!!!!!!!!!!!
#=================================
# Module latch0 statistics 
#=================================
# Number of nets (inc ports)       :     9
# Number of ports                  :     4
# Number of cells                  :     6
# Number of cells pins             :    16
#=================================
# CELLS encoding struct, net name to net index 
#=================================
$CELLS_ENCODING1 = {
                     'nand0' => 1,
                     'buf0' => 0,
                     'nand1' => 2,
                     'nand3' => 4,
                     'not0' => 5,
                     'nand2' => 3
                   };
#=================================
# CELLS encoding struct reversed, net index to net name 
#=================================
$CELLS_ENCODING_REVERSE1 = {
                             '4' => 'nand3',
                             '1' => 'nand0',
                             '3' => 'nand2',
                             '0' => 'buf0',
                             '2' => 'nand1',
                             '5' => 'not0'
                           };
#=================================
# NETS encoding struct, net name to net index 
#=================================
$NETS_ENCODING1 = {
                    'n4' => 5,
                    'n5' => 6,
                    'n2' => 3,
                    'clk' => 0,
                    'q' => 7,
                    'n3' => 4,
                    'd' => 1,
                    'n1' => 2,
                    'qb' => 8
                  };
#=================================
# NETS encoding struct reversed, net index to net name 
#=================================
$NETS_ENCODING_REVERSE1 = {
                            '6' => 'n5',
                            '3' => 'n2',
                            '7' => 'q',
                            '2' => 'n1',
                            '8' => 'qb',
                            '1' => 'd',
                            '4' => 'n3',
                            '0' => 'clk',
                            '5' => 'n4'
                          };
#=================================
# PORTS struct 
#=================================
$PORTS1 = {
            'clk' => 'input',
            'q' => 'output',
            'd' => 'input',
            'qb' => 'output'
          };
#=================================
# CELLS struct 
#=================================
$CELLS1 = {
            'nand0' => {
                         'pins' => {
                                     'pin2' => {
                                                 'clk' => 3
                                               },
                                     'pin0' => {
                                                 'nand2/pin1' => 'n2'
                                               },
                                     'pin1' => {
                                                 'd' => 3
                                               }
                                   },
                         'prim_delay' => '0.45',
                         'pin_string' => 'n2,d,clk',
                         'prim_type' => 'nand'
                       },
            'buf0' => {
                        'pins' => {
                                    'pin0' => {
                                                'q' => 4
                                              },
                                    'pin1' => {
                                                'nand2/pin0' => 'n4'
                                              }
                                  },
                        'prim_delay' => '0.23',
                        'pin_string' => 'q,n4',
                        'prim_type' => 'buf'
                      },
            'nand1' => {
                         'pins' => {
                                     'pin2' => {
                                                 'clk' => 3
                                               },
                                     'pin0' => {
                                                 'nand3/pin1' => 'n3'
                                               },
                                     'pin1' => {
                                                 'not0/pin0' => 'n1'
                                               }
                                   },
                         'prim_delay' => '0.45',
                         'pin_string' => 'n3,n1,clk',
                         'prim_type' => 'nand'
                       },
            'nand3' => {
                         'pins' => {
                                     'pin2' => {
                                                 'nand2/pin0' => 'n4'
                                               },
                                     'pin0' => {
                                                 'nand2/pin2' => 'n5',
                                                 'not0/pin1' => 'n5'
                                               },
                                     'pin1' => {
                                                 'nand1/pin0' => 'n3'
                                               }
                                   },
                         'prim_delay' => '0.45',
                         'pin_string' => 'n5,n3,n4',
                         'prim_type' => 'nand'
                       },
            'not0' => {
                        'pins' => {
                                    'pin0' => {
                                                'qb' => 4
                                              },
                                    'pin1' => {
                                                'nand3/pin0' => 'n5'
                                              }
                                  },
                        'prim_delay' => '0.23',
                        'pin_string' => 'qb,n5',
                        'prim_type' => 'buf'
                      },
            'nand2' => {
                         'pins' => {
                                     'pin2' => {
                                                 'nand3/pin0' => 'n5'
                                               },
                                     'pin0' => {
                                                 'buf0/pin1' => 'n4',
                                                 'nand3/pin2' => 'n4'
                                               },
                                     'pin1' => {
                                                 'nand0/pin0' => 'n2'
                                               }
                                   },
                         'prim_delay' => '0.45',
                         'pin_string' => 'n4,n2,n5',
                         'prim_type' => 'nand'
                       }
          };
#=================================
# NETS struct 
#=================================
$NETS1 = {
           'n4' => {
                     'buf0/pin1' => 1,
                     'nand3/pin2' => 1,
                     'nand2/pin0' => 1
                   },
           'n5' => {
                     'nand2/pin2' => 1,
                     'nand3/pin0' => 1,
                     'not0/pin1' => 1
                   },
           'clk' => {
                      'nand1/pin2' => 1,
                      'nand0/pin2' => 1
                    },
           'n2' => {
                     'nand0/pin0' => 1,
                     'nand2/pin1' => 1
                   },
           'q' => {
                    'buf0/pin0' => 1
                  },
           'n3' => {
                     'nand3/pin1' => 1,
                     'nand1/pin0' => 1
                   },
           'd' => {
                    'nand0/pin1' => 1,
                    'not0/pin1' => 1
                  },
           'n1' => {
                     'not0/pin0' => 1,
                     'nand1/pin1' => 1
                   },
           'qb' => {
                     'not0/pin0' => 1
                   }
         };
#=================================
# PINS struct 
#=================================
$PINS1 = {
           'not0/pin0' => 1,
           'not0/pin1' => 1,
           'nand2/pin2' => 1,
           'nand3/pin2' => 1,
           'nand1/pin1' => 1,
           'buf0/pin0' => 1,
           'nand1/pin2' => 1,
           'nand3/pin1' => 1,
           'nand1/pin0' => 1,
           'nand0/pin1' => 1,
           'nand2/pin0' => 1,
           'nand0/pin0' => 1,
           'nand0/pin2' => 1,
           'nand3/pin0' => 1,
           'nand2/pin1' => 1,
           'buf0/pin1' => 1
         };
1;

